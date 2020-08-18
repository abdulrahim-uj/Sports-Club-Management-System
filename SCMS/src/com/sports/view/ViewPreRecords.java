package com.sports.view;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.database.Dbcon;

public class ViewPreRecords {
	
	private String win;
	private String fail;
	
	
	public String getWin() {
		return win;
	}

	public void setWin(String win) {
		this.win = win;
	}

	public String getFail() {
		return fail;
	}

	public void setFail(String fail) {
		this.fail = fail;
	}

	ArrayList<Approved> list = new ArrayList<Approved>();

	public ArrayList<Approved> getList() {
		return list;
	}

	public void setList(ArrayList<Approved> list) {
		this.list = list;
	}
	
	public String execute() {
		try {
			String sql = "select * from event where status = '3'";
			ResultSet rs = new Dbcon().readData(sql);

			while (rs.next()) {
				Approved user = new Approved();
				
				user.setEvent_id(rs.getString(1));
				user.setMatchname(rs.getString(2));
				user.setEventname(rs.getString(3));
				user.setLocation(rs.getString(4));
				System.out.println(">>>"+rs.getString(4));
				user.setTeam(rs.getString(5));
				user.setTeam1(rs.getString(7));
				user.setContact(rs.getString(6));
				user.setContact1(rs.getString(8));
				user.setMtype(rs.getString(9));
				user.setDate(rs.getString(10));
				user.setDate1(rs.getString(11));
				user.setStadiumname(rs.getString(13));
				user.setUmpaire1(rs.getString(17));
				user.setUmpaire2(rs.getString(18));
				user.setUmpaire3(rs.getString(19));
				user.setMeettime(rs.getString(21));
				setWin(rs.getString(26));
				setFail(rs.getString(28));
				
				list.add(user);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "success";
	}

}
