package com.springSecurity.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DemoController {

    @GetMapping("/")
    public String home(){
        return "home";
    }

    @GetMapping("/leaders")
    public String showLeaders(){
        return "leaders";
    }
    
    @GetMapping("/systems")
    public String showSystems() {
		return "systems";
	}
}