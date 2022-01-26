package com.example.xyzhotelfinal.repository;

import com.example.xyzhotelfinal.dto.ReservationRoomView;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;

@Repository
@Transactional
public interface ReservationRoomViewRepo extends PagingAndSortingRepository<ReservationRoomView,String>
{

}
