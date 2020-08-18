package com.sports.view;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.database.Dbcon;

public class ViewCriTeam1 {
	
	ArrayList<Team> list = new ArrayList<Team>();

	public ArrayList<Team> getList() {
		return list;
	}

	public void setList(ArrayList<Team> list) {
		this.list = list;
	}

	public String execute() {
		try {
			System.out.println(">>>>>>>>inside>>>>>>>>>>>>>>>>>>>>>>");
			String sql = "select * from team";
			
			ResultSet rs = new Dbcon().readData(sql);

			while (rs.next()) {
				
				Team user = new Team();
				//System.out.println(">>>"+rs.getString(1));
				user.setTeam_id(rs.getString(1));
				user.setCname(rs.getString(2));
				user.setTname(rs.getString(3));
				user.setCaptain(rs.getString(4));
				user.setVcaptain(rs.getString(5));
				System.out.println(">>>"+rs.getString(5));
				user.setEmail(rs.getString(6));
				user.setPh(rs.getString(7));
				user.setM1(rs.getString(9));
				user.setM2(rs.getString(10));
				user.setM3(rs.getString(11));
				user.setM4(rs.getString(12));
				user.setM5(rs.getString(13));
				user.setM6(rs.getString(14));
				user.setM7(rs.getString(15));
				user.setM8(rs.getString(16));
				user.setM9(rs.getString(17));
				
				list.add(user);
				System.out.println("llllllllllllllllllllllllll"+list);
			}
			for (int i = 0; i < list.size(); i++) {
				
				String s=list.get(i).getCaptain()+list.get(i).getM7();
				System.out.println(s);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "success";
	}

}
