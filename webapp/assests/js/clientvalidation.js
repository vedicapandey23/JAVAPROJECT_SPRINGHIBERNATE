var ccode=document.getElementByName("customerCode").value;
var cname=document.getElementByName("customerName").value;
var address1=document.getElementByName("customerAddress1").value;
var address2=document.getElementByName("customerAddress2").value;
var pincode=document.getElementByName("customerPinCode").value;
var email=document.getElementByName("customeremail").value;
var cnum=document.getElementByName("contactnumber").value;
var person=document.getElementByName("primaryContactPerson").value;


function qwerty(){
	debugger;
	var cust_code_len=$("#cust_code").val().length;

   
	var cust_name_len=$("#cust_name").val().length;
	var cust_add1_len=$("#cust_add1").val().length;
	var cust_add2_len=$("#cust_add2").val().length;
	var cust_pin_len=$("#cust_pin").val().length;
	var email_len=$("#cust_email").val().length;
	var cont_num_len=$("#cont_num").val().length;
	var Per_len=$("#cont_Per").val().length;
   
    if(cust_code_len==0)
    {
    	alert("Customer Code can't be empty");
    	return false;
    	
    } 
    else if(cust_name_len==0)
    {
    	alert("Customer Customer Name can't be empty");
        return false;
    } 
    else if(cust_add1_len==0)
    {
    	alert("Customer Address1 can't be empty");
        return false;
    }
    else if(cust_add2_len==0)
    {
    	alert("Customer Address2 can't be empty");
        return false;
    }
    else if(cust_pin_len==0)
    {
    	alert("Customer Pincode can't be empty");
        return false;
    }
    else if(email_len==0)
    {
    	alert("Email can't be empty");
        return false;
    }
    else if(cont_num_len==0)
    {
    	alert("Contact Number can't be empty");
        return false;
    }
    else if(Per_len==0)
    {
    	alert("Customer Person can't be empty");
        return false;
    }
	
	
   
     specialCharacter(cname);
    //validateEmail();
	
	
}

function myFunction(){
	debugger;
     var cust_code_len=$("#cust_code").val().length;


     

     if(cust_code_len>10)
     {
     	$("#cust_length").show();
     }
     else
     {
     	$("#cust_length").hide();
     }  

     var cust_name_len=$("#cust_name").val().length;
     if(cust_name_len>30)
     {
     	$("#cust_name_len").show();
     }
     else
     {
     	$("#cust_name_len").hide();
     } 

     var cust_add1_len=$("#cust_add1").val().length;
     if(cust_add1_len>100)
     {
     	$("#cust_add1_len").show();
     }
     else
     {
     	$("#cust_add1_len").hide();
     } 

     var cust_add2_len=$("#cust_add2").val().length;
     if(cust_add2_len>100)
     {
     	$("#cust_add2_len").show();
     }
     else
     {
     	$("#cust_add2_len").hide();
     } 

     var cust_pin_len=$("#cust_pin").val().length;
     if(cust_pin_len>6)
     {
     	$("#cust_pin_len").show();
     }
     else
     {
     	$("#cust_pin_len").hide();
     } 

     var email_len=$("#cust_email").val().length;
     if(email_len>100)
     {
     	$("#email_len").show();
     }
     else
     {
     	$("#email_len").hide();
     } 

     var cont_num_len=$("#cont_num").val().length;
     if(cont_num_len>20)
     {
     	$("#cont_num_len").show();
     }
     else
     {
     	$("#cont_num_len").hide();
     } 

     var Per_len=$("#cont_Per").val().length;
     if(Per_len>100)
     {
     	$("#Per_len").show();
     }
     else
     {
     	$("#Per_len").hide();
     } 


}






function validateEmail()
{
var email=document.getElementByName("customeremail").value;

 var reg = /^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/
 if (reg.test(email)){
 return true; }
 else{
 return false;
 }
} 



function dataLength(str,len)
{
	var length=str.length();
	if(length<len)
		{
		return true;
		}
	else
		{
		return false;
		}
}

function emailvalidation(email_verify)
{
	var atposition=email_verify.indexOf("@");  
	var dotposition=email_verify.lastIndexOf(".");  
	if (atposition<1 || dotposition<atposition+2 || dotposition+2>=email_verify.length){  
	
	  return false;
	}
	else
		{
		return false;
		}
}

function specialCharacter(str)
{
	var regex = /^[A-Za-z0-9 ]+$/;
	var isValid = regex.test(str);
	if(!isValid)
		{
		return false;
		}
	else
		{
		return true;
		}
	
}

function mandatory()
{
	
}


document.getElementByName("create").addEventListener("click",myfunc);
function myfunc()
{

	
	
}