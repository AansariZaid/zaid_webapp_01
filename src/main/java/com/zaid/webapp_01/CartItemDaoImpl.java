package com.zaid.webapp_01;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public class CartItemDaoImpl implements CartItemDao{
	@Autowired
	private SessionFactory session;
	@Override
	public void addCartItem(CartItem cartItem) {
		// TODO Auto-generated method stub
		session.getCurrentSession().saveOrUpdate(cartItem);		
	}

	@Override
	public void removeCartItem(CartItem cartItem) {
		// TODO Auto-genera`ted method stub
		session.getCurrentSession().remove(cartItem);
		
	}

	@Override
	public void removeAllCartItems(Cart cart) {
		List<CartItem> cartItems = cart.getCartItems();

        for (CartItem item : cartItems){
            removeCartItem(item);
        }

		
		
	}

	@Override
	public CartItem getCartItemByProductId(int productId) {
		Query query = session.getCurrentSession().createQuery("from CartItem where productId = ?");
		query.setParameter(0, productId);
		return (CartItem)query.getSingleResult();
 	}

}
