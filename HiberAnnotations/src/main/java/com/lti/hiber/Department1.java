package com.lti.hiber;

import java.util.List;

import javax.persistence.*;

@Entity
@Table(name="dept100")
public class Department1 {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int did;
	
	private String dname;
	
	@OneToMany(cascade=CascadeType.ALL)
	@JoinColumn(name="deptId")
	@OrderColumn(name="type")	
	private List<Employee1> employee;
	
	
	public List<Employee1> getEmployee() {
		return employee;
	}
	public void setEmployee(List<Employee1> employee) {
		this.employee = employee;
	}
	
	public int getDid() {
		return did;
	}
	public void setDid(int did) {
		this.did = did;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	
	

}
