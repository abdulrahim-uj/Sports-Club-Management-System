package com.sports.edit;

import java.sql.Connection;
import java.sql.Statement;

import com.database.Dbcon;
import com.opensymphony.xwork2.ActionSupport;

public class UpdateStaffAct extends ActionSupport{
	
	private static final long serialVersionUID = 1L;
	private String staff_id;
	private String name;
	private String email;
	private String adrs;
	private String remail;
	private String mob;
	private String country;
	private String type;
	private String gender;
	private String dob;
	private String exp;
	private String pg;
	private String ug;
	private String hs;
	private String sslc;
	private String des;
	private String activity;
	
	
	private String status;
	
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
	
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	public String execute() throws Exception {
		Connection con = new Dbcon().getConnection();
		
			String query = "update register set name='"+name+"',Address='"+adrs+"',phone='"+mob+"',country='"+country+"',type='"+type+"',gender='"+gender+"',dob='"+dob+"',experiance='"+exp+"',pg='"+pg+"',ug='"+ug+"',hss='"+hs+"',sslc='"+sslc+"',working='"+des+"',activity='"+activity+"' where staff_id="+ staff_id ;  
		
		System.out.println(">>>>>>>>>>>>>"+query);
		Statement st = con.createStatement();
		int ret = st.executeUpdate(query);
		if (ret == 1) {
			status = SUCCESS;
		} else {
			status = ERROR;
		}
		return status;
	}

}
