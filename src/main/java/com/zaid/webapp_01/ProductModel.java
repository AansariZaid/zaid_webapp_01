package com.zaid.webapp_01;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;


@Entity
@Table(name = "ProductData")
public class ProductModel {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	@NotEmpty(message = "Please Enter Product Name")
	private String name;
	@NotEmpty(message = "Please Enter Category Name")
	private String category;
	@NotEmpty(message = "Please Enter Brand Name")
	private String brand;
	@Size(min=2)
	private double price;
	
	@javax.persistence.Transient
	MultipartFile file;
	public MultipartFile getFile()
	{
		return file;
	}
	
	public void setFile(MultipartFile file)
	{
		this.file = file;
	}
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "ProductModel [id=" + id + ", name=" + name + ", category=" + category + ", brand=" + brand + ", price="
				+ price + "]";
	}
	
}
