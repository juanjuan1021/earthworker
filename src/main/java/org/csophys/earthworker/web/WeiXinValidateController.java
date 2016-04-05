package org.csophys.earthworker.web;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by csophys on 16/4/4.
 */
@RestController
@RequestMapping("/weixin")
public class WeiXinValidateController {

    @RequestMapping("")
    public String validate(String signature, String timestamp, String nonce, String echostr) {
        return echostr;
    }
}
