package com.bookreviewboot.bookreviewboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class MainController {

    @RequestMapping("/")
    public String main(){
        return "main";
    }
    @RequestMapping("/top")
    public String top(){
        return "top";
    }
    @RequestMapping("/center")
    public String center(){
        return "center";
    }
    @RequestMapping("/bottom")
    public String bottom(){
        return "bottom";
    }
    @RequestMapping("/login")
    public String login(){
        return "login";
    }
    @RequestMapping("/join")
    public String join(){
        return "join";
    }
    @RequestMapping("/logout")
    public String logout(HttpServletRequest request){
        request.getSession().removeAttribute("log");
        return "redirect:/";
    }
    @RequestMapping("/searchResult")
    public String searchResult(){
        return "searchResult";
    }
    @RequestMapping("/review")
    public String review(){
        return "review";
    }
    @RequestMapping("/myPage")
    public String myPage(){
        return "myPage";
    }
    @RequestMapping("/editInfo")
    public String editInfo(){
        return "editInfo";
    }
}
