package com.example.xyzhotelfinal.model;

import javax.persistence.*;

@Entity
@Table(name = "halltable")
public class HallTableObj {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private int hallNo;

    @Column(nullable = false,length = 20)
    private int hallTypeId;

    @Column(nullable =false,length=2)
    private boolean isReserved;

    public int getHallNo() {
        return hallNo;
    }

    public void setHallNo(int hallNo) {
        this.hallNo = hallNo;
    }

    public int getHallTypeId() {
        return hallTypeId;
    }

    public void setHallTypeId(int hallTypeId) {
        this.hallTypeId = hallTypeId;
    }

    public boolean isReserved() {
        return isReserved;
    }

    public void setReserved(boolean reserved) {
        isReserved = reserved;
    }
}
