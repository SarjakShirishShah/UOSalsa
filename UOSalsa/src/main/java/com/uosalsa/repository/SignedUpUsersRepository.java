package com.uosalsa.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import com.uosalsa.model.SignedUpUsers;

public interface SignedUpUsersRepository extends JpaRepository<SignedUpUsers, Long>, CrudRepository <SignedUpUsers, Long>{

	SignedUpUsers findByEmail(String email);

}
