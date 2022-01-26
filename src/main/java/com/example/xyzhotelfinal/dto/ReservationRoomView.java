package com.example.xyzhotelfinal.dto;

import org.hibernate.annotations.Immutable;
import org.hibernate.annotations.Subselect;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Immutable
@Table(name="'reservationroomview2'")
@Subselect("select uuid()as id, rrv.reservationId as reservationId,rrv.roomNo as roomNo from reservationroomview2 rrv")
public class ReservationRoomView implements Serializable {

    @Id
    private String id;
    private int reservationId;
    private int roomNo;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public int getReservationId() {
        return reservationId;
    }

    public void setReservationId(int reservationId) {
        this.reservationId = reservationId;
    }

    public int getRoomNo() {
        return roomNo;
    }

    public void setRoomNo(int roomNo) {
        this.roomNo = roomNo;
    }
}
