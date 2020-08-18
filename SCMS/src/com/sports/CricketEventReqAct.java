package com.sports;

import java.sql.Connection;

import com.database.Dbcon;

public class CricketEventReqAct {
	
	Dbcon db = new Dbcon();
	
	

	private String cricketename;
	private String location;
	private String sname;
	private String team;
	private String team1;
	private String contact;
	private String contact1;
	private String mtype;
	private String date;
	private String date1;
	private String daynight;
	private String mtime;
	private String cricketmname;
	
	public String getCricketename() {
		return cricketename;
	}
	public void setCricketename(String cricketename) {
		this.cricketename = cricketename;
	}
	public String getCricketmname() {
		return cricketmname;
	}
	public void setCricketmname(String cricketmname) {
		this.cricketmname = cricketmname;
	}
	public String getDaynight() {
		return daynight;
	}
	public void setDaynight(String daynight) {
		this.daynight = daynight;
		System.out.println(">>>>>>>>"+daynight);
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
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getContact1() {
		return contact1;
	}
	public void setContact1(String contact1) {
		this.contact1 = contact1;
	}
	public String getMtype() {
		return mtype;
	}
	public void setMtype(String mtype) {
		this.mtype = mtype;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getDate1() {
		return date1;
	}
	public void setDate1(String date1) {
		this.date1 = date1;
	}
	public String getMtime() {
		return mtime;
	}
	public void setMtime(String mtime) {
		this.mtime = mtime;
	}
	
	public String execute() {

		Connection conn = null;

		try {
			String sql = "insert into event (matchname,eventname,location,team1,email1,team2,eamil2,eventtype,startdate,enddate,matchmode,stadiumname,address,totalseat,amount,mainumpaire,legumpaire,theirdumpaire,matchtime,meettime,pitchtype,whether,temperature,status,win,winrun,fail,failrun) values ('"+cricketmname+"','"+cricketename+"','" + location + "','" + team + "','" + contact + "','" + team1 + "','"
					+ contact1 + "','" + mtype + "','" + date + "','"
					+ date1 + "','"+daynight+"','"+""+"','"+""+"','"+""+"','"+""+"','"+""+"','"+""+"','"+""+"','" + mtime + "','"+""+"','"+""+"','"+""+"','"+""+"','1','"+"','"+"','"+"','"+"')";
		System.out.println("sql>>>>>"+sql);
			db.insertUpdateDeleteDat(sql);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (Exception e) {
					System.out.println(e);
				}
			}
		}
		return "success";
	}
	

	
}
