package com.uosalsa.service;

import java.util.List;

import com.uosalsa.model.SignedUpUsers;

public interface SignedUpUsersService {
	
	public void create(SignedUpUsers signedUpUsers);

	public List<SignedUpUsers> findAll();

	public SignedUpUsers findByEmail(String email);

	public SignedUpUsers findById(Long id);

	public void delete(SignedUpUsers signedUpUsers);
}
