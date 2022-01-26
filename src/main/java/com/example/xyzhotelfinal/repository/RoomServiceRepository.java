package com.example.xyzhotelfinal.repository;

import com.example.xyzhotelfinal.model.RoomTableObj;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface RoomServiceRepository extends JpaRepository<RoomTableObj,Integer> {

    public List<RoomTableObj>findByRoomNoNotIn(List<Object>roomTableList);
}
