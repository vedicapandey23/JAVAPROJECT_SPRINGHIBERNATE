package com.nucleus.service;

import java.util.List;

import org.hibernate.Session;

import com.nucleus.model.Customer;



public interface ICustomerService {

	public void saveData(Customer customer);
	public boolean deleteData(String code);
	public List<Customer> retrieveData();

	public Customer retrievedDataBy(String customerCode);
	public boolean updateData(Customer customer);
	public boolean primarycheck(String customerCode);
	public void deleterow(String customerCode);
	public List<Customer> retrieveData1(String select);
	public List<Customer> retrieveData2(String select);
}
