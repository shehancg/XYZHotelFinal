package com.example.xyzhotelfinal.service.implementation;

import com.example.xyzhotelfinal.dto.ReservedRoomDto;
import com.example.xyzhotelfinal.model.RoomTableObj;
import com.example.xyzhotelfinal.repository.ReservedRoomDtoRepo;
import com.example.xyzhotelfinal.service.ReservedRoomDtoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Service
public class ReservedRoomDtoServiceImpl implements ReservedRoomDtoService {

    @Autowired
    private ReservedRoomDtoRepo reservedRoomDtoRepo;

    @Override
    public List<ReservedRoomDto> reservationListUsingCheckInAndCheckOut(LocalDate checkInDate, LocalDate checkOutDate) {
        List<ReservedRoomDto> reservedRoomDtos = reservedRoomDtoRepo.findByCheckInDateLessThanEqualAndCheckOutDateGreaterThanEqual(checkOutDate,checkInDate);
        return reservedRoomDtos;
    }

    @Override
    public List<Object> avRoom(LocalDate checkInDate, LocalDate checkOutDate) {
        List<ReservedRoomDto> reservedRoomDtos = reservationListUsingCheckInAndCheckOut(checkInDate,checkOutDate);
        List<RoomTableObj> roomTable = new ArrayList<>();
        List<Object> roomNoList = new ArrayList<>();

        for(ReservedRoomDto reservedRoomDto:reservedRoomDtos){
            RoomTableObj roomTableObj = new RoomTableObj();
            roomTableObj.setRoomNo(reservedRoomDto.getRoomNo());
            roomTableObj.setRoomTypeId(reservedRoomDto.getRoomTypeId());

            roomTable.add(roomTableObj);
            roomNoList.add(reservedRoomDto.getRoomNo());
        }
        return roomNoList;
    }

    @Override
    public List<ReservedRoomDto> findAll() {
//        List<ReservedRoomDto> reservedRoomDtoList = reservedRoomDtoRepo.findAll();
       // return reservedRoomDtoRepo.findAll();
        return null;
    }
}
