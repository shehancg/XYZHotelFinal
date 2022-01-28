package com.example.xyzhotelfinal.controller.restController;

import com.example.xyzhotelfinal.model.RoomTypeObj;
import com.example.xyzhotelfinal.model.responsehandler.Response;
import com.example.xyzhotelfinal.service.RoomTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(value = "/roomtype")
public class RoomTypeController {
    @Autowired
    RoomTypeService roomTypeService;

    @PostMapping
    public Response roomTypelist(){
        try{
            List<RoomTypeObj> roomTypeList = roomTypeService.roomTypeList();
            return Response.success(roomTypeList);
        }
        catch(Exception e){
            return Response.fail("Room type Not Found");
        }
    }
}
