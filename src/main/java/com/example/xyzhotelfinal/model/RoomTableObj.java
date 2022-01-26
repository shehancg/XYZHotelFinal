package com.example.xyzhotelfinal.model;
import javax.persistence.*;

@Entity
@Table(name = "roomtable")
public class RoomTableObj {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private int roomNo;

    @Column(nullable = false,length = 20)
    private int roomTypeId;

    @Column(nullable =false,length=2)
    private boolean isReserved;

    public int getRoomNo() {
        return roomNo;
    }

    public void setRoomNo(int roomNo) {
        this.roomNo = roomNo;
    }

    public int getRoomTypeId() {
        return roomTypeId;
    }

    public void setRoomTypeId(int roomTypeId) {
        this.roomTypeId = roomTypeId;
    }

    public boolean isReserved() {
        return isReserved;
    }

    public void setReserved(boolean reserved) {
        isReserved = reserved;
    }
}
