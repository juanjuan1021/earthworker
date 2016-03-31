package org.csophys.earthworker.web;

import org.springframework.context.ApplicationContext;
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
    ApplicationContext applicationContext;

    @RequestMapping("")
    @ResponseBody
    public String getRegistration() {
        return "success";
    }
}
