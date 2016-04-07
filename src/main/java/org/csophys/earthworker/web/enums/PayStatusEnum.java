package org.csophys.earthworker.web.enums;

import lombok.Getter;

/**
 * Created by csophys on 16/4/6.
 */
public enum PayStatusEnum {
    INIT("未支付"), WAIT_RECEIVED("待付款"), TRADE_RECEIVED("已支付"), TRADE_EXPIRED("支付过期");

    @Getter
    private String desc;

    PayStatusEnum(String desc) {
        this.desc = desc;
    }
}
