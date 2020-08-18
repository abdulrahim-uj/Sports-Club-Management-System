package com.sports.view;

import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.database.Dbcon;
import com.opensymphony.xwork2.ActionSupport;

public class SetViewEventReq extends ActionSupport implements ServletRequestAware {
	private static final long serialVersionUID = 1L;
	
	ArrayList<Requests> list = new ArrayList<Requests>();
	private String stadium_id;
	
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public String getStadium_id() {
		return stadium_id;
	}

	public void setStadium_id(String stadium_id) {
		this.stadium_id = stadium_id;
	}

	public ArrayList<Requests> getList() {
		return list;
	}

	public void setList(ArrayList<Requests> list) {
		this.list = list;
	}
	private HttpServletRequest servletRequest;
	public String execute() {
		try {
			String eve = servletRequest.getParameter("eve");
			
			String sql = "select * from event where status='1' and event_id="+eve;
			String sql1= "select * from stadium where stadium_id="+stadium_id;
			System.out.println("sqlllll"+sql);
			ResultSet rs = new Dbcon().readData(sql);
			ResultSet rs1=new Dbcon().readData(sql1);	
			while (rs.next() && rs1.next()) {
				
				Requests user = new Requests();
				
				user.setEvent_id(rs.getString(1));
				user.setMatchnam(rs.getString(2));
				user.setEventnam(rs.getString(3));
				user.setLocation(rs.getString(4));
				user.setTeam(rs.getString(5));
				user.setTeam1(rs.getString(7));
				user.setContact(rs.getString(6));
				user.setContact1(rs.getString(8));
				user.setMtype(rs.getString(9));
				user.setDate(rs.getString(10));
				user.setDate1(rs.getString(11));
				user.setSname(rs1.getString(4));
				list.add(user);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "success";
	}
	public void setServletRequest(HttpServletRequest servletRequest) {
		this.servletRequest = servletRequest;

	}
}
