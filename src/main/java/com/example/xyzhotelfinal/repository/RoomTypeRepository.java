package com.example.xyzhotelfinal.repository;

import com.example.xyzhotelfinal.model.RoomTypeObj;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RoomTypeRepository extends JpaRepository<RoomTypeObj,Integer> {

}
