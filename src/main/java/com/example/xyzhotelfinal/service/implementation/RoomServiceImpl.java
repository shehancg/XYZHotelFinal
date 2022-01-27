package com.example.xyzhotelfinal.service.implementation;

import com.example.xyzhotelfinal.model.RoomTableObj;
import com.example.xyzhotelfinal.repository.RoomServiceRepository;
import com.example.xyzhotelfinal.service.RoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoomServiceImpl implements RoomService {

    @Autowired
    private RoomServiceRepository roomServiceRepository;

    @Override
    public List<RoomTableObj> availableRoom(List<Object> reservedRoomDtoList) {
        List<RoomTableObj> roomTableList = null;
        if(reservedRoomDtoList.size()>0) {
            roomTableList = roomServiceRepository.findByRoomNoNotIn(reservedRoomDtoList);
        }else{
            roomTableList = roomServiceRepository.findAll();
        }
        return roomTableList;
    }

}
