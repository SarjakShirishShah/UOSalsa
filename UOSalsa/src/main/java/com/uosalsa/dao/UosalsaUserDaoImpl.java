package com.uosalsa.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.uosalsa.model.UosalsaUser;
import com.uosalsa.repository.UosalsaUserRepository;

import org.hibernate.SessionFactory;


@Component("uosalsaUserDao")
public class UosalsaUserDaoImpl implements UosalsaUserDao {
	
	@Autowired
	private UosalsaUserRepository userRepository;
	@Autowired 
	SessionFactory session;
	
	@Override
	public UosalsaUser findByUsername(String username) {
		return userRepository.findByUsername(username);
	}

	@Override
	public void create(UosalsaUser uosalsaUser) {
		session.getCurrentSession().save(uosalsaUser);
		
	}

	@Override
	public UosalsaUser findByEmail(String email) {
		return userRepository.findByEmail(email);
	}

	@Override
	public UosalsaUser findById(Long token) {
		return userRepository.findOne(token);
	}

	@Override
	public void delete(UosalsaUser uosalsaUser) {
		session.getCurrentSession().delete(uosalsaUser);
	}
	
	@Override
	public void update(UosalsaUser uosalsaUser) {
		session.getCurrentSession().update(uosalsaUser);
	}

}
