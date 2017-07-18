package com.uosalsa.dao;

import com.uosalsa.model.Role;

public interface RoleDao {

	void create(Role role);

	Role findByName(String name);

	Role findById(Long id);

}
