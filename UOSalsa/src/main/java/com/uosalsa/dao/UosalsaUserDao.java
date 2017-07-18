package com.uosalsa.dao;

import com.uosalsa.model.UosalsaUser;

public interface UosalsaUserDao {
	
	public UosalsaUser findByUsername(String username);

	public void create(UosalsaUser uosalsaUser);

	public UosalsaUser findByEmail(String email);

	public UosalsaUser findById(Long token);

	public void delete(UosalsaUser uosalsaUser);

	public void update(UosalsaUser uosalsaUser);

}
