package com.sports.modify;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.database.Dbcon;



public class ViewCriModif {
	
	ArrayList<ViewCri> list = new ArrayList<ViewCri>();

	ArrayList<ViewCri> getList() {
		return list;
	}

	void setList(ArrayList<ViewCri> list) {
		this.list = list;
	}
	
	
	public String execute() {
		try {
			String sql = "select * from player";
			ResultSet rs = new Dbcon().readData(sql);

			while (rs.next()) {
				ViewCri user = new ViewCri();
				user.setPlayer_id(rs.getString(1));
				user.setPname(rs.getString(3));
				user.setSpecified(rs.getString(10));
				list.add(user);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "success";
	}

}
