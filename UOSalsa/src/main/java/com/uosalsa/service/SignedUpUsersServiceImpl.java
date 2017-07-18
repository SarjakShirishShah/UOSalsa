package com.uosalsa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.uosalsa.dao.SignedUpUsersDao;
import com.uosalsa.model.SignedUpUsers;

@Transactional
@Service("signedUpUsersService")
public class SignedUpUsersServiceImpl implements SignedUpUsersService {
	
	
	@Autowired
	private SignedUpUsersDao signedUpUsersDao;
	
	@Override
	public void create(SignedUpUsers signedUpUsers) {
		signedUpUsersDao.create(signedUpUsers);
	}

	@Override
	public List<SignedUpUsers> findAll() {
		return signedUpUsersDao.findAll();
	}

	@Override
	public SignedUpUsers findByEmail(String email) {
		return signedUpUsersDao.findByEmail(email);
	}

	@Override
	public SignedUpUsers findById(Long id) {
		return signedUpUsersDao.findById(id);
	}

	@Override
	public void delete(SignedUpUsers signedUpUsers) {
		signedUpUsersDao.delete(signedUpUsers);
	}

}
