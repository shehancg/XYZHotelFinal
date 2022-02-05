package com.example.xyzhotelfinal.service.implementation;

import com.example.xyzhotelfinal.dto.ReservationDto;
import com.example.xyzhotelfinal.model.ReservationObj;
import com.example.xyzhotelfinal.repository.ReservationRepository;
import com.example.xyzhotelfinal.service.ReservationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Synchronization;
import java.time.LocalDate;
import java.util.List;

@Service
public class ReservationServiceImpl implements ReservationService {

    @Autowired
    private ReservationRepository reservationRepository;

    @Override
    public List<ReservationObj> findByCheckInDateLessThanEqualAndCheckOutDateGreaterThanEqual(LocalDate checkInDate, LocalDate checkOutDate) {
        return reservationRepository.findByCheckInDateLessThanEqualAndCheckOutDateGreaterThanEqual(checkInDate,checkOutDate);
    }

    @Override
    public synchronized ReservationObj save(ReservationObj reservationObj) {
        return reservationRepository.save(reservationObj);
    }

    @Override
    public List<ReservationDto> reservationList() {
        List<ReservationDto> reservationDtoList = reservationRepository.getJoinInformation();
        return reservationDtoList;
    }
}
