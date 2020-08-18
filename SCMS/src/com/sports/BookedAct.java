package com.sports;

import java.sql.Connection;

import com.database.Dbcon;

public class BookedAct {
	
	Dbcon db = new Dbcon();
	
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
	
	public String execute() {

		Connection conn = null;

		try {
			String sql = "insert into booked(startdate,enddate,stadiumname,eventname,teamname,teamname1,event_id,state) values('" + sdate + "','" + edate
					+ "','" + sname + "','" + ename + "','" + team + "','"
					+ team1 + "','" + event_id + "','0')";   
		/*	String sql = "update booked(startdate,enddate,stadiumname,eventname,teamname,teamname1,event_id) values('" + sdate + "','" + edate
					+ "','" + sname + "','" + ename + "','" + team + "','"
					+ team1 + "','" + event_id + "') where stadiumname="+sname;*/
			/*String sql = "update booked set startdate='"+sdate+"',enddate='"+edate+"',stadiumname='"+sname+"',eventname='"+ename+"',teamname='"+team+"',teamname1='"+team1+"' where event_id="+event_id;    */   
			String sql1 = "update event set status='2' where event_id =" + event_id;
			int i=db.insertUpdateDeleteDat(sql);
			int j=db.insertUpdateDeleteData(sql1);
			if(i>0 &&j>0)
			{
				return "success";
			}else
			{
				return "failed";
			}

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



