package org.csophys.earthworker.web.service;

import com.google.gson.Gson;
import lombok.Data;
import lombok.Getter;
import org.csophys.common.service.util.HttpUtil;
import org.csophys.earthworker.web.Constant;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

/**
 * Created by csophys on 16/4/7.
 */
@Component
public class WeixinAccessTokenTask {
    @Getter
    private static String accessToken;

    @Scheduled(fixedDelay = 5400 * 1000)
    public void changeAccessToken() {
        try {
            String response = HttpUtil.get("https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=" + Constant.APPID + "&secret=" + Constant.SECRET);
            AccessTokenResponse accessTokenResponse = new Gson().fromJson(response, AccessTokenResponse.class);
            accessToken = accessTokenResponse.getAccess_token();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Data
    private class AccessTokenResponse {
        private String access_token;
        private String expires_in;
    }
}
