package org.csophys.earthworker.web;

import org.csophys.earthworker.web.entity.Registration;
import org.csophys.earthworker.web.service.RegistrationService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

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
}
