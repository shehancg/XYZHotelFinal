package com.example.xyzhotelfinal.model;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.List;

@Entity
@Table(name ="reservation")
public class ReservationObj {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private int reservationId;

    @Column(nullable = false,length = 20)
    private int reservationTypeId;

    @Column(nullable =false,length=20)
    private int id;

    @Column(nullable =false)
    private LocalDate checkInDate;

    @Column(nullable =false)
    private LocalDate checkOutDate;

    @Column(nullable =false,length=2)
    private boolean isActive;

    @Column(nullable =false,length=10)
    private int noOfGuest;

    @OneToMany(targetEntity = ReservationRoomObj.class,cascade=CascadeType.ALL)
    @JoinColumn(name="reservationId",referencedColumnName = "reservationId")
    private List<ReservationRoomObj> reservationRooms;

    public int getReservationId() {
        return reservationId;
    }

    public void setReservationId(int reservationId) {
        this.reservationId = reservationId;
    }

    public int getReservationTypeId() {
        return reservationTypeId;
    }

    public void setReservationTypeId(int reservationTypeId) {
        this.reservationTypeId = reservationTypeId;
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

    public boolean isActive() {
        return isActive;
    }

    public void setActive(boolean active) {
        isActive = active;
    }

    public int getNoOfGuest() {
        return noOfGuest;
    }

    public void setNoOfGuest(int noOfGuest) {
        this.noOfGuest = noOfGuest;
    }

    public List<ReservationRoomObj> getReservationRooms() {
        return reservationRooms;
    }

    public void setReservationRooms(List<ReservationRoomObj> reservationRooms) {
        this.reservationRooms = reservationRooms;
    }
}
