/**
 * 
 */
package com.uosalsa.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.uosalsa.model.Role;

/**
 * @author sarjak
 *
 */
public interface RoleRepository extends JpaRepository<Role, Long> {

	Role findByName(String name);

}
