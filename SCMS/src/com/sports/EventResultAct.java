package com.sports;

import java.sql.Connection;
import java.sql.Statement;

import com.database.Dbcon;
import com.opensymphony.xwork2.ActionSupport;

public class EventResultAct extends ActionSupport{
	
	Dbcon db = new Dbcon();
	
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
	
	private String win;
	private String winrun;
	private String fail;
	private String failrun;
	
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
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
	public String getWin() {
		return win;
	}
	public void setWin(String win) {
		this.win = win;
	}
	public String getWinrun() {
		return winrun;
	}
	public void setWinrun(String winrun) {
		this.winrun = winrun;
	}
	public String getFail() {
		return fail;
	}
	public void setFail(String fail) {
		this.fail = fail;
	}
	public String getFailrun() {
		return failrun;
	}
	public void setFailrun(String failrun) {
		this.failrun = failrun;
	}
	

	public String execute() throws Exception {
		Connection con = new Dbcon().getConnection();
		
			String query = "update event set location='"+location+"',stadiumname='"+sname+"',startdate='"+ sdate +"',enddate='"+ edate +"',eventtype='"+ mtype +"',matchname='"+ mname +"',team1='"+tname+"',team2='"+tname1+"',win='"+win+"',winrun='"+winrun+"',fail='"+fail+"',failrun='"+failrun+"', status='3' where event_id =" + event_id;  
		
		System.out.println(">>>>>>>>>>>>>"+query);
		Statement st = con.createStatement();
		int ret = st.executeUpdate(query);
		String status;
		if (ret == 1) {
			status = SUCCESS;
		} else {
			status = ERROR;
		}
		return status;
	}
}
