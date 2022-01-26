package com.example.xyzhotelfinal.model;

import javax.persistence.*;

@Entity
@Table(name = "roomreservation")
public class ReservationRoomObj {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private int reservationRoomId;

    @Column(nullable = false,length = 20)
    private int roomNo;

    @Column(nullable = false,length = 20,insertable = false,updatable = false)
    private int reservationId;

    @ManyToOne(targetEntity = ReservationObj.class,cascade=CascadeType.ALL)
    @JoinColumn(name="reservationId",referencedColumnName = "reservationId", nullable = false)
    private ReservationObj reservationObj;

    public int getReservationRoomId() {
        return reservationRoomId;
    }

    public void setReservationRoomId(int reservationRoomId) {
        this.reservationRoomId = reservationRoomId;
    }

    public int getRoomNo() {
        return roomNo;
    }

    public void setRoomNo(int roomNo) {
        this.roomNo = roomNo;
    }

    public int getReservationId() {
        return reservationId;
    }

    public void setReservationId(int reservationId) {
        this.reservationId = reservationId;
    }
}
