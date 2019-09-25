package com.nucleus.service;


import java.util.List;
import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nucleus.dao.CustomerDaoImpl;
import com.nucleus.dao.ICustomerDao;
import com.nucleus.model.Customer;


@Service
public class CustomerService implements ICustomerService{

	private static final Logger logger = Logger.getLogger(CustomerDaoImpl.class);
	@Autowired
	ICustomerDao iCustomerDao;
	
	
	
	@Override
	@Transactional
	public void saveData(Customer customer) {
		
		java.util.Date date=new java.util.Date();
		
		
		java.sql.Date sqldate=new java.sql.Date(date.getTime());

	
	customer.setCreateDate(sqldate);
		
		customer.setRecordStatus("N");
		
		customer.setModifiedDate(null);
		customer.setModifiedBy("");
		customer.setAuthorizedDate(null);
		customer.setAuthorizedBy("");
		
		iCustomerDao.savedata(customer);
		
	}

	@Override
	@Transactional
	public boolean deleteData(String code) {
		
		
	
		
boolean status=iCustomerDao.deletedata(code);
		
		return status;
		
	}

	@Override
	@Transactional
	public List<Customer> retrieveData() {
		
		
		return iCustomerDao.retrievedata();
	}

	@Override
	@Transactional
	public Customer retrievedDataBy(String customerCode) {
		
		
		return iCustomerDao.retrievedataby(customerCode);
	}

	@Override
	@Transactional
	public boolean updateData(Customer customer) {
		
		
		java.util.Date date=new java.util.Date();
		
		java.sql.Date sqldate=new java.sql.Date(date.getTime());
		customer.setModifiedDate(sqldate);
		customer.setRecordStatus("M");
		boolean status=iCustomerDao.updatedata(customer);
		return status;
	}

	@Override
	@Transactional
	public boolean primarycheck(String customerCode) {
		try
		{
			
		Customer cust=iCustomerDao.retrievedataby(customerCode);
		if(cust!=null)
		{
			return false;
			}
		else
		{
			return true;
		}
			}
			catch(Exception e)
			{
				logger.error(e);
				return false;
			}
		
	}

	@Override
	@Transactional
	public void deleterow(String customerCode) {
		
		
	iCustomerDao.deleterow(customerCode);
	}

	
	@Override
	@Transactional
	public List<Customer> retrieveData1(String select) {
		
		
		return iCustomerDao.retrievedataasc(select);
		
	}

	@Override
	@Transactional
	public List<Customer> retrieveData2(String select) {
		
		return iCustomerDao.retrievedatadsc(select);
	}

	
	
		
		
	

}
