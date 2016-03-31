package org.csophys.earthworker.web;

import org.csophys.earthworker.web.service.RegistrationService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * Created by csophys on 16/3/31.
 */
@Controller
@RequestMapping("/Registration")
public class RegistrationController {

    @Resource
    RegistrationService registrationService;

    @RequestMapping("")
    @ResponseBody
    public String getRegistration() {
        return "success";
    }
}
