package com.example.xyzhotelfinal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AppController {

    @GetMapping("/")
    public String viewHomePage(){
        return "index";
    }

    @GetMapping("/loginpage")
    public String showRegister(){
        return "loginpage";
    }

    @GetMapping("/availabledates")
    public String availabledates(){
        return "availabledates";
    }

    @GetMapping("/availablerooms")
    public String availablerooms(){
        return "availablerooms";
    }

    @GetMapping("/mybookings")
    public String myBookings(){
        return "mybookings";
    }



}
