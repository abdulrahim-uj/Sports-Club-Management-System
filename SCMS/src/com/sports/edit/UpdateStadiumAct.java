package com.sports.edit;

import java.sql.Connection;
import java.sql.Statement;

import com.database.Dbcon;
import com.opensymphony.xwork2.ActionSupport;

public class UpdateStadiumAct extends ActionSupport {

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
	
	private String status;

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

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String execute() throws Exception {
		Connection con = new Dbcon().getConnection();
		
			String query = "update stadium set location='"+location+"',stadiumname='"+sname+"',address='"+adrs+"',pitchtype='"+ptype+"',whether='"+whether+"',temprature='"+temp+"',totalseats='"+tseat+"',amount='"+amount+"' where stadium_id=" + stadium_id;  
	/*	String query = "update stadium set 'location,'sname,'adrs,'ptype,'whether,'temperature,amount values ('"
					+ location
					+ "','"
					+ sname
					+ "','"
					+ adrs
					+ "','"
					+ ptype
					+ "','"
					+ whether
					+ "','"
					+ temp
					+ "','"
					+ amount + "' where stadium_id = "+ stadium_id +")";   */
		
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
