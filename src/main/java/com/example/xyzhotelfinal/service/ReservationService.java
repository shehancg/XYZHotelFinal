package com.example.xyzhotelfinal.service;

import com.example.xyzhotelfinal.dto.ReservationDto;
import com.example.xyzhotelfinal.model.ReservationObj;

import java.time.LocalDate;
import java.util.List;

public interface ReservationService {

    List<ReservationObj> findByCheckInDateLessThanEqualAndCheckOutDateGreaterThanEqual(LocalDate checkInDate, LocalDate checkOutDate);

    //SAVE
    public ReservationObj save(ReservationObj reservationObj);

    public List<ReservationDto> reservationList();

   // public List<Test1Dto> reservationListUsingcheckinAndCheckOut(LocalDate checkInDate, LocalDate checkOutDate);

}
