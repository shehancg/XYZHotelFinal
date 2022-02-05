package com.example.xyzhotelfinal.model;

import javax.persistence.*;

@Entity
@Table(name = "hallreservation")
public class ReservationHallObj {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private int reservationHallId;

    @Column(nullable = false,length = 20)
    private int hallNo;

    @Column(nullable = false,length = 20,insertable = false,updatable = false)
    private int reservationId;
}
