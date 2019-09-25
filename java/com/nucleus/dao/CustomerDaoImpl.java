package com.nucleus.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nucleus.model.Customer;

@Repository
public class CustomerDaoImpl  implements ICustomerDao{

	
	
	@Autowired
	SessionFactory sessionFactory;

	/*******************************************************save ******************************************************/	
/*This method saves the data into database and it accepts the customer object and session object and returms the status 
 * of the task*/
	
	@Override
	public boolean savedata(Customer customer) {
		Session session=sessionFactory.getCurrentSession();
		
		session.persist(customer);
		
		return true;
		
	}
	/*******************************************************save*************************************************************/
	
	
	
	
	
	
	/*****************************************************update************************************************************/
	/*This method updates the data into database and it accepts the customer object and session object and returns the status 
	 * of the task*/
	
	
	
	@Override
	public boolean updatedata(Customer customer) {
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(customer);
		return true;
	}
	/****************************************************update****************************************************************/
	
	
	
	
	
	/********************************************************retrieve all******************************************************/
	/*This method retrieves data from the customer table and stores it in a list which is then returned to further layer
	 * for further programming*/
	
	
	
	@SuppressWarnings("unchecked")
	public List<Customer> retrievedata() {
		Session session=sessionFactory.getCurrentSession();
		List<Customer> list=new ArrayList<Customer>();

		
		Query query1=session.createQuery("from Customer");
		
		list=(ArrayList<Customer>) query1.list();
		return list;
		
	}
	/********************************************************retrieve all**************************************************/
	
	
	
	
	
	/*****************************************************delete*********************************************************/
	
	/*This method deletes customer record by its customer code and returns the status of the record deleted*/
	
	
	@Override
	public boolean deletedata(String customercode) {
		
		Session session=sessionFactory.getCurrentSession();
		
		Query query1=session.createQuery("delete from Customer where customerCode=:customercode");
		query1.setParameter("customercode",customercode);
		int a=query1.executeUpdate();
		
		if(a==1)
		{
			return true;
		}
		
		else
		{
			return false;
		}
		
			
			
			
		}
	
	/*********************************************************delete******************************************************/
	
	
	
	
	
	
	
	
	
	/************************************************************retrieve by************************************************/
	
	/*This method retrieves customer record by its customer code and returns the  record retrieved*/
	
	@Override
	public Customer retrievedataby(String customerCode) {
		try
		{
		Customer customer=null;
		Session session=sessionFactory.getCurrentSession();
		Query query1=session.createQuery("from Customer where customerCode=:customerCode");
		query1.setParameter("customerCode",customerCode);
		customer=(Customer)query1.list().get(0);
		return customer;
		}
		catch(Exception e)
		{
		
			return null;
		}
	}






	

	/*******************************************************retrieve by****************************************************/
	@Override
	public void deleterow(String customerCode) {
	
		Session session=sessionFactory.getCurrentSession();

		Query query1=session.createQuery("delete from Customer where customerCode=?");
		query1.setParameter(0,customerCode);
		  query1.executeUpdate();
	}

		
	




@SuppressWarnings("unchecked")
@Override
public List<Customer> retrievedataasc(String select) {
	Session session=sessionFactory.getCurrentSession();
	
		List<Customer> list=new ArrayList<Customer>();

		
		Query query1=session.createQuery("from Customer ORDER BY ? asc");
		query1.setParameter(0,select);
		
	list=(ArrayList<Customer>) query1.list();
		
		return list;
}






@SuppressWarnings("unchecked")
@Override
public List<Customer> retrievedatadsc(String select) {
	Session session=sessionFactory.getCurrentSession();
	
	List<Customer> list=new ArrayList<Customer>();

	
	Query query1=session.createQuery("from Customer ORDER BY ? desc");
	query1.setParameter(0,select);
	
list=(ArrayList<Customer>) query1.list();
	
	return list;
}


	
	
}
