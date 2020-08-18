package com.sports.edit;

import java.sql.Connection;

import com.database.Dbcon;
import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;
import com.opensymphony.xwork2.ActionSupport;

public class BookingAct extends ActionSupport{
	
	private static final long serialVersionUID = 1L;
	
	private String event_id;
	private String sdate;
	private String edate;
	private String sname;
	private String ename;
	private String team;
	private String team1;
	
	public String getEvent_id() {
		return event_id;
	}
	public void setEvent_id(String event_id) {
		this.event_id = event_id;
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
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getTeam() {
		return team;
	}
	public void setTeam(String team) {
		this.team = team;
	}
	public String getTeam1() {
		return team1;
	}
	public void setTeam1(String team1) {
		this.team1 = team1;
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
			setTeam(rs.getString(5));
			setTeam1(rs.getString(7));
		}
		return SUCCESS;
		}
	

}
