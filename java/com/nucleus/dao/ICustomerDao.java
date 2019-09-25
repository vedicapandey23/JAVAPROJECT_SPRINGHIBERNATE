package com.nucleus.dao;

import java.util.List;

import org.hibernate.Session;

import com.nucleus.model.Customer;



public interface ICustomerDao {

	public boolean savedata(Customer customer);	
	public boolean updatedata(Customer customer);
	public List<Customer> retrievedata();

	public boolean deletedata(String code);
	public Customer retrievedataby(String customerCode);
	public void deleterow(String customerCode);
	public List<Customer> retrievedataasc(String select);
	public List<Customer> retrievedatadsc(String select);
}
