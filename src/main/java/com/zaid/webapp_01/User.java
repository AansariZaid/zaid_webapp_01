package com.zaid.webapp_01;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "uid")
	private int uid;

	@NotEmpty(message = "Please Enter Your Name")
	@Column(name = "name")
	private String name;

	@Email(message = "Please Enter Valid Email ID")
	@Column(name = "email")
	private String email;

	@Column(name = "country")
	private String country;

	/*
	 * @Pattern.List({
	 * 
	 * @Pattern(regexp = "(?=.*[0-9])", message =
	 * "Password must contain one digit."),
	 * 
	 * @Pattern(regexp = "(?=.*[a-z])", message =
	 * "Password must contain one lowercase letter."),
	 * 
	 * @Pattern(regexp = "(?=.*[A-Z])", message =
	 * "Password must contain one uppercase letter."),
	 * 
	 * @Pattern(regexp = "(?=\\S+$)", message =
	 * "Password must contain no whitespace.") })
	 */
	@Size(min = 6, max = 25, message = "Please Enter A Valid Password")	
	@NotEmpty(message = "Please Enter A Valid Password")
	@Column(name = "password")
	private String password;

	@Column(name = "enabled")
	private boolean enabled;

	@Column(name = "role")
	private String role;

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public boolean getEnabled() {
		return enabled;
	}

	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
