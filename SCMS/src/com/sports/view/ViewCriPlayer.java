package com.sports.view;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.database.Dbcon;

public class ViewCriPlayer {
	


	ArrayList<CriPlayer> list = new ArrayList<CriPlayer>();

	public ArrayList<CriPlayer> getList() {
		return list;
	}

	public void setList(ArrayList<CriPlayer> list) {
		this.list = list;
	}
	
	public String execute() {
		try {
			String sql = "select * from player";
			ResultSet rs = new Dbcon().readData(sql);

			while (rs.next()) {
				CriPlayer user = new CriPlayer();
				user.setPlayer_id(rs.getString(1));
				user.setPname(rs.getString(3));
				user.setAdrs(rs.getString(4));
				user.setEmail(rs.getString(5));
				user.setPh(rs.getString(6));
				user.setCountry(rs.getString(7));
				user.setGender(rs.getString(8));
				user.setDob(rs.getString(9));
				user.setSpecified(rs.getString(10));
				user.setBatposition(rs.getString(11));
				user.setStyle(rs.getString(12));
				user.setHand(rs.getString(13));
				user.setBowlstyle(rs.getString(14));
				user.setMentality(rs.getString(15));
				user.setFposition(rs.getString(16));
				list.add(user);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "success";
	}

}
