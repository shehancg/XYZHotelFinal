package com.example.xyzhotelfinal.service.implementation;

import com.example.xyzhotelfinal.dto.ReservationRoomView;
import com.example.xyzhotelfinal.repository.ReservationRoomViewRepo;
import com.example.xyzhotelfinal.service.ReservationRoomViewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReservationRoomViewServiceImpl implements ReservationRoomViewService {

    @Autowired
    ReservationRoomViewRepo reservationRoomViewRepo;

    @Override
    public List<ReservationRoomView> findAll() {
        List<ReservationRoomView> reservationRoomViewList= (List<ReservationRoomView>) reservationRoomViewRepo.findAll();
        return reservationRoomViewList;
    }


}
