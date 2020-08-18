package com.sports.view;

import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.database.Dbcon;
import com.opensymphony.xwork2.ActionSupport;

public class ViewAvailStadium extends ActionSupport implements ServletRequestAware {
	private static final long serialVersionUID = 1L;
	ArrayList<AvailStadium> list = new ArrayList<AvailStadium>();
	

	public ArrayList<AvailStadium> getList() {
		return list;
	}

	public void setList(ArrayList<AvailStadium> list) {
		this.list = list;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	private HttpServletRequest servletRequest;
	public String execute() {
		try {
			String dat = servletRequest.getParameter("date");
			System.out.println(">>>>>>>>>>>>>>>dattttttttttttttttttt>>>>>>>>>>>>>>"+dat);
			String dat1=servletRequest.getParameter("date1");
			String eve=servletRequest.getParameter("ev");
			System.out.println("evvvvvvvvvv"+eve);
			String sql= "select * from booked join stadium on booked.startdate not between '"+dat+"' and '"+dat1+"' and booked.enddate not between '"+dat+"' and '"+dat1+"' and booked.stadiumname=stadium.stadiumname where booked.state = '0'";
	/*		String sql = "select * from stadium left outer join booked on booked.startdate not between '"+dat+"' and '"+dat1+"' and booked.enddate not between '"+dat+"' and '"+dat1+"' and booked.stadiumname=stadium.stadiumname";
			System.out.println("@@@@@@@@@@@@@@@@@@@@"+sql);
			
	/*		String sql = "select * from booked join stadium where booked.startdate not between '2014-08-10' and '2014-08-11' and booked.enddate not between '2014-09-10' and '2014-09-11' and booked.stadiumname=stadium.stadiumname;";      */
		/*	String sql1="select booked.stadiumname,stadium.stadiumname,stadium.address,stadium.pitchtype,stadium.whether,stadium.teperature,stadium.totalseats,stadium.amount from booked INNERJOIN stadium ON booked.stadiumname=stadium.stadiumname";   */
			ResultSet rs = new Dbcon().readData(sql);
		/*	setRs1(new Dbcon().readData(sql1));   */

			while (rs.next()) {
				AvailStadium user = new AvailStadium();
				
				user.setDate(rs.getString(2));
				user.setDate1(rs.getString(3));
				
				user.setStadium_id(rs.getString(10));
				//System.out.println(">>>"+rs.getString(9));
				user.setLocation(rs.getString(12));
				user.setSname(rs.getString(4));
				//System.out.println(">>>"+rs.getString(12));
				user.setAdrs(rs.getString(14));
				user.setPtype(rs.getString(15));
				user.setWhether(rs.getString(16));
				user.setTemp(rs.getString(17));
				user.setTseat(rs.getString(18));
				user.setAmount(rs.getString(19));
				user.setEve(eve.toString());
				
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
