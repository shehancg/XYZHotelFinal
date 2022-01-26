package com.example.xyzhotelfinal.model;

import javax.persistence.*;

@Entity
@Table(name = "reservationtype")
public class ReservationTypeObj {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private int reservationTypeId;

    @Column(nullable = false,length = 20)
    private String reservationTypeName;

    public int getReservationTypeId() {
        return reservationTypeId;
    }

    public void setReservationTypeId(int reservationTypeId) {
        this.reservationTypeId = reservationTypeId;
    }

    public String getReservationTypeName() {
        return reservationTypeName;
    }

    public void setReservationTypeName(String reservationTypeName) {
        this.reservationTypeName = reservationTypeName;
    }
}
