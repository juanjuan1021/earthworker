package org.csophys.earthworker.web;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.kdt.api.KdtApiClient;
import com.kdt.dto.CreateQrCodeResponse;
import org.csophys.common.service.util.HttpUtil;
import org.csophys.earthworker.web.entity.Registration;
import org.csophys.earthworker.web.enums.PayStatusEnum;
import org.csophys.earthworker.web.service.PayStatusCheckTask;
import org.csophys.earthworker.web.service.RegistrationService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/**
 * Created by csophys on 16/3/31.
 */
@Controller
@SessionAttributes({"registration", "openId"})
@RequestMapping("/Registration")
public class RegistrationController {

    @Resource
    RegistrationService registrationService;

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addRegistration(Registration registration, @ModelAttribute("registration") Registration sessionRegistration) {
        registration.setPayStatus(PayStatusEnum.INIT);
        registration.setWeixinId(sessionRegistration.getWeixinId());
        String dealName = registration.getDealName();
        //TODO:价格通过有赞接口获取
        String price = String.valueOf(registration.getUserAmount()* 100);
        CreateQrCodeResponse createQrCodeResponse = KdtApiClient.getCreateQrCodeResponse(dealName, price);
        registration.setPayId(createQrCodeResponse.getResponse().getQr_id());
        registration.setPayStatus(PayStatusEnum.WAIT_RECEIVED);
        registrationService.updateById(sessionRegistration.getId(), registration);
        PayStatusCheckTask.getWaitPayOrders().put(registration.getPayId(), sessionRegistration);
        return "redirect:" + createQrCodeResponse.getResponse().getQr_url();
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
    public String updateRegistration(Registration registration,@ModelAttribute("registration") Registration sessionRegistration) {
        int result = registrationService.updateById(sessionRegistration.getId(), registration);
        if (result > 0) {
            return Constant.SUCCESS;
        } else {
            return Constant.FAIL;
        }
    }

    @RequestMapping("newRegistration/detail")
    public String newRegistrationDetail(String code, ModelMap modelMap, String dealId) throws Exception {
        //dealId对应不同的套餐
        if (StringUtils.isEmpty(dealId)) {
            //1.获取网页授权acess_token Info
            String access_tokenInfo = HttpUtil.get("https://api.weixin.qq.com/sns/oauth2/access_token?appid=" + Constant.APPID + "&secret=" + Constant.SECRET + "&code=" + code + "&grant_type=authorization_code");
            Map<String, String> tokenMap = new Gson().fromJson(access_tokenInfo, new TypeToken<Map<String, String>>() {
            }.getType());
            System.out.println("access_tokenInfo:" + access_tokenInfo);
            String openId = tokenMap.get("openid");
            if (StringUtils.isEmpty(openId)) {
                openId = UUID.randomUUID().toString();
            }
            modelMap.addAttribute("openId", openId);
            return "list";
        } else {
            return "detail" + dealId;
        }

    }

    @RequestMapping("newRegistration/buy")
    public String newRegistrationBuy(String dealId,String dealSession, String dealCity, @ModelAttribute("openId") String openId, ModelMap modelMap) {
        Registration registration = new Registration();
        registration.setPayStatus(PayStatusEnum.INIT);
        registration.setWeixinId(openId);
        registration.setDealId(dealId);
        registration.setDealCity(dealCity);
        registration.setDealSession(dealSession);
        System.out.println("openId:" + openId);
        int result = registrationService.insert(registration);
        registration.setId(result);
        modelMap.addAttribute("registration", registration);
        return "buy" + dealId;

    }

    @RequestMapping("update/basic")
    public String updateRegistrationBasic(Registration registration) {
        return "basic" ;
    }

    @RequestMapping(value = "/update/class", method = RequestMethod.POST)
    public String updateRegistrationClass(Registration registration,@ModelAttribute("registration") Registration sessionRegistration) {
        registrationService.updateById(sessionRegistration.getId(), registration);
        return "class" ;
    }

    @RequestMapping("update/pre")
    public String updateRegistrationPre(Registration registration) {
        return "class" ;
    }

    @RequestMapping(value = "/update/contact", method = RequestMethod.POST)
    public String updateRegistrationContact(Registration registration,@ModelAttribute("registration") Registration sessionRegistration) {
        registrationService.updateById(sessionRegistration.getId(), registration);
        return "contact" ;
    }

    @RequestMapping(value ="/update/finish", method = RequestMethod.POST)
    public String updateRegistrationFinish(Registration registration,@ModelAttribute("registration") Registration sessionRegistration) {
        registrationService.updateById(sessionRegistration.getId(), registration);
        return "finish" ;
    }


    @RequestMapping("myRegistration")
    public String myRegistration(String code, ModelMap modelMap) throws Exception {
        //1.获取网页授权acess_token Info
        String access_tokenInfo = HttpUtil.get("https://api.weixin.qq.com/sns/oauth2/access_token?appid=" + Constant.APPID + "&secret=" + Constant.SECRET + "&code=" + code + "&grant_type=authorization_code");
        Map<String, String> tokenMap = new Gson().fromJson(access_tokenInfo, new TypeToken<Map<String, String>>() {
        }.getType());
        String openId = tokenMap.get("openid");
        List<Registration> registrationList = registrationService.getByField("weixinId", openId);
        modelMap.addAttribute("registrationList", registrationList);
        return "myRegistration";
    }

}
