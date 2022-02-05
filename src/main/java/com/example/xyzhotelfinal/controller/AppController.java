package com.example.xyzhotelfinal.controller;

import com.example.xyzhotelfinal.model.UserObj;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
    public String availabledates(UserObj userObj, Model model, HttpSession session){
        String userId = (String) session.getAttribute("userId");
        String userName = (String) session.getAttribute("username");
//        model.addAttribute("fName",session.getAttribute(userName));
//        model.addAttribute("fName", userObj.getfName());
//       return "availabledates";

        if(userId == null){
            return "redirect:/";
        }
        model.addAttribute("fName",session.getAttribute("username"));
        return "availabledates";

    }

    @GetMapping("/availablerooms")
    public String availablerooms(Model model,HttpSession session){
        String userId = (String) session.getAttribute("userId");
        String userName = (String) session.getAttribute("username");
        if(userId == null){
            return "redirect:/";
        }
        model.addAttribute("fName",session.getAttribute("username"));
        return "availablerooms";
    }

    @GetMapping("/mybookings")
    public String myBookings(Model model,HttpSession session){
        String userId = (String) session.getAttribute("userId");
        String userName = (String) session.getAttribute("username");
        if(userId == null){
            return "redirect:/";
        }
        model.addAttribute("fName",session.getAttribute("username"));
        return "mybookings";
    }

    @GetMapping("/rooms")
    public String rooms(HttpSession session){
        return "rooms";
    }

    @GetMapping("/details")
    public String details(Model model,HttpSession session){
        String userId = (String) session.getAttribute("userId");
        String userName = (String) session.getAttribute("username");
        if(userId == null){
            return "redirect:/";
        }
        model.addAttribute("fName",session.getAttribute("username"));
        return "details";
    }

    @GetMapping("/confirmation")
    public String confirmation(Model model,HttpSession session){
        String userId = (String) session.getAttribute("userId");
        String userName = (String) session.getAttribute("username");
        if(userId == null){
            return "redirect:/";
        }
        model.addAttribute("fName",session.getAttribute("username"));
        return "confirmation";
    }

    @GetMapping("/hallsview")
    public String hallsview(){ return "hallsview"; }

    @GetMapping("/halldates")
    public String halldates(){ return "halldates"; }

    @GetMapping("/hallbooking")
    public String hallbooking(){ return "hallbooking"; }

    @GetMapping("/logOut")
    public String logout(HttpServletRequest request){
        request.getSession().invalidate();
        return "redirect: ";
    }
}
