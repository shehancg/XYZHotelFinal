package com.example.xyzhotelfinal.controller.restController;

import com.example.xyzhotelfinal.dto.ReservationDto;
import com.example.xyzhotelfinal.model.ReservationObj;
import com.example.xyzhotelfinal.model.responsehandler.Response;
import com.example.xyzhotelfinal.service.ReservationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/reservation")
public class ReservationController {

    @Autowired
    private ReservationService reservationService;

    @PostMapping("/list")
    public Response list(ReservationObj reservationObj)
    {
        try{
            List<ReservationObj> reservationObjList= reservationService.findByCheckInDateLessThanEqualAndCheckOutDateGreaterThanEqual(reservationObj.getCheckInDate(),reservationObj.getCheckOutDate());
            return Response.success(reservationObj);
        } catch (Exception e) {
            return Response.fail(e);
        }
    }

    @PostMapping("/save")
    public synchronized Response save(@RequestBody ReservationObj reservationObj)
    {
        try
        {
            reservationObj=reservationService.save(reservationObj);
            return Response.success(reservationObj);
        }catch(Exception e) {
            return Response.fail(e);
        }
    }

    @GetMapping("/reservationList")
    public Response findAll()
    {
        List<ReservationDto> reservationDtoList = reservationService.reservationList();
        return Response.success(reservationDtoList);
    }

//    @PostMapping("/xList")
//    public Response findAllUsingCheckinAndcheckout(@RequestBody ReservationObj reservationObj)
//    {
//        List<Test1Dto> test1DtoList = reservationService.reservationListUsingcheckinAndCheckOut(reservationObj.getCheckInDate(),reservationObj.getCheckOutDate());
//        return Response.success(test1DtoList);
//    }
}
