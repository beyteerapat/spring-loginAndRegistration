package com.webDemo.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Entity
@Table(name="users")
public class User {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="user_id")
	private Long userId;
	
	@NotBlank(message="username cannot be blank.")
	@Size(min=6 , max=15, message="Username must be between 8 and 15 characters.")
	@Pattern(regexp="^[a-zA-Z0-9._-]{6,15}$", message="Username can only consists of letters, numbers ,period ,underscore and dash")
	@Column(name="username")
	private String username;
	
	@NotBlank
	@Size(min=6, max=20, message="Password must be between 6 and 20 characters.")
	@Pattern(regexp="(?=.*[A-Z]).{6,20}", message="Password must contain at least 1 capital letter.")
	@Column(name="password")
	private String password;
	
	@Column(name="enabled")
	private boolean enabled = true;
	
	@Column(name="authority")
	private String authority = "user";
	
	public User() {
		
	}

	public User(Long userId, String username, String password, boolean enabled, String authority) {
		this.userId = userId;
		this.username = username;
		this.password = password;
		this.enabled = enabled;
		this.authority = authority;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

	
}
