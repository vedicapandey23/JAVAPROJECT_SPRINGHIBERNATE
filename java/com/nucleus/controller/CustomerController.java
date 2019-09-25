
package com.nucleus.controller;


import java.security.Principal;
import java.util.Date;
import java.util.List;

import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.nucleus.model.Customer;
import com.nucleus.service.ICustomerService;



@Controller
public class CustomerController {

	
	private static final Logger logger = Logger.getLogger(CustomerController.class);
	@Autowired
	ICustomerService iCustomerService;
	

/************************************************************create******************************************************************	*/
	/*These cccreform,cdisplayform controller basically manages the create operation of the application , all the controllering 
	 * for create is done basically from these controller*/
	
	
	
	
	@RequestMapping("/ccreateform")
	public ModelAndView createForm(Customer customer)
	{
		
		ModelAndView model=new ModelAndView("createsplit");
		List<Customer>list=iCustomerService.retrieveData();
		
		model.addObject(customer);
		
		model.addObject("list",list);
		
          return model;
		
	}
	
	@RequestMapping("/cdisplayform")
	public ModelAndView displayForm(@Valid Customer customer, BindingResult result,Principal principal)
	{
		if(result.hasErrors())
		{
			ModelAndView model=new ModelAndView("createsplit");
			List<Customer>list=iCustomerService.retrieveData();
			
			model.addObject(customer);
			
			model.addObject("list",list);
			
			model.addObject("status","Record Not Inserted....");
			logger.info("Error at server side in create");
	          return model;
			
			
		}
		
		else{
			
			
			boolean status=iCustomerService.primarycheck(customer.getCustomerCode());
			if(status==true)
			{
				
			
		
		customer.setCreatedBy(principal.getName());
		iCustomerService.saveData(customer);
		ModelAndView model=new ModelAndView("createsplit");
		List<Customer>list=iCustomerService.retrieveData();
		
		model.addObject(customer);
		
		model.addObject("list",list);
		model.addObject("status1","Record created");
		
          return model;
		
	
		
		}
		
		else
		{
			ModelAndView model=new ModelAndView("createsplit");
			List<Customer>list=iCustomerService.retrieveData();
			
			model.addObject(customer);
			
			model.addObject("list",list);
			
			model.addObject("status","Customer code already exist..");
			
	          return model;
		}
}
	}
	/************************************************************create******************************************************************	*/

	/**************************************************Retrieve All*************************************************/
	/*This controller has no parameters and string as return type,it fetches all the data from the database and stores the data in the list and then adds that list in the
	 * model object and returns it to the jsp page*/ 
	
	@RequestMapping("/cretieveAll")
	public String retieveAll(Model model)
	{
		List<Customer>list=iCustomerService.retrieveData();
		model.addAttribute("list",list);
		return "retrievedatanew";
		
	}
	/**************************************************Retrieve All*************************************************/
	
	/**************************************************Retrieve All split*************************************************/
	/*This controller is for the split screen retrieve all data , here also all the customer data is retrieved from database/
	 */
	
	
	
	@RequestMapping("/cretieveAllSplit")
	public String retieveAllSplit(Model model)
	{
		List<Customer>list=iCustomerService.retrieveData();
		model.addAttribute("list",list);
		return "retrieveallsplit";
		
	}
	/**************************************************Retrieve All*************************************************/
	/**************************************************Retrieve By*************************************************/
	/*This controller takes Customer as parameter and ModelAndView as return type.The model contains the customer data
	 * and is fetched on jsp page */
	@RequestMapping("/cretieveBy1")
	public ModelAndView retieveBy1(Customer customer)
	{
		ModelAndView model=new ModelAndView("retrievesplit");
		List<Customer>list=iCustomerService.retrieveData();
		model.addObject(customer);
		
		model.addObject("list",list);
		
          return model;
		
	}
	
	
	@RequestMapping(value="/cretrieveby2", method=RequestMethod.POST)
	public ModelAndView retieveBy2(@RequestParam("customerCode") String customerCode,Customer customer)
	{
		Customer cust=iCustomerService.retrievedDataBy(customerCode);
		
		if(cust==null)
		{
			ModelAndView model=new ModelAndView("retrievesplit");
			List<Customer>list=iCustomerService.retrieveData();
			model.addObject(customer);
			
			model.addObject("list",list);
			model.addObject("statusretrieve","No entry found....");
			return model;
			
		}
		
		ModelAndView model=new ModelAndView("retrievesplit1");
		List<Customer>list=iCustomerService.retrieveData();
		model.addObject(cust);
		
		model.addObject("list",list);
		return model;
		
	}
	
	/**************************************************Retrieve By*************************************************/

	/**********************update*****************************************************************/
	
	
	/*These cupdateBy1,cupdateBy2,cupdateBy3 controller basically manages the update operation of the application , all the controllering 
	 * for update is done basically from these controller*/
	
	
	@RequestMapping("/cupdateBy1")
	public ModelAndView updateForm(Customer customer)
	{
		ModelAndView model=new ModelAndView("updatesplit");
		List<Customer>list=iCustomerService.retrieveData();
		model.addObject(customer);
		
		model.addObject("list",list);
		
          return model;
		
	}
	
	
	
	
	
	
	
	
	@RequestMapping("/cupdateBy2")
	public ModelAndView updateForm1(@RequestParam("customerCode") String customerCode)
	{
		ModelAndView model=new ModelAndView("updatesplit");
		
		List<Customer>list=iCustomerService.retrieveData();
		Customer customer=iCustomerService.retrievedDataBy(customerCode);
		if(customer==null)
		{
			model.addObject("statusupdate","No entry found");
			List<Customer>list1=iCustomerService.retrieveData();
			model.addObject("list",list1);
			
			return model;
		}
		ModelAndView model5=new ModelAndView("updatesplit1");
model5.addObject(customer);
		
		model5.addObject("list",list);
		model5.addObject("customer",customer);
		return model5;
	
}
	@RequestMapping("/cupdateBy3")
	public ModelAndView updateForm2(@Valid Customer customer, BindingResult result,Principal principal,Date date1)
	{
		if(result.hasErrors())
		{
			
			
			ModelAndView model=new ModelAndView("updatesplit1");
			List<Customer>list=iCustomerService.retrieveData();
			
			model.addObject(customer);
			
			model.addObject("list",list);
			model.addObject("customer",customer);
			logger.info("Error at server side in update");
			
	          return model;
		
			
		}
		
		customer.setModifiedBy(principal.getName());
		
		boolean status=iCustomerService.updateData(customer);
		
		ModelAndView model=new ModelAndView("updatesplit1");
		List<Customer>list=iCustomerService.retrieveData();
		
		model.addObject(customer);
		
		model.addObject("list",list);
		model.addObject("customer",customer);
		
		
          
		
		
		if(status)
		{
			
			model.addObject("statusupdate","Record Updated");
			return model;
			
		}
		else {
			model.addObject("statusupdate","Record updation failed.");
			return model;
			
		}
		
	}


	/**********************update*****************************************************************/

	/**********************delete*****************************************************************/
	/*This controller takes Customer as parameter and ModelAndView as return type.The model contains the customer data
	 * and deletes yhr data by its code*/
	
	
	@RequestMapping("/cdeleteForm")
	public ModelAndView deleteForm(Customer customer)
	{
		ModelAndView model=new ModelAndView("deletesplit");
		List<Customer>list=iCustomerService.retrieveData();
		model.addObject(customer);
		
		model.addObject("list",list);
		
          return model;
		
	}
	
	@RequestMapping("/cdeleteForm1")
	public ModelAndView deleteForm1(@RequestParam("customerCode") String code,Customer customer)
	{
		
		boolean status=iCustomerService.deleteData(code);
		if(status)
		{
			
			ModelAndView model=new ModelAndView("deletesplit");
			List<Customer>list=iCustomerService.retrieveData();
			model.addObject(customer);
			
			model.addObject("list",list);
			model.addObject("statusdelete1","Record deleted....");
			return model;
			
			
			
		}
		else
		{
			ModelAndView model=new ModelAndView("deletesplit");
			List<Customer>list=iCustomerService.retrieveData();
			model.addObject(customer);
			
			model.addObject("list",list);
			model.addObject("statusdelete1","No entry found....");
			
			return model;

		}
	}
	
	/**********************delete*****************************************************************/


	/**********************delete per row*****************************************************************/
	
	
	/*@RequestMapping("/cretrievedatanew")
	public ModelAndView deleterow1()
	{
		ModelAndView model=new ModelAndView("retrievedatanew");
		List<Customer>list=iCustomerService.retrieveData();
		model.addObject("list",list);
		return model;
	}
	*/
	
	
	
@RequestMapping("/cdelete/{customerCode}")
public ModelAndView deleterow(@PathVariable String customerCode,Customer customer)
{
	ModelAndView view=new ModelAndView("retrievedatanew");
	iCustomerService.deleterow(customerCode);
	List<Customer>list=iCustomerService.retrieveData();
	view.addObject("list",list);
	return view ;
	
}


@RequestMapping("/cretieveAlladsc")
public ModelAndView retieveAllasc(@RequestParam("submit") String submit,@RequestParam("select") String select)
{	
	
	
	List<Customer>list=null;
	
	list=iCustomerService.retrieveData1(select);
	
	
	if(submit.equals("asc"))
	{
	 list=iCustomerService.retrieveData1(select);
	
	
	}
	else if(submit.equals("dsc"))
	{
	list=iCustomerService.retrieveData2(select);
			
		
	}
	
return new ModelAndView("retrievedatanew","list",list);
}




	
}
