package com.springSecurity.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

    @GetMapping("/showMyLoginPage")
    public String loginForm() {
//        return "plain-login";
        return "fancy-login";
    }
    
    @GetMapping("/access-denied")
    public String showAccessDenied() {
    	return "access-denied";
    }

}
