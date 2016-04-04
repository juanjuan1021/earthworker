package org.csophys.earthworker.web;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import org.csophys.common.service.util.HttpUtil;
import org.csophys.earthworker.web.entity.Registration;
import org.csophys.earthworker.web.service.RegistrationService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * Created by csophys on 16/3/31.
 */
@Controller
@RequestMapping("/Registration")
public class RegistrationController {

    @Resource
    RegistrationService registrationService;

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    @ResponseBody
    public String getRegistration(Registration registration) {
        int result = registrationService.insert(registration);
        if (result > 0) {
            return result + "";
        } else {
            return Constant.FAIL;
        }
    }

    @RequestMapping(value = "/{id}")
    @ResponseBody
    public Registration getById(@PathVariable("id") int id) {
        return registrationService.getById(id);
    }

    @RequestMapping(value = "/getByWeixinId")
    @ResponseBody
    public List<Registration> getByWeixinId(String weixinId) {
        return registrationService.getByField("weixinId", weixinId);
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    @ResponseBody
    public String updateRegistration(Registration registration) {
        int result = registrationService.updateById(registration.getId(), registration);
        if (result > 0) {
            return Constant.SUCCESS;
        } else {
            return Constant.FAIL;
        }
    }

    @RequestMapping("newRegistration")
    @ResponseBody
    public String newRegistrationDemoPage(String code) throws Exception {
        //1.获取网页授权acess_token Info
        String access_tokenInfo = HttpUtil.get("https://api.weixin.qq.com/sns/oauth2/access_token?appid=" + Constant.APPID + "&secret=" + Constant.SECRET + "&code=" + code + "&grant_type=authorization_code");
        Map<String, String> tokenMap = new Gson().fromJson(access_tokenInfo, new TypeToken<Map<String, String>>() {
        }.getType());
        String openId = tokenMap.get("openid");
        return "user ID:" + openId;
    }

    @RequestMapping("MyRegistration")
    @ResponseBody
    public String MyRegistrationDemoPage(String code) throws Exception {
        //1.获取网页授权acess_token Info
        String access_tokenInfo = HttpUtil.get("https://api.weixin.qq.com/sns/oauth2/access_token?appid=" + Constant.APPID + "&secret=" + Constant.SECRET + "&code=" + code + "&grant_type=authorization_code");
        Map<String, String> tokenMap = new Gson().fromJson(access_tokenInfo, new TypeToken<Map<String, String>>() {
        }.getType());
        String openId = tokenMap.get("openid");
        return "user ID:"+openId;
    }

    public static void main(String[] args) throws Exception{
        System.out.println(new RegistrationController().newRegistrationDemoPage("0011fa9a9984521bec24ae3c73ac394u"));
    }
}
