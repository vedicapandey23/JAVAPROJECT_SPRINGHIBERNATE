package com.nucleus.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity

public class RoleReg {

	@Id
	/*@GeneratedValue(strategy=GenerationType.AUTO)*/
	private int roleid;
	private String role;
	
	//@JoinTable(name="Role_User_Reg1",joinColumns=@JoinColumn(name="role_id"),inverseJoinColumns=@JoinColumn(name="user_id"))
	@ManyToMany(mappedBy="al")
	private List<UserReg>al;
	
	
	
	public List<UserReg> getAl() {
		return al;
	}
	@Override
	public String toString() {
		return "RoleReg [roleid=" + roleid + ", role=" + role + ", al=" + al + "]";
	}
	public void setAl(List<UserReg> al) {
		this.al = al;
	}
	
	public int getRoleid() {
		return roleid;
	}
	public void setRoleid(int roleid) {
		this.roleid = roleid;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}

	
	
	
	
}

