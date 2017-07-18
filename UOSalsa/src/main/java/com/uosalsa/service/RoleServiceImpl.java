package com.uosalsa.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.uosalsa.dao.RoleDao;
import com.uosalsa.model.Role;

@Transactional
@Service("roleService")
public class RoleServiceImpl implements RoleService {
	
	@Autowired
	private RoleDao roleDao;
	
	@Override
	public void create(Role role) {
		roleDao.create(role);
		
	}

	@Override
	public Role findByName(String name) {
		return roleDao.findByName(name);
	}

	@Override
	public Role findById(Long id) {
		return roleDao.findById(id);
	}

}
