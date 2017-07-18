/**
 * 
 */
package com.uosalsa.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import com.uosalsa.model.UosalsaUser;

/**
 * @author sarjak
 *
 */
public interface UosalsaUserRepository extends JpaRepository<UosalsaUser, Long>, CrudRepository <UosalsaUser, Long> {
	
	public UosalsaUser findByUsername(String username);

	public UosalsaUser findByEmail(String email);
}
