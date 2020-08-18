package com.sports.delete;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.database.Dbcon;
import com.opensymphony.xwork2.ActionSupport;
import com.sports.view.Stadium;

public class DeleteStadiumAct extends ActionSupport{
	
	private static final long serialVersionUID = 1L;
	private String stadium_id;
	
	private String status;
	
	private ArrayList<Stadium> list = new ArrayList<Stadium>();
	
	public String getStadium_id() {
		return stadium_id;
	}

	public void setStadium_id(String stadium_id) {
		this.stadium_id = stadium_id;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	
	public ArrayList<Stadium> getList() {
		return list;
	}

	public void setList(ArrayList<Stadium> list) {
		this.list = list;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	public String execute() throws Exception {
		
		Connection con = new Dbcon().getConnection();

		String query = "delete from stadium where stadium_id="+stadium_id;
		Statement st = con.createStatement();
		int ret = st.executeUpdate(query);
		
		Connection con1 = new Dbcon().getConnection();
		String query1 = "select * from stadium";
		Statement stmt1 = con1.createStatement();
		ResultSet rs = stmt1.executeQuery(query1);
		Stadium stadium;
		while (rs.next()) {
			stadium = new Stadium();
			stadium.setStadium_id(rs.getString(1));
			stadium.setLocation(rs.getString(3));
			stadium.setSname(rs.getString(4));
			stadium.setAdrs(rs.getString(5));
			stadium.setPtype(rs.getString(6));
			stadium.setWhether(rs.getString(7));
			stadium.setTemp(rs.getString(8));
			stadium.setTseat(rs.getString(9));
			stadium.setAmount(rs.getString(10));
			
			list.add(stadium);
			
		}
		
		
		return SUCCESS;
	}



}
