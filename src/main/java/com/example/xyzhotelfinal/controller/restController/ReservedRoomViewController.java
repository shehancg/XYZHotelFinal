package com.example.xyzhotelfinal.controller.restController;

import com.example.xyzhotelfinal.dto.ReservedRoomDto;
import com.example.xyzhotelfinal.model.RoomTableObj;
import com.example.xyzhotelfinal.model.responsehandler.Response;
import com.example.xyzhotelfinal.service.ReservedRoomDtoService;
import com.example.xyzhotelfinal.service.RoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value ="/availableRoom")
public class ReservedRoomViewController {

    @Autowired
    private ReservedRoomDtoService reservedRoomDtoService;

    @Autowired
    private RoomService roomService;

    @GetMapping
    public Response getView(@RequestBody ReservedRoomDto reservationDto){
        List<ReservedRoomDto> reservationRoomViewList = reservedRoomDtoService.reservationListUsingCheckInAndCheckOut(reservationDto.getCheckInDate(),reservationDto.getCheckOutDate());
        return Response.success(reservationRoomViewList);
    }

    @PostMapping(value = "/roomList")
    public Response getAvailableRoom(@RequestBody ReservedRoomDto reservationDto){
        List<Object> roomNolist =  reservedRoomDtoService.avRoom(reservationDto.getCheckInDate(),reservationDto.getCheckOutDate());
      //  List<ReservedRoomDto> roomTableList = reservedRoomDtoService.reservationListUsingCheckInAndCheckOut(reservationDto.getCheckInDate(),reservationDto.getCheckOutDate());
        List<RoomTableObj> roomTableList2 =roomService.availableRoom(roomNolist);

        return Response.success(roomTableList2);
      //  return Response.success(roomTableList);
       // return null;
    }
}
