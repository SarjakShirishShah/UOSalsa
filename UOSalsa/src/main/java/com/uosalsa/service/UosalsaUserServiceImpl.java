package com.uosalsa.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.uosalsa.dao.UosalsaUserDao;
import com.uosalsa.model.UosalsaUser;


@Transactional
@Service("uosalsaUserService")
public class UosalsaUserServiceImpl implements UosalsaUserService {
	
	@Autowired
	private UosalsaUserDao uosalsaUserDao;
	
	
	@Override
	public UosalsaUser findByUsername(String username) {
		return uosalsaUserDao.findByUsername(username);
	}
	
	@Override
	public void create(UosalsaUser uosalsaUser) {
		uosalsaUserDao.create(uosalsaUser);
	}

	@Override
	public UosalsaUser findByEmail(String email) {
		return uosalsaUserDao.findByEmail(email);
	}

	@Override
	public UosalsaUser findById(Long token) {
		return uosalsaUserDao.findById(token);
	}

	@Override
	public void delete(UosalsaUser uosalsaUser) {
		uosalsaUserDao.delete(uosalsaUser);
	}

	@Override
	public void update(UosalsaUser uosalsaUser) {
		uosalsaUserDao.update(uosalsaUser);
	}

}
