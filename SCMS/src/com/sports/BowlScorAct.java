package com.sports;

import java.sql.Connection;

import com.database.Dbcon;

public class BowlScorAct {
	
	Dbcon db = new Dbcon();
	
	private String event_id;
	private String mname;
	private String tname;
	private String pname;
	private String tover;
	private String mover;
	private String wiket;
	private String nball;
	private String wide;
	private String run;
	
	
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
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getTover() {
		return tover;
	}
	public void setTover(String tover) {
		this.tover = tover;
	}
	public String getMover() {
		return mover;
	}
	public void setMover(String mover) {
		this.mover = mover;
	}
	public String getWiket() {
		return wiket;
	}
	public void setWiket(String wiket) {
		this.wiket = wiket;
	}
	public String getNball() {
		return nball;
	}
	public void setNball(String nball) {
		this.nball = nball;
	}
	public String getWide() {
		return wide;
	}
	public void setWide(String wide) {
		this.wide = wide;
	}
	public String getRun() {
		return run;
	}
	public void setRun(String run) {
		this.run = run;
	}
	
	public String execute() {

		Connection conn = null;

		try {
			String sql = "insert into bowlscore values('" + mname + "','" + tname
					+ "','" + pname + "','" + tover + "','" + mover + "','"
					+ wiket + "','" + nball +"','" + wide +"','"
					+ run + "','"+event_id+"')";
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
