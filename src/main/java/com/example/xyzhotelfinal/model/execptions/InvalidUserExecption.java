package com.example.xyzhotelfinal.model.execptions;

public class InvalidUserExecption extends RuntimeException{
    public InvalidUserExecption(String message){
        super(message);
    }

    public InvalidUserExecption(String message,Throwable cause){
        super(message, cause);
    }
}
