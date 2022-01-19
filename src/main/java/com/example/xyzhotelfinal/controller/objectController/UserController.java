package com.example.xyzhotelfinal.controller.objectController;

import com.example.xyzhotelfinal.model.UserObj;
import com.example.xyzhotelfinal.model.execptions.ExistingEmailExecption;
import com.example.xyzhotelfinal.model.execptions.InvalidUserExecption;
import com.example.xyzhotelfinal.model.responsehandler.Response;
import com.example.xyzhotelfinal.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @PostMapping("/reg")
    public String save(UserObj userObj,Model model){
        try
        {
            userObj=userService.save(userObj);
            Response response= Response.success(userObj);
            model.addAttribute("fName", userObj.getfName());
            return "loginpage";
        }
        catch(InvalidUserExecption invalidUserExecption){
            Response response= Response.fail(invalidUserExecption.getMessage());
            return null;
        }
        catch(ExistingEmailExecption existingEmailExecption){
            Response response= Response.fail(existingEmailExecption.getMessage());
            return "index";
        }
    }

    @PostMapping("/customerlogin")
    public String findByEmailAndPassword(UserObj userObj, Model model){
        try
        {
            String email=userObj.getEmail().trim();
            String password=userObj.getPassword().trim();
            userObj=userService.findByEmailAndPassword(email,password);
            if(userObj != null) {
                Response response = Response.success(userObj);
                model.addAttribute("fName", userObj.getfName());
                return "loginpage";
            }
            return "redirect:/";
        }
        catch(InvalidUserExecption invalidUserExecption){
            Response response= Response.fail(invalidUserExecption.getMessage());
            return null;
        }
    }
}
