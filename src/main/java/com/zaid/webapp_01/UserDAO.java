package com.zaid.webapp_01;

public interface UserDAO {

	public void insertUser(User user);

	public User getUserDetails(String email);
}
