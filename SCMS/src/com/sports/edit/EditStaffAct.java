package com.sports.edit;

import java.sql.Connection;

import com.database.Dbcon;
import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;
import com.opensymphony.xwork2.ActionSupport;

public class EditStaffAct extends ActionSupport{
	
	private static final long serialVersionUID = 1L;
	private String staff_id;
	
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
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	public String getStaff_id() {
		return staff_id;
	}
	public void setStaff_id(String staff_id) {
		this.staff_id = staff_id;
	}

	
	public String execute() throws Exception {
		
		Connection con = new Dbcon().getConnection();
			
		String query = "select * from register where staff_id="+staff_id;
		System.out.println(query);
		Statement st = (Statement) con.createStatement();
		ResultSet rs = (ResultSet) st.executeQuery(query);
		while (rs.next()) {
			setEmail(rs.getString(1));
			setRemail(rs.getString(2));
			setName(rs.getString(5));
			setAdrs(rs.getString(6));
			setMob(rs.getString(7));
			setCountry(rs.getString(8));
			setType(rs.getString(9));
			setGender(rs.getString(10));
			setDob(rs.getString(11));
			setExp(rs.getString(12));
			setPg(rs.getString(13));
			setUg(rs.getString(14));
			setHs(rs.getString(15));
			setSslc(rs.getString(16));
			setDes(rs.getString(17));
			setActivity(rs.getString(18));
			
				
		}
		return SUCCESS;
		}

}
