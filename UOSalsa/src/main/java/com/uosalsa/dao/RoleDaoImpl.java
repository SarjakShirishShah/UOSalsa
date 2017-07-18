package com.uosalsa.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.uosalsa.model.Role;
import com.uosalsa.repository.RoleRepository;

@Component("roleDao")
public class RoleDaoImpl implements RoleDao {
	
	@Autowired SessionFactory session;
	@Autowired RoleRepository roleRepository;
	
	@Override
	public void create(Role role) {
		session.getCurrentSession().save(role);
		
	}

	@Override
	public Role findByName(String name) {
		return roleRepository.findByName(name);
	}

	@Override
	public Role findById(Long id) {
		return roleRepository.findOne(id);
	}

}
