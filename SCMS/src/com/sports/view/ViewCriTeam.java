package com.sports.view;

import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.database.Dbcon;

public class ViewCriTeam {
	
	ArrayList<Team> list = new ArrayList<Team>();

	public ArrayList<Team> getList() {
		return list;
	}

	public void setList(ArrayList<Team> list) {
		this.list = list;
	}

	public String execute(){
		
		String REPLY = "team";
		HttpServletRequest http = ServletActionContext.getRequest();
		HttpSession session = http.getSession();
		String username = (String) session.getAttribute("user");
		
		try{
			String sql = "select username from login where username='" + username
					+ "'";
			System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>"+sql);
			String table = "team";

			ResultSet rs = new Dbcon().readData(sql);
			if (rs.next()) {
				if (rs.getString(1).equals("team")) {
					table = "team";
					REPLY = "team";
				}
				//REPLY = "player";
			}
			rs.close();
			sql = "select * from " + table + " where ownername='" + username
					+ "'";
			System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+table);
			ResultSet rsData = new Dbcon().readData(sql);

			while (rsData.next()) {
				
				Team user = new Team();
				System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+user);
				user.setTeam_id(rsData.getString(1));
				user.setCname(rsData.getString(2));
				System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+user.getCname());
				user.setTname(rsData.getString(3));
				user.setCaptain(rsData.getString(4));
				user.setVcaptain(rsData.getString(5));
				
				user.setEmail(rsData.getString(6));
				user.setPh(rsData.getString(7));
				user.setM1(rsData.getString(9));
				user.setM2(rsData.getString(10));
				user.setM3(rsData.getString(11));
				user.setM4(rsData.getString(12));
				user.setM5(rsData.getString(13));
				user.setM6(rsData.getString(14));
				user.setM7(rsData.getString(15));
				user.setM8(rsData.getString(16));
				user.setM9(rsData.getString(17));
				
				list.add(user);
			}
			
			//rsData.close();
			//return "success";



	}
		 catch (Exception e) {
				e.printStackTrace();

}
		return REPLY;
	}
}
