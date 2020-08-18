package com.sports;

import java.sql.*;

import com.database.Dbcon;

public class Registeract {
	Dbcon db = new Dbcon();
	private String name;
	private String email;
	private String adrs;
	private String remail;
	private String mob;
	private String city;
	private String country;
	private String type;
	private String gender;
	private String dob;
	private String nationality;
	private String exp;
	private String pg;
	private String ug;
	private String hs;
	private String sslc;
	private String des;
	private String activity;
	
	private String password;
	private String repass;


	public String getRemail() {
		return remail;
	}

	public void setRemail(String remail) {
		this.remail = remail;
	}

	public String getMob() {
		return mob;
	}

	public void setMob(String mob) {
		this.mob = mob;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public String getExp() {
		return exp;
	}

	public void setExp(String exp) {
		this.exp = exp;
	}

	public String getPg() {
		return pg;
	}

	public void setPg(String pg) {
		this.pg = pg;
	}

	public String getUg() {
		return ug;
	}

	public void setUg(String ug) {
		this.ug = ug;
	}

	public String getHs() {
		return hs;
	}

	public void setHs(String hs) {
		this.hs = hs;
	}

	public String getSslc() {
		return sslc;
	}

	public void setSslc(String sslc) {
		this.sslc = sslc;
	}

	public String getDes() {
		return des;
	}

	public void setDes(String des) {
		this.des = des;
	}

	public String getActivity() {
		return activity;
	}

	public void setActivity(String activity) {
		this.activity = activity;
	}

	
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRepass() {
		return repass;
	}

	public void setRepass(String repass) {
		this.repass = repass;
	}

	public String execute() {

		Connection conn = null;

		try {
			String sql = "insert into register (email,remail,password,repassword,name,address,phone,country,type,gender,dob,experiance,pg,ug,hss,sslc,working,activity) values ('" + email + "','" + remail
					+ "','" + password + "','" + repass + "','" + name + "','"
					+ adrs + "','" + mob + "','" + country + "','" + type
					+ "','" + gender + "','" + dob + "','" + exp
					+ "','" + pg + "','" + ug + "','" + hs + "','" + sslc
					+ "','" + des + "','" + activity + "')";
			
			String sql1 = "insert into login values('" + email + "','" + repass
					+ "','" + type + "','1')";
			int i=db.insertUpdateDeleteDat(sql);
			int j=db.insertUpdateDeleteData(sql1);
			if(i>0 &&j>0)
			{
				return "success";
			}else
			{
				return "failed";
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (Exception e) {
					System.out.println(e);
				}
			}
		}
		return "success";
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAdrs() {
		return adrs;
	}

	public void setAdrs(String adrs) {
		this.adrs = adrs;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
