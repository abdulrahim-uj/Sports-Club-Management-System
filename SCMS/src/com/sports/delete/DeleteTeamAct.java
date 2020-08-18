package com.sports.delete;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.database.Dbcon;
import com.opensymphony.xwork2.ActionSupport;
import com.sports.view.Team;

public class DeleteTeamAct extends ActionSupport{
	
	private static final long serialVersionUID = 1L;
	private String team_id;
	
	private String status;
	
	private ArrayList<Team> list = new ArrayList<Team>();

	public String getTeam_id() {
		return team_id;
	}

	public void setTeam_id(String team_id) {
		this.team_id = team_id;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public ArrayList<Team> getList() {
		return list;
	}

	public void setList(ArrayList<Team> list) {
		this.list = list;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
public String execute() throws Exception{
	
	Connection con = new Dbcon().getConnection();

	String query = "delete from team where team_id="+team_id;
	Statement st = con.createStatement();
	int ret = st.executeUpdate(query);
	
	Connection con1 = new Dbcon().getConnection();
	String query1 = "select * from team";
	Statement stmt1 = con1.createStatement();
	ResultSet rs = stmt1.executeQuery(query1);
	Team team;
	while (rs.next()) {
		team = new Team();
		team.setTeam_id(rs.getString(1));
		team.setCname(rs.getString(2));
		team.setTname(rs.getString(3));
		team.setCaptain(rs.getString(4));
		team.setVcaptain(rs.getString(5));
		System.out.println(">>>"+rs.getString(5));
		team.setEmail(rs.getString(6));
		team.setPh(rs.getString(7));
		team.setM1(rs.getString(9));
		team.setM2(rs.getString(10));
		team.setM3(rs.getString(11));
		team.setM4(rs.getString(12));
		team.setM5(rs.getString(13));
		team.setM6(rs.getString(14));
		team.setM7(rs.getString(15));
		team.setM8(rs.getString(16));
		team.setM9(rs.getString(17));
		
		
		list.add(team);
		
	}
	
	
	return SUCCESS;
}

}
