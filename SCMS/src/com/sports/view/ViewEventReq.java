package com.sports.view;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.database.Dbcon;

public class ViewEventReq {
	
	ArrayList<Requests> list = new ArrayList<Requests>();

	public ArrayList<Requests> getList() {
		return list;
	}

	public void setList(ArrayList<Requests> list) {
		this.list = list;
	}

	public String execute() {
		try {
			String sql = "select * from event where status='1'";
			ResultSet rs = new Dbcon().readData(sql);

			while (rs.next()) {
				Requests user = new Requests();
				
				user.setEvent_id(rs.getString(1));
				user.setMatchnam(rs.getString(2));
				user.setEventnam(rs.getString(3));
				user.setLocation(rs.getString(4));
				user.setTeam(rs.getString(5));
				user.setTeam1(rs.getString(7));
				user.setContact(rs.getString(6));
				user.setContact1(rs.getString(8));
				user.setMtype(rs.getString(9));
				user.setDate(rs.getString(10));
				user.setDate1(rs.getString(11));
				list.add(user);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "success";
	}

}
