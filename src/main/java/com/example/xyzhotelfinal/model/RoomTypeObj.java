package com.example.xyzhotelfinal.model;

import javax.persistence.*;

@Entity
@Table(name = "roomtype")
public class RoomTypeObj {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private int roomTypeId;

    @Column(nullable = false,length = 20)
    private String roomTypeName;

    @Column(nullable =false, length=20)
    private int roomCapacity;

    @Column(nullable = false, length=20)
    private int price;

    @Column(nullable =false, length=250)
    private String description;

    public int getRoomTypeId() {
        return roomTypeId;
    }

    public void setRoomTypeId(int roomTypeId) {
        this.roomTypeId = roomTypeId;
    }

    public String getRoomTypeName() {
        return roomTypeName;
    }

    public void setRoomTypeName(String roomTypeName) {
        this.roomTypeName = roomTypeName;
    }

    public int getRoomCapacity() {
        return roomCapacity;
    }

    public void setRoomCapacity(int roomCapacity) {
        this.roomCapacity = roomCapacity;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
