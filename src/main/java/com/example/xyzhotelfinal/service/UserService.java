package com.example.xyzhotelfinal.service;

import com.example.xyzhotelfinal.model.UserObj;
import com.example.xyzhotelfinal.model.execptions.ExistingEmailExecption;
import com.example.xyzhotelfinal.model.execptions.InvalidUserExecption;

public interface UserService {

    public UserObj save(UserObj userObj) throws InvalidUserExecption, ExistingEmailExecption;

    public UserObj findByEmail(String email);

    public UserObj findByEmailAndPassword(String email,String password);
}
