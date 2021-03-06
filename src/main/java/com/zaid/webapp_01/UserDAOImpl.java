package com.zaid.webapp_01;

import java.util.List;

import org.hibernate.query.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public class UserDAOImpl implements UserDAO{

	@Autowired
	private SessionFactory session;
	
	@Override
	public void insertUser(User user) {
		
		Cart cart = new Cart();
		cart.setGrandTotal(0);
		cart.setUser(user);
		user.setCart(cart);
		
		session.getCurrentSession().persist(user);
		
	}

	@Override
	public User getUserDetails(String userid) {			
		User user = session.getCurrentSession().get(User.class, new String(userid));	
		return user;
		
	}

	@Override
	public User getUById(int customerId) {
		// TODO Auto-generated method stub
		User u = session.getCurrentSession().get(User.class, new Integer(customerId));
		return  u;
	}

	@Override
	public List<User> getAllCustomers() {
		return session.getCurrentSession().createQuery("from User").list();
	}

	@Override
	public User getCustomerByUsername(String username) {
		Query query = session.getCurrentSession().createQuery("from User WHERE email=?");
		query.setParameter(0, username);
		return (User)query.getSingleResult();
	}
	

}
