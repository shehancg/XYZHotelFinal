package com.example.xyzhotelfinal.model;

import javax.persistence.*;

@Entity
@Table(name = "halltype")
public class HallTypeObj {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private int hallTypeId;

    @Column(nullable = false,length = 20)
    private String hallTypeName;

    @Column(nullable =false, length=20)
    private int hallCapacity;

    @Column(nullable = false, length=20)
    private int price;

    @Column(nullable =false, length=250)
    private String description;

    public int getHallTypeId() {
        return hallTypeId;
    }

    public void setHallTypeId(int hallTypeId) {
        this.hallTypeId = hallTypeId;
    }

    public String getHallTypeName() {
        return hallTypeName;
    }

    public void setHallTypeName(String hallTypeName) {
        this.hallTypeName = hallTypeName;
    }

    public int getHallCapacity() {
        return hallCapacity;
    }

    public void setHallCapacity(int hallCapacity) {
        this.hallCapacity = hallCapacity;
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
