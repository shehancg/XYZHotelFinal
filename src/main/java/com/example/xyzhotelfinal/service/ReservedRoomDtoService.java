package com.example.xyzhotelfinal.service;

import com.example.xyzhotelfinal.dto.ReservedRoomDto;

import java.time.LocalDate;
import java.util.List;

public interface ReservedRoomDtoService {

    public List<ReservedRoomDto> reservationListUsingCheckInAndCheckOut(LocalDate checkInDate, LocalDate checkOutDate);

    public List<Object>avRoom(LocalDate checkInDate, LocalDate checkOutDate);
}
