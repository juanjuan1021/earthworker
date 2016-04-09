package org.csophys.earthworker.web.service;

import com.kdt.api.KdtApiClient;
import com.kdt.dto.PayOrderResponse;
import lombok.Getter;
import org.csophys.common.service.util.HttpUtil;
import org.csophys.earthworker.web.entity.Registration;
import org.csophys.earthworker.web.enums.PayStatusEnum;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.concurrent.ConcurrentHashMap;

/**
 * Created by csophys on 16/4/7.
 */
@Component
public class PayStatusCheckTask {

    @Getter
    //TODO:应用重启，数据会丢失
    private static ConcurrentHashMap<String, Registration> waitPayOrders = new ConcurrentHashMap<String, Registration>();

    @Resource
    RegistrationService registrationService;

    @Scheduled(fixedDelay = 10 * 1000)
    public void checkPayStatus() {
        System.out.println("--start checkPayStatus--");
        if (!prepare()) {
            return;
        }
        PayOrderResponse waitReceivedOrderPayStatus = KdtApiClient.getTradeReceivedOrderList();

        for (PayOrderResponse.PayOrderGroup.PayOrder payOrder : waitReceivedOrderPayStatus.getResponse().getQr_trades()) {
            if (waitPayOrders.keySet().contains(payOrder.getQr_id())) {
                System.out.println(String.format("%s 已经支付过", payOrder.getQr_id()));
                //已经支付，更新DB
                Registration registration = new Registration();
                registration.setPayStatus(PayStatusEnum.TRADE_RECEIVED);
                registrationService.updateById(waitPayOrders.get(payOrder.getQr_id()).getId(), registration);
                //微信消息通知
                try {
                    HttpUtil.post("https://api.weixin.qq.com/cgi-bin/message/mass/preview?access_token=" + WeixinAccessTokenTask.getAccessToken(), buildBody(payOrder, waitPayOrders.get(payOrder.getQr_id()).getWeixinId()));
                } catch (Exception e) {
                    e.printStackTrace();
                }
                //删除本地缓存
                waitPayOrders.remove(payOrder.getQr_id());
            }
        }

    }

    private String buildBody(PayOrderResponse.PayOrderGroup.PayOrder payOrder, String openId) {
        String json = "{\"touser\":\"" + openId + "\",\"msgtype\":\"text\",\"text\":{\"content\":\"亲，你已支付成功。请在我的报名中完善报名信息哦~.\"}}";
        return json;
    }

    private boolean prepare() {
        return WeixinAccessTokenTask.getAccessToken() != null;
    }
}
