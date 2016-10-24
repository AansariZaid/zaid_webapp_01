package com.zaid.webapp_01;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="SupplierModel")

public class SupplierModel {
	@NotNull
	@Column
	@Id
	private String sid;
	private String supplier_name;
	/**
	 * @return the sid
	 */
	public String getSid() {
		return sid;
	}
	/**
	 * @param sid the sid to set
	 */
	public void setSid(String sid) {
		this.sid = sid;
	}
	/**
	 * @return the supplier_name
	 */
	public String getSupplier_name() {
		return supplier_name;
	}
	/**
	 * @param supplier_name the supplier_name to set
	 */
	public void setSupplier_name(String supplier_name) {
		this.supplier_name = supplier_name;
	}
	
	


}
