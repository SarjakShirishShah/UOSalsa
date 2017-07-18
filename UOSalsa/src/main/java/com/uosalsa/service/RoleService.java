package com.uosalsa.service;

import com.uosalsa.model.Role;

public interface RoleService {
	
	public void create(Role role);

	public Role findByName(String name);

	public Role findById(Long id);
}
