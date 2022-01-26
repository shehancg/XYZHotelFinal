package com.example.xyzhotelfinal.repository;

import com.example.xyzhotelfinal.dto.ReservationDto;
import com.example.xyzhotelfinal.model.ReservationObj;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.List;

@Repository
public interface ReservationRepository extends JpaRepository<ReservationObj,Integer> {

    List<ReservationObj> findByCheckInDateLessThanEqualAndCheckOutDateGreaterThanEqual(LocalDate checkInDate, LocalDate checkOutDate);

    @Query ("SELECT new com.example.xyzhotelfinal.dto.ReservationDto(r.reservationId, m.roomNo) FROM ReservationObj r JOIN r.reservationRooms m")
    public List<ReservationDto> getJoinInformation();


}
