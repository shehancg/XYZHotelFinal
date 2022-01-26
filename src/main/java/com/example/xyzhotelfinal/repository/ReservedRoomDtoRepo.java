package com.example.xyzhotelfinal.repository;

import com.example.xyzhotelfinal.dto.ReservedRoomDto;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.time.LocalDate;
import java.util.List;

@Repository
@Transactional
public interface ReservedRoomDtoRepo extends PagingAndSortingRepository<ReservedRoomDto,String> {

    List<ReservedRoomDto> findByCheckInDateLessThanEqualAndCheckOutDateGreaterThanEqual(LocalDate checkOutDate, LocalDate checkInDate);
}
