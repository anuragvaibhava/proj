package com.lti.airline.model;

import java.nio.charset.StandardCharsets;
import java.util.Base64;

import javax.persistence.*;

@Entity
@Table(name="users") // name of table in DB
public class User {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO,generator="user_id")
	@SequenceGenerator(name="user_id", sequenceName="userid",allocationSize=1)
	
	private String fname;
	private String lname;
	private String gender;
	private String email,password;
	private int userid;
	private String phoneNum;
	
	
	public String getFname() {
		return fname;
	}
	
	public void setFname(String fname) {
		this.fname = fname;
	}
	
	public String getLname() {
		return lname;
	}
	
	public void setLname(String lname) {
		this.lname = lname;
	}
	
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	
	public String getEmail() {
		return email;
	}
	
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	public String getPassword() {
		return password;
	}
	
	
	public void setPassword(String password) {
		
		Base64.Encoder encoder=  Base64.getEncoder();
		String normalString= password;
		String encodedString=encoder.encodeToString(normalString.getBytes(StandardCharsets.UTF_8));
		this.password=encodedString;
		
	}
	
	
	public int getUserid() {
		return userid;
	}
	
	public void setUserid(int userid) {
		this.userid = userid;
	}
	
	
	public String getPhoneNum() {
		return phoneNum;
	}
	
	
	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}

	@Override
	public String toString() {
		return "User [fname=" + fname + ", lname=" + lname + ", gender=" + gender + ", email=" + email + ", password="
				+ password + ", userid=" + userid + ", phoneNum=" + phoneNum + "]";
	}
	
	
	
	
	

}
