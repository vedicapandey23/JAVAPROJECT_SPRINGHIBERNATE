package com.nucleus.dao;


import java.util.ArrayList;

import org.hibernate.Session;

import com.nucleus.model.RoleReg;
import com.nucleus.model.UserReg;


public interface IUserDao {

	public boolean savedata1(UserReg userReg,Session session);
	public ArrayList<RoleReg> retriveData1(Session session);
	public RoleReg getRole(String roleName,Session session);
	public ArrayList<String> userRole(int userid,Session session);
	/*public UserReg retrievedataby(int user_id);*/

}


