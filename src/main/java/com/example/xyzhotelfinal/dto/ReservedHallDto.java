package com.example.xyzhotelfinal.dto;

import org.hibernate.annotations.Immutable;
import org.hibernate.annotations.Subselect;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.time.LocalDate;

@Entity
@Immutable
@Table(name="'availablehallsview3'")
@Subselect("select uuid()as uid, rrv.* from availablehallssview3 rrv")
public class ReservedHallDto {
    @Id
    private String uid;
    private int reservationId;
    private int id;
    private LocalDate checkInDate;
    private LocalDate checkOutDate;
    private int hallTypeId;
    private int price;
    private String hallTypeName;
    private int hallNo;

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public int getReservationId() {
        return reservationId;
    }

    public void setReservationId(int reservationId) {
        this.reservationId = reservationId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public LocalDate getCheckInDate() {
        return checkInDate;
    }

    public void setCheckInDate(LocalDate checkInDate) {
        this.checkInDate = checkInDate;
    }

    public LocalDate getCheckOutDate() {
        return checkOutDate;
    }

    public void setCheckOutDate(LocalDate checkOutDate) {
        this.checkOutDate = checkOutDate;
    }

    public int getHallTypeId() {
        return hallTypeId;
    }

    public void setHallTypeId(int hallTypeId) {
        this.hallTypeId = hallTypeId;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getHallTypeName() {
        return hallTypeName;
    }

    public void setHallTypeName(String hallTypeName) {
        this.hallTypeName = hallTypeName;
    }

    public int getHallNo() {
        return hallNo;
    }

    public void setHallNo(int hallNo) {
        this.hallNo = hallNo;
    }
}
