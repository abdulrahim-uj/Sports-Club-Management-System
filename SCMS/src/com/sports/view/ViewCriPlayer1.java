package com.sports.view;

import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.database.Dbcon;

public class ViewCriPlayer1 {
	
	ArrayList<CriPlayer> list = new ArrayList<CriPlayer>();

	public ArrayList<CriPlayer> getList() {
		return list;
	}

	public void setList(ArrayList<CriPlayer> list) {
		this.list = list;
	}

	public String execute(){
		String REPLY = "player";
		HttpServletRequest http = ServletActionContext.getRequest();
		HttpSession session = http.getSession();
		String username = (String) session.getAttribute("user");
		
		try{
			String sql = "select username from login where username='" + username
					+ "'";
			System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>"+sql);
			String table = "player";

			ResultSet rs = new Dbcon().readData(sql);
			if (rs.next()) {
				if (rs.getString(1).equals("player")) {
					table = "player";
					REPLY = "player";
				}
				//REPLY = "player";
			}
			rs.close();
			sql = "select * from " + table + " where ownername='" + username
					+ "'";
			System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+table);
			ResultSet rsData = new Dbcon().readData(sql);

			while (rsData.next()) {
				
				CriPlayer user = new CriPlayer();
				System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+user);
				user.setPlayer_id(rsData.getString(1));
				user.setPname(rsData.getString(3));
				user.setAdrs(rsData.getString(4));
				System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>.."+user.getPlayer_id());
				user.setEmail(rsData.getString(5));
				user.setPh(rsData.getString(6));
				user.setCountry(rsData.getString(7));
				user.setGender(rsData.getString(8));
				user.setDob(rsData.getString(9));
				user.setSpecified(rsData.getString(10));
				user.setBatposition(rsData.getString(11));
				user.setStyle(rsData.getString(12));
				user.setHand(rsData.getString(13));
				user.setBowlstyle(rsData.getString(14));
				user.setMentality(rsData.getString(15));
				user.setFposition(rsData.getString(16));
				System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+user.getFposition());
				list.add(user);
			}
			
	//	rsData.close();
			//return "success";

		} catch (Exception e) {
			e.printStackTrace();
		}

		return REPLY;
	}
		
	}

