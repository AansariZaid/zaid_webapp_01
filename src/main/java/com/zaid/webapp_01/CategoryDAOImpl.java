package com.zaid.webapp_01;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public class CategoryDAOImpl implements CategoryDAO {

	@Autowired
	private SessionFactory session;
	
	@Override
	public void insertCategory(CategoryModel category) {
		
		session.getCurrentSession().persist(category);
		
	}

	@Override
	public CategoryModel getCategoryName(String name) {
		// TODO Auto-generated method stub
		CategoryModel category = session.getCurrentSession().get(CategoryModel.class, new String(name));
		return category;
	}

	@Override
	public CategoryModel getCategoryId(int id) {
		// TODO Auto-generated method stub
		CategoryModel category = session.getCurrentSession().get(CategoryModel.class,new  Integer(id));
		return category;
	}

	@Override
	public List<CategoryModel> getAll() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from CategoryModel").list();
	}

}
