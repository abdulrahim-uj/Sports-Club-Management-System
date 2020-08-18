package com.sports;

import java.sql.Connection;
import java.sql.Statement;

import com.database.Dbcon;
import com.opensymphony.xwork2.ActionSupport;

public class EventApproveAct extends ActionSupport{
	
	private static final long serialVersionUID = 1L;

	

	private String sname1;
	
	public String getSname1() {
		return sname1;
	}
	public void setSname1(String sname1) {
		this.sname1 = sname1;
	}


	private String event_id;
	private String sname;
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}


	private String ump1;
	private String ump2;
	private String ump3;
	private String meettime;
	
	
	public String getEvent_id() {
		return event_id;
	}
	public void setEvent_id(String event_id) {
		this.event_id = event_id;
	}
	public String getUmp1() {
		return ump1;
	}
	public void setUmp1(String ump1) {
		this.ump1 = ump1;
	}
	public String getUmp2() {
		return ump2;
	}
	public void setUmp2(String ump2) {
		this.ump2 = ump2;
	}
	public String getUmp3() {
		return ump3;
	}
	public void setUmp3(String ump3) {
		this.ump3 = ump3;
	}
	public String getMeettime() {
		System.out.println(meettime);
		return meettime;
		
	}
	public void setMeettime(String meettime) {
		this.meettime = meettime;
	}
	
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	public String execute() throws Exception {
		Connection con = new Dbcon().getConnection();
		String sname1=sname;
		setSname1("+sname+");		
			String query = "update event set stadiumname='"+sname+"',mainumpaire='"+ ump1 +"',legumpaire='"+ ump2 +"',theirdumpaire='"+ ump3 +"',meettime='"+ meettime +"',status='0' where event_id =" + event_id;
			String sql1= "update booked,event set booked.state = '1' where booked.stadiumname='"+sname+"'";
		// String query = "update event, booked set booked.state='0',event.stadiumname='"+sname+"',event.mainumpaire='"+ ump1 +"',event.legumpaire='"+ ump2 +"',event.theirdumpaire='"+ ump3 +"',event.meettime='"+ meettime +"',event.status='0' where event.event_id =" + event_id +" and "+sname1+"=booked.stadiumname";
		System.out.println(">>>>>>>>>>>>>"+query);
		System.out.println(">>>>>>>>>>>>>"+sql1);
		Statement st = con.createStatement();
		int ret = st.executeUpdate(query);
		int ret1 = st.executeUpdate(sql1);
		String status;
		if (ret == 1) {
			status = SUCCESS;
		} else {
			status = ERROR;
		}
		return status;
	}

}
