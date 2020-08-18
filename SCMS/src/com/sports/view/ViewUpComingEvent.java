package com.sports.view;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.database.Dbcon;

public class ViewUpComingEvent {
	
	ArrayList<UpComingEvent> list = new ArrayList<UpComingEvent>();

	public ArrayList<UpComingEvent> getList() {
		return list;
	}

	public void setList(ArrayList<UpComingEvent> list) {
		this.list = list;
	}

	public String execute() {
		try {
			String sql = "select * from booked";
			ResultSet rs = new Dbcon().readData(sql);

			while (rs.next()) {
				UpComingEvent user = new UpComingEvent();
				
				user.setTeam(rs.getString(6));
				user.setTeam1(rs.getString(7));
				user.setDate(rs.getString(2));
				user.setDate1(rs.getString(3));
				user.setEname(rs.getString(5));
				user.setSname(rs.getString(4));
				list.add(user);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "success";
	}

}
