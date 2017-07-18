package com.uosalsa.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.uosalsa.model.SignedUpUsers;
import com.uosalsa.repository.SignedUpUsersRepository;

@Component("signedUpUsersDao")
public class SignedUpUsersDaoImpl implements SignedUpUsersDao {
	
	@Autowired SessionFactory session;
	@Autowired SignedUpUsersRepository signedUpUsersRepository;
	
	@Override
	public void create(SignedUpUsers signedUpUsers) {
		session.getCurrentSession().save(signedUpUsers);

	}

	@Override
	public List<SignedUpUsers> findAll() {
		return signedUpUsersRepository.findAll();
	}

	@Override
	public SignedUpUsers findByEmail(String email) {
		return signedUpUsersRepository.findByEmail(email);
	}

	@Override
	public SignedUpUsers findById(Long id) {
		return signedUpUsersRepository.findOne(id);
	}

	@Override
	public void delete(SignedUpUsers signedUpUsers) {
		session.getCurrentSession().delete(signedUpUsers);
	}

}
