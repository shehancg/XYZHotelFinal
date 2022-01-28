package com.example.xyzhotelfinal.service.implementation;

import com.example.xyzhotelfinal.model.RoomTypeObj;
import com.example.xyzhotelfinal.repository.RoomTypeRepository;
import com.example.xyzhotelfinal.service.RoomTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoomTypeServiceImpl implements RoomTypeService {

    @Autowired
    RoomTypeRepository roomTypeRepository;

    @Override
    public List<RoomTypeObj> roomTypeList() {
        return roomTypeRepository.findAll();
    }
}
