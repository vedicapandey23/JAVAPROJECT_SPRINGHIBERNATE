package com.nucleus.service;


import java.util.ArrayList;

import com.nucleus.model.RoleReg;
import com.nucleus.model.UserReg;


public interface IUsersService {

	
	public ArrayList<RoleReg> retrieveData();
	public void insertRole(UserReg userReg,ArrayList<String> rolename);
	public  ArrayList<String> userRole(int userid);
	/*public boolean primarycheck(int user_id);*/

}


