package com.example.xyzhotelfinal.service;

import com.example.xyzhotelfinal.model.RoomTableObj;

import java.util.List;

public interface RoomService {

    public List<RoomTableObj> availableRoom(List<Object> reservedRoomDtoList);
}
