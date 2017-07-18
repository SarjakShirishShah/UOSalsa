package com.uosalsa.viewClasses;


public class LoginBean {
	
	private String username;

	private String password;
	
	private String role;

	public String getPassword()
	{
			return this.password;
	}

	public String getUsername()
	{
			return this.username;
	}

	public void setUsername(String username)
	{
			this.username = username;
	}

	public void setPassword(String password)
	{
			this.password = password;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}
}
