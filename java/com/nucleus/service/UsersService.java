package com.nucleus.service;

import java.util.ArrayList;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nucleus.dao.IUserDao;
import com.nucleus.model.Customer;
import com.nucleus.model.RoleReg;
import com.nucleus.model.UserReg;

import com.nucleus.utility.BCryptPassword;



@Service
public class UsersService implements IUsersService{

	@Autowired
	BCryptPassword bCryptPassword;
	
	@Autowired
	IUserDao iUserDao;
	
	@Autowired
	SessionFactory sessionFactory;
	
	



	@Override
	@Transactional
	public ArrayList<RoleReg> retrieveData() {
		
		Session session=sessionFactory.getCurrentSession();
		ArrayList<RoleReg> list=iUserDao.retriveData1(session);
		return list;
	}

	@Override
	@Transactional
	public void insertRole(UserReg userReg, ArrayList<String> rolename) {
		
		Session session=sessionFactory.getCurrentSession();
		ArrayList<RoleReg> list=new ArrayList<RoleReg>();
		for(int i=0;i<rolename.size();i++)
		{
			RoleReg roleReg=iUserDao.getRole(rolename.get(i),session);
			
			
			
			list.add(roleReg);
			
		}
		
		userReg.setEnabled(1);
		userReg.setAl(list);
		
		iUserDao.savedata1(userReg,session);
	   	
		
		
	}

	@Override
	@Transactional
	public ArrayList<String> userRole(int userid) {
		
		Session session=sessionFactory.getCurrentSession();
		ArrayList<String> role=iUserDao.userRole(userid,session);
		return role;
	}

	/*@Override
	public boolean primarycheck(int user_id) {
		try
		{
			
		UserReg userReg=iUserDao.retrievedataby(user_id);
		if(userReg!=null)
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
				
				return false;
			}
		
	}
	*/
}
