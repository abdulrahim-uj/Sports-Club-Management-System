package com.sports.view;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.database.Dbcon;

public class ViewFixture {
	
	ArrayList<Fixture> list1 = new ArrayList<Fixture>();
	
	public ArrayList<Fixture> getList1() {
		return list1;
	}

	public void setList1(ArrayList<Fixture> list1) {
		this.list1 = list1;
	}

	ArrayList<Fixture> list = new ArrayList<Fixture>();

	public ArrayList<Fixture> getList() {
		return list;
	}

	public void setList(ArrayList<Fixture> list) {
		this.list = list;
	}
	
	public String execute() {
		try {
			String sql = "select * from event where status='0'";
			ResultSet rs = new Dbcon().readData(sql);

			while (rs.next()) {
				Fixture user = new Fixture();
				user.setEvent_id(rs.getString(1));
				user.setMatchnam(rs.getString(2));
				user.setEventnam(rs.getString(3));
				user.setLocation(rs.getString(4));
				user.setTeam(rs.getString(5));
				user.setTeam1(rs.getString(7));
				user.setContact(rs.getString(6));
				user.setContact1(rs.getString(8));
				user.setMtype(rs.getString(9));
				user.setSname(rs.getString(13));
				user.setDate(rs.getString(10));
				user.setDate1(rs.getString(11));
				user.setMainump(rs.getString(17));
				user.setLegump(rs.getString(18));
				user.setTheirdump(rs.getString(19));
				user.setMeettime(rs.getString(21));
				list.add(user);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "success";
	}


}
