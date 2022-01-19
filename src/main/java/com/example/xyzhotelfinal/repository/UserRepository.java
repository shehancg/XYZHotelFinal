package com.example.xyzhotelfinal.repository;

import com.example.xyzhotelfinal.model.UserObj;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<UserObj,Integer> {
    public UserObj findByEmail(String email);
    public UserObj findByEmailAndPassword(String email,String password);
}
