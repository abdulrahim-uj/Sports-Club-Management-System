package com.sports.view;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.database.Dbcon;

public class ViewStaff {
	
	ArrayList<Staff> list = new ArrayList<Staff>();

	public ArrayList<Staff> getList() {
		return list;
	}

	public void setList(ArrayList<Staff> list) {
		this.list = list;
	}

	public String execute() {
		try {
			String sql = "select * from register";
			ResultSet rs = new Dbcon().readData(sql);

			while (rs.next()) {
				Staff user = new Staff();
				
				user.setStaff_id(rs.getString(19));
				user.setAdrs(rs.getString(6));
				user.setCountry(rs.getString(8));
				user.setDob(rs.getString(11));
				user.setEmail(rs.getString(1));
				user.setGender(rs.getString(10));
				user.setMob(rs.getString(7));
				user.setName(rs.getString(5));
				
				
				user.setType(rs.getString(9));
				list.add(user);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "success";
	}

}
