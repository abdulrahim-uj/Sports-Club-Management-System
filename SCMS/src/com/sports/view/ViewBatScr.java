package com.sports.view;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.database.Dbcon;
import com.sports.view.ViewBat;

public class ViewBatScr {
	
	ArrayList<ViewBat> list1 = new ArrayList<ViewBat>();
	
	public ArrayList<ViewBat> getList1() {
		return list1;
	}

	public void setList1(ArrayList<ViewBat> list1) {
		this.list1 = list1;
	}

	ArrayList<ViewBat> list = new ArrayList<ViewBat>();

	public ArrayList<ViewBat> getList() {
		return list;
	}

	public void setList(ArrayList<ViewBat> list) {
		this.list = list;
	}
	
	public String execute() {
		try {
			String sql = "select * from batscore";
			ResultSet rs = new Dbcon().readData(sql);

			while (rs.next()) {
				ViewBat user = new ViewBat();
				user.setMname(rs.getString(1));
				user.setTname(rs.getString(2));
				user.setPname(rs.getString(3));
				user.setMdismis(rs.getString(4));
				user.setBowler(rs.getString(5));
				user.setRun(rs.getString(6));
				list.add(user);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "success";
	}


}
