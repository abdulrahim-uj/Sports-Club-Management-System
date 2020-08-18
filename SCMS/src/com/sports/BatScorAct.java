package com.sports;

import java.sql.Connection;

import com.database.Dbcon;

public class BatScorAct {
	
	Dbcon db = new Dbcon();
	
	private String event_id;
	private String mname;	
	private String tname;
	private String pname;
	private String mdismis;
	private String bowler;
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
	public String getMdismis() {
		return mdismis;
	}
	public void setMdismis(String mdismis) {
		this.mdismis = mdismis;
	}
	public String getBowler() {
		return bowler;
	}
	public void setBowler(String bowler) {
		this.bowler = bowler;
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
			String sql = "insert into batscore values('" + mname + "','" + tname
					+ "','" + pname + "','" + mdismis + "','" + bowler + "','"
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
