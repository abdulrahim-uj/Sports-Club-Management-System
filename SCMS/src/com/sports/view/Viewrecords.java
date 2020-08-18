package com.sports.view;

import java.sql.*;
import java.util.*;

import com.database.Dbcon;

public class Viewrecords {
	
	ArrayList<User> list = new ArrayList<User>();

	public ArrayList<User> getList() {
		return list;
	}

	public void setList(ArrayList<User> list) {
		this.list = list;
	}

	public String execute() {
		try {
			String sql = "select * from previous";
			ResultSet rs = new Dbcon().readData(sql);

			while (rs.next()) {
				User user = new User();
				user.setType(rs.getString(1));
				user.setSname(rs.getString(2));
				user.setAdrs(rs.getString(3));
				user.setMtype(rs.getString(4));
				user.setMtime(rs.getString(5));
				user.setPtype(rs.getString(6));
				user.setWhether(rs.getString(7));
				user.setTemp(rs.getString(8));
				user.setTeam(rs.getString(9));
				user.setTeam1(rs.getString(10));
				user.setMainumpr(rs.getString(11));
				user.setStime(rs.getString(14));
				user.setMtime1(rs.getString(15));
				user.setResult(rs.getString(16));
				list.add(user);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "success";
	}

}
/*import java.sql.*;
import java.util.*;

import com.database.Dbcon;

public class Viewrecords {
	ArrayList<User> list = new ArrayList<User>();

	public ArrayList<User> getList() {
		return list;
	}

	public void setList(ArrayList<User> list) {
		this.list = list;
	}

	public String execute() {
		try {
			String sql = "select * from previous";
			ResultSet rs = new Dbcon().readData(sql);

			while (rs.next()) {
				User user = new User();
				user.setType(rs.getString(1));
				user.setSname(rs.getString(2));
				user.setAdrs(rs.getString(3));
				user.setMtype(rs.getString(4));
				user.setMtime(rs.getString(5));
				user.setPtype(rs.getString(6));
				user.setWhether(rs.getString(7));
				user.setTemp(rs.getString(8));
				user.setTeam(rs.getString(9));
				user.setTeam1(rs.getString(10));
				user.setMainumpr(rs.getString(11));
				user.setStime(rs.getString(14));
				user.setMtime1(rs.getString(15));
				user.setResult(rs.getString(16));
				list.add(user);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "success";
	}
}*/