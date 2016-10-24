package com.zaid.webapp_01;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	private SessionFactory session;

	@SuppressWarnings({"unchecked","deprecation"})
	
	@Override
	public List<ProductModel> getAll() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from ProductModel").list();
	}

	@Override
	public void insertProduct(ProductModel product) {
		// TODO Auto-generated method stub
		session.getCurrentSession().persist(product);
		
	}

	@Override
	public void deleteProductById(int productId) {
		// TODO Auto-generated method stub
		session.getCurrentSession().delete(getProductById(productId));
	}

	@Override
	public void updateProduct(ProductModel product) {
		// TODO Auto-generated method stub
		session.getCurrentSession().update(product);
	}

	@Override
	public ProductModel getProductById(int productId) {
		// TODO Auto-generated method stub
		ProductModel p = session.getCurrentSession().get(ProductModel.class, new Integer(productId));
		
		return p;
	}

	@Override
	public ProductModel getProductByPrice(int productPrice) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductModel> getProductByCategory(String Category) {
		// TODO Auto-generated method stub
		Query query = session.getCurrentSession().createQuery("from Productdata WHERE category=?");
		query.setParameter(0, Category);
		return query.list();
	}

}
