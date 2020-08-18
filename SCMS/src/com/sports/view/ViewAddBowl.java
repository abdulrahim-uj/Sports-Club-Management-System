package com.sports.view;

import java.sql.Connection;

import com.database.Dbcon;
import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;
import com.opensymphony.xwork2.ActionSupport;

public class ViewAddBowl extends ActionSupport {
	
private static final long serialVersionUID = 1L;
	
	private String event_id;
	private String mname;
	private String tname;
	public String getEvent_id() {
		return event_id;
	}
	public void setEvent_id(String event_id) {
		this.event_id = event_id;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
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
			System.out.println("***********************************"+1);
			setMname(rs.getString(2));
			setTname(rs.getString(5));
			
		}
		return SUCCESS;
		}

}
