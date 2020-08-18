package com.sports.edit;

import java.sql.Connection;
import java.sql.Statement;

import com.database.Dbcon;
import com.opensymphony.xwork2.ActionSupport;

public class BookingAct1 extends ActionSupport{
	
	private static final long serialVersionUID = 1L;
	
	private String booked_id;
	public String getBooked_id() {
		return booked_id;
	}
	public void setBooked_id(String booked_id) {
		this.booked_id = booked_id;
	}

	private String event_id;
	private String sdate;
	private String edate;
	private String sname;
	private String ename;
	private String team;
	private String team1;
	
	private String status;
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
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
		
		String sql = "update booked set startdate='"+sdate+"',enddate='"+edate+"',stadiumname='"+sname+"',eventname='"+ename+"',teamname='"+team+"',teamname1='"+team1+"' where stadiumname="+sname;
		
		System.out.println(">>>>>>>>>>>>>"+sql);
		Statement st = con.createStatement();
		int ret = st.executeUpdate(sql);
		if (ret == 1) {
			status = SUCCESS;
		} else {
			status = ERROR;
		}
		return status;
	}
	}


