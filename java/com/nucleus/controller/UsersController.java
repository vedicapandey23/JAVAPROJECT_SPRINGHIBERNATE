package com.nucleus.controller;



import java.security.Principal;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.nucleus.model.RoleReg;
import com.nucleus.model.UserReg;

import com.nucleus.service.IUsersService;


@Controller
public class UsersController {

	@Autowired
	IUsersService iUsersService;
	
	/*****************************************login page controller*****************************************************/
	@RequestMapping("/cloginsecurity")
	public String loginsecurity()
	{String login= "loginsecurity";
		return login;//sonarlint warning
	}
	
	/*****************************************login page controller*****************************************************/
	/***********************************************************************************************************************/
	/* this controller controls the user registration task, and registers the user in database*/
	
	@RequestMapping("/cregisteruser1")
	public ModelAndView registeruser1(UserReg userReg,@RequestParam("rolename") String []checkrole )
	{
		
		
		
		
		ArrayList<String> rolename=new ArrayList<String>();
		for(int i=0;i<checkrole.length;i++)
		{
			rolename.add(checkrole[i]);
		
		}
	
		/*boolean status=iUsersService.primarycheck(userReg.getUser_id());
		if(status==true)*/
		iUsersService.insertRole(userReg, rolename);
		
		ModelAndView model=new ModelAndView("loginsecurity");
		model.addObject("statusrecord","Registration Successfull....");
		
		return model;
		
	}
	/***********************************************************************************************************************/
	/***********************************************************************************************************************/
	/*This controller fetches all the roles from database and and displays on the register user form, which registers the user */
	@RequestMapping("/cregisteruser")
	public ModelAndView registeruser(UserReg userReg)
	{
		ModelAndView model=null;
		
		ArrayList<RoleReg> list=iUsersService.retrieveData();
		 model=new ModelAndView("registeruser");
		model.addObject("role1",list);
		
		
		
		return model;
		
		
	}
	/***********************************************************************************************************************/
	/***********************************************************************************************************************/
	
/*After the successful login the this controller comes into function,it calls the method which gives all the registered role of
 * the logged in user and dsiplays it on roleassign jsp*/	
	@RequestMapping("/cmainpage")
	public ModelAndView loginrole(UserReg userReg,Principal principal)
	{	
		
		String userid=principal.getName();
		int user_id=Integer.parseInt(userid);
		ArrayList<String> list=iUsersService.userRole(user_id);
	
		
	return new ModelAndView("roleassign","rolelist",list) ;
		
	}
/***********************************************************************************************************************/	
	/***********************************************************************************************************************/	
	
	/*After the particular role is selected from roleassign jsp, the control comes to this controller and according to the role it 
	 * redirects to the mentioned page*/
	
	
	@RequestMapping("/cmainpage1")
	public ModelAndView pagechoice(@RequestParam("rolename") String rolename)
	{
		ModelAndView model=null;

		
		if(rolename.equals("ROLE_ADMIN"))
		{ model=new ModelAndView("adminpage");
			return model;
		}
		else if(rolename.equals("ROLE_MAKER"))
		{
			model=new ModelAndView("makertask");
			return model;
			
		}
		else if(rolename.equals("ROLE_CHECKER"))
		{
			model=new ModelAndView("checkertask");
			return model;
		}
		else if(rolename.equals(""))
		{ 
			model=new ModelAndView("roleassign");
			model.addObject("roletask","select a role");
			return model;
		}
		else 
		{model=new ModelAndView("extrarole");
		return model;
			
		}
	}
	
	/***********************************************************************************************************************/
	
	
	
	
	
	
	/*****************************************login page failure*****************************************************/
	
	@RequestMapping("/cloginfailure")
	public String loginfailure(Model model)
	{
		model.addAttribute("statusfail","Wrong credentials,try again");
		return "loginsecurity";
	}
	/*****************************************login page failure*****************************************************/
	
	
	/*****************************************login page access denied*****************************************************/
	
	@GetMapping(value="/caccessdenied")
	public String accessdenied(Model model)
	{
		model.addAttribute("statusdenied", "Unauthorized user");
		return "loginsecurity";
	}
	
	
	/*****************************************login page access denied*****************************************************/
	
	
	
	
}
