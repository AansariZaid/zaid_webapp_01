package com.zaid.webapp_01;


public interface CustomerOrderDao {
	void addCustomerOrder(CustomerOrder customerOrder);

    double getCustomerOrderGrandTotal(int cartId);
}
