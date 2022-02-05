package com.example.xyzhotelfinal.dto;

import org.hibernate.annotations.Immutable;
import org.hibernate.annotations.Subselect;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Immutable
@Table(name="'reservationhallview2'")
@Subselect("select uuid()as id, rrv.reservationId as reservationId,rrv.hallNo as hallNo from reservationhallview2 rrv")
public class ReservationHallView implements Serializable {
    @Id
    private String id;
    private int reservationId;
    private int hallNo;

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

    public int getHallNo() {
        return hallNo;
    }

    public void setHallNo(int hallNo) {
        this.hallNo = hallNo;
    }
}
