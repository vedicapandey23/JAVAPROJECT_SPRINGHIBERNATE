package com.nucleus.utility;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.nucleus.model.Customer;



public class CustomerRowMapper implements RowMapper<Customer> {

	@Override
	public Customer mapRow(ResultSet rs, int row) throws SQLException {
		Customer cust=new Customer();
		cust.setCustomerCode(rs.getString(2));
		cust.setCustomerName(rs.getString(3));
		cust.setCustomerAddress1(rs.getString(4));
		cust.setCustomerAddress2(rs.getString(5));
		cust.setCustomerPinCode(rs.getString(6));
		cust.setEmailAddress(rs.getString(7));
		cust.setContactNumber(rs.getString(8));
		cust.setPrimaryContactPerson(rs.getString(9));
		cust.setRecordStatus(rs.getString(10));
		cust.setActiveInactiveFlag(rs.getString(11));
		cust.setCreateDate(rs.getDate(12));
		cust.setCreatedBy(rs.getString(13));
		cust.setModifiedDate(rs.getDate(14));
		cust.setModifiedBy(rs.getString(15));
		cust.setAuthorizedDate(rs.getDate(16));
		cust.setAuthorizedBy(rs.getString(17));
		
		return cust;
	}

}
