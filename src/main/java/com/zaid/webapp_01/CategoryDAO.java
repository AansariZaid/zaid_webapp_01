package com.zaid.webapp_01;

import java.util.List;

public interface CategoryDAO {
	
	public List<CategoryModel> getAll();
	
	public void insertCategory(CategoryModel category);

	public CategoryModel getCategoryName(String name);
	
	public CategoryModel getCategoryId(int id); 
}
