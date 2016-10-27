package com.zaid.webapp_01;

import java.util.List;

public interface UserDAO {

	public void insertUser(User user);

	public User getUserDetails(String email);

	public User getUById(int customerId);

	public List<User> getAllCustomers();

	User getCustomerByUsername(String username);

}
