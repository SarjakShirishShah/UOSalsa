package com.uosalsa.service;

import com.uosalsa.model.UosalsaUser;

public interface UosalsaUserService {
	
	public UosalsaUser findByUsername(String username);

	public void create(UosalsaUser uosalsaUser);

	public UosalsaUser findByEmail(String email);

	public UosalsaUser findById(Long token);

	public void delete(UosalsaUser uosalsaUser);

	public void update(UosalsaUser uosalsaUser);

	
}
