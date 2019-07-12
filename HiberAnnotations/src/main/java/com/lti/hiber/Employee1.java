package com.lti.hiber;
import javax.persistence.*;

@Entity
@Table(name="emp100")

public class Employee1 {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int eid;
	
	private String ename;
	private String designation;

		
	public int getEid() {
		return eid;
	}
	public void setEid(int eid) {
		this.eid = eid;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}

	
	

}
