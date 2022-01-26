package com.example.xyzhotelfinal.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.ToString;

@Data
@AllArgsConstructor
@ToString
public class ReservationDto {

    private int reservationId;
    private int reservationRoomId;
}
