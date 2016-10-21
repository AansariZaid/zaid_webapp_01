package com.zaid.webapp_01;

import java.util.List;

public interface ProductDAO {
	
	public List<ProductModel> getAll();
	public void insertProduct(ProductModel product);
	public void deleteProductById(int productId);
	void updateProduct(ProductModel product);
	public ProductModel getProductById(int productId);
	public ProductModel getProductByPrice(int productPrice);

}
