package com.nucleus.dao;



import java.util.ArrayList;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nucleus.model.Customer;
import com.nucleus.model.RoleReg;
import com.nucleus.model.UserReg;


@Repository
public class UserDaoImpl implements IUserDao {

	@Autowired
	SessionFactory sessionFactory;
	
	/*******************************************************save user data in userreg******************************************************/
	
	@Override
	public boolean savedata1(UserReg userReg,Session session) {
		
		session.persist(userReg);
		return true;
		
		
	}

	/*******************************************************save user data in userreg ******************************************************/	

	
	/*******************************************************save ******************************************************/


	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<RoleReg> retriveData1(Session session) {
		
		Query query=session.createQuery("from RoleReg");
		return (ArrayList<RoleReg>) query.list();
	}


	/*******************************************************save ******************************************************/


	/*******************************************************save ******************************************************/

	@Override
	public RoleReg getRole(String roleName,Session session) {
		
		Query query=session.createQuery("from RoleReg where role=:role");
		query.setParameter("role", roleName);
		return (RoleReg) query.list().get(0);
	}

	/*******************************************************save ******************************************************/


	/*******************************************************save ******************************************************/


	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<String> userRole(int userid,Session session) {
		
		Query query=session.createSQLQuery("select b.role from RoleReg b join user_role_reg1 c  on (b.roleid=c.role_id)  where c.user_id=?");
		query.setParameter(0, userid);
		
		ArrayList<String>al=new ArrayList<String>();
		
	    al=(ArrayList<String>) query.list();
	    
	    return al;
	}
	/*******************************************************save ******************************************************/




	/*public UserReg retrievedataby(int user_id) {
		try
		{
		UserReg userReg=null;
		Session session=sessionFactory.getCurrentSession();
		Query query1=session.createQuery("from UserReg where user_id=:user_id");
		query1.setParameter("user_id",user_id);
		userReg=(UserReg)query1.list().get(0);
		return userReg;
		}
		catch(Exception e)
		{
		
			return null;
		}
	}

*/









}



