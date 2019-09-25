package com.nucleus.model;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;

@Entity
@Table(name="customerVedica")
public class Customer implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@NotNull
	@Length(min=3,max=10)
	private String customerCode;
	@NotNull
	@Pattern(regexp="^[a-zA-Z0-9\\s]+$") 
	@Length(min=4,max=30)
	private String customerName;
	
	@NotNull
	@Pattern(regexp="^[a-zA-Z0-9\\s!@#$&()\\-`.+,/\"]*$") 
	@Length(min=4,max=100)
	private String customerAddress1;
	
	@NotNull
	@Length(min=4,max=100)
	@Pattern(regexp="^[a-zA-Z0-9\\s!@#$&()\\-`.+,/\"]*$") 
	private String customerAddress2;
	
	@NotNull
	@Pattern(regexp="(^$|[0-9]{6})")
	private String customerPinCode;
	
    @NotNull
	@Email
	private String emailAddress;
	
	@NotNull
	@Pattern(regexp="(^$|[0-9]{10})")
	private String contactNumber;
	@NotNull
	@Length(min=4,max=20)
	@Pattern(regexp="^[a-zA-Z0-9\\s]+$")
	private String primaryContactPerson;
	
	
	private String recordStatus;
	@NotNull
	private String activeInactiveFlag;
	
	private Date createDate;
	private String createdBy;
	private Date modifiedDate;
	private String modifiedBy;
	private Date authorizedDate;
	private String authorizedBy;
	
	public String getCustomerCode() {
		return customerCode;
	}
	public void setCustomerCode(String customerCode) {
		this.customerCode = customerCode;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public String getCustomerAddress1() {
		return customerAddress1;
	}
	public void setCustomerAddress1(String customerAddress1) {
		this.customerAddress1 = customerAddress1;
	}
	public String getCustomerAddress2() {
		return customerAddress2;
	}
	public void setCustomerAddress2(String customerAddress2) {
		this.customerAddress2 = customerAddress2;
	}
	public String getCustomerPinCode() {
		return customerPinCode;
	}
	public void setCustomerPinCode(String customerPinCode) {
		this.customerPinCode = customerPinCode;
	}
	public String getEmailAddress() {
		return emailAddress;
	}
	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}
	public String getContactNumber() {
		return contactNumber;
	}
	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}
	public String getPrimaryContactPerson() {
		return primaryContactPerson;
	}
	public void setPrimaryContactPerson(String primaryContactPerson) {
		this.primaryContactPerson = primaryContactPerson;
	}
	public String getRecordStatus() {
		return recordStatus;
	}
	public void setRecordStatus(String recordStatus) {
		this.recordStatus = recordStatus;
	}
	public String getActiveInactiveFlag() {
		return activeInactiveFlag;
	}
	public void setActiveInactiveFlag(String activeInactiveFlag) {
		this.activeInactiveFlag = activeInactiveFlag;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public String getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}
	public Date getModifiedDate() {
		return modifiedDate;
	}
	public void setModifiedDate(Date modifiedDate) {
		this.modifiedDate = modifiedDate;
	}
	public String getModifiedBy() {
		return modifiedBy;
	}
	public void setModifiedBy(String modifiedBy) {
		this.modifiedBy = modifiedBy;
	}
	public Date getAuthorizedDate() {
		return authorizedDate;
	}
	public void setAuthorizedDate(Date authorizedDate) {
		this.authorizedDate = authorizedDate;
	}
	public String getAuthorizedBy() {
		return authorizedBy;
	}
	public void setAuthorizedBy(String authorizedBy) {
		this.authorizedBy = authorizedBy;
	}
	
	
	
	
}
