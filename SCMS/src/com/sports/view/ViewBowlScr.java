package com.sports.view;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.database.Dbcon;

public class ViewBowlScr {
	
ArrayList<ViewBowl> list1 = new ArrayList<ViewBowl>();
	
	public ArrayList<ViewBowl> getList1() {
		return list1;
	}

	public void setList1(ArrayList<ViewBowl> list1) {
		this.list1 = list1;
	}

	ArrayList<ViewBowl> list = new ArrayList<ViewBowl>();

	public ArrayList<ViewBowl> getList() {
		return list;
	}

	public void setList(ArrayList<ViewBowl> list) {
		this.list = list;
	}
	
	public String execute() {
		try {
			String sql = "select * from bowlscore";
			ResultSet rs = new Dbcon().readData(sql);

			while (rs.next()) {
				ViewBowl user = new ViewBowl();
				user.setMname(rs.getString(1));
				user.setTname(rs.getString(2));
				user.setPname(rs.getString(3));
				user.setTover(rs.getString(4));
				user.setMover(rs.getString(5));
				user.setWiket(rs.getString(6));
				user.setNball(rs.getString(7));
				user.setWide(rs.getString(8));
				user.setRun(rs.getString(9));
				list.add(user);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "success";
	}

}
