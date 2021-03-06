package com.sports.edit;

import java.sql.Connection;

import com.database.Dbcon;
import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;
import com.opensymphony.xwork2.ActionSupport;

public class AddEventResultAct extends ActionSupport{
	
private static final long serialVersionUID = 1L;
	
	private String event_id;
	private String location;
	private String sname;
	private String mtype;
	private String mname;
	private String sdate;
	private String edate;
	private String ename;
	private String tname;
	private String tname1;
	
	public String getEvent_id() {
		return event_id;
	}
	public void setEvent_id(String event_id) {
		this.event_id = event_id;
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
	public String getMtype() {
		return mtype;
	}
	public void setMtype(String mtype) {
		this.mtype = mtype;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getSdate() {
		return sdate;
	}
	public void setSdate(String sdate) {
		this.sdate = sdate;
	}
	public String getEdate() {
		return edate;
	}
	public void setEdate(String edate) {
		this.edate = edate;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getTname1() {
		return tname1;
	}
	public void setTname1(String tname1) {
		this.tname1 = tname1;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
public String execute() throws Exception {
		
		Connection con = new Dbcon().getConnection();
			
		String query = "select * from event where event_id="+event_id;
		System.out.println(query);
		Statement st = (Statement) con.createStatement();
		ResultSet rs = (ResultSet) st.executeQuery(query);
		while (rs.next()) {
			setEvent_id(rs.getString(1));
			setSdate(rs.getString(10));
			setEdate(rs.getString(11));
			setSname(rs.getString(13));
			setEname(rs.getString(3));
			setTname(rs.getString(5));
			setTname1(rs.getString(7));
			setMname(rs.getString(2));
			setMtype(rs.getString(9));
			setLocation(rs.getString(4));
		}
		return SUCCESS;
		}

}
