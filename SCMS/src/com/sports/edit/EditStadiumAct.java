package com.sports.edit;

import java.sql.Connection;

import com.database.Dbcon;
import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;
import com.opensymphony.xwork2.ActionSupport;

public class EditStadiumAct extends ActionSupport{
	
	private static final long serialVersionUID = 1L;
	private String stadium_id;
	private String location;
	private String sname;
	private String adrs;
	private String ptype;
	private String whether;
	private String temp;
	private String tseat;
	private String amount;
	
	public String getStadium_id() {
		return stadium_id;
	}
	public void setStadium_id(String stadium_id) {
		this.stadium_id = stadium_id;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getAdrs() {
		return adrs;
	}
	public void setAdrs(String adrs) {
		this.adrs = adrs;
	}
	public String getPtype() {
		return ptype;
	}
	public void setPtype(String ptype) {
		this.ptype = ptype;
	}
	public String getWhether() {
		return whether;
	}
	public void setWhether(String whether) {
		this.whether = whether;
	}
	public String getTemp() {
		return temp;
	}
	public void setTemp(String temp) {
		this.temp = temp;
	}
	public String getTseat() {
		return tseat;
	}
	public void setTseat(String tseat) {
		this.tseat = tseat;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	public String execute() throws Exception {
	
	Connection con = new Dbcon().getConnection();
		
	String query = "select * from stadium where stadium_id="+stadium_id;
	System.out.println(query);
	Statement st = (Statement) con.createStatement();
	ResultSet rs = (ResultSet) st.executeQuery(query);
	while (rs.next()) {
		setLocation(rs.getString(3));
		setSname(rs.getString(4));
		setAdrs(rs.getString(5));
		setPtype(rs.getString(6));
		setWhether(rs.getString(7));
		setTemp(rs.getString(8));
		setTseat(rs.getString(9));
		setAmount(rs.getString(10));
		
		
		
	}
	return SUCCESS;
	}
	

}
