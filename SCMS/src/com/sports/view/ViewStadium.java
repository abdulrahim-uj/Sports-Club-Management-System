package com.sports.view;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.database.Dbcon;

public class ViewStadium {
	
	ArrayList<Stadium> list = new ArrayList<Stadium>();

	public ArrayList<Stadium> getList() {
		return list;
	}

	public void setList(ArrayList<Stadium> list) {
		this.list = list;
	}

	public String execute() {
		try {
			String sql = "select * from stadium";
			ResultSet rs = new Dbcon().readData(sql);

			while (rs.next()) {
				Stadium user = new Stadium();
				user.setStadium_id(rs.getString(1));
				user.setLocation(rs.getString(3));
				user.setSname(rs.getString(4));
				user.setAdrs(rs.getString(5));
				user.setPtype(rs.getString(6));
				user.setWhether(rs.getString(7));
				user.setTemp(rs.getString(8));
				user.setTseat(rs.getString(9));
				user.setAmount(rs.getString(10));
				list.add(user);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "success";
	}


}
