package com.sports.delete;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.database.Dbcon;
import com.opensymphony.xwork2.ActionSupport;
import com.sports.view.Staff;

public class DeleteStaffAct extends ActionSupport {
	
	private static final long serialVersionUID = 1L;
	private String staff_id;
	
	private String status;
	
	private ArrayList<Staff> list = new ArrayList<Staff>();

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	public String getStaff_id() {
		return staff_id;
	}

	public void setStaff_id(String staff_id) {
		this.staff_id = staff_id;
	}
	
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	public ArrayList<Staff> getList() {
		return list;
	}

	public void setList(ArrayList<Staff> list) {
		this.list = list;
	}


public String execute() throws Exception {
		
		Connection con = new Dbcon().getConnection();

		String query = "delete from register where staff_id="+staff_id;
		Statement st = con.createStatement();
		int ret = st.executeUpdate(query);
		
		Connection con1 = new Dbcon().getConnection();
		String query1 = "select * from register";
		Statement stmt1 = con1.createStatement();
		ResultSet rs = stmt1.executeQuery(query1);
		Staff staff;
		while (rs.next()) {
			staff = new Staff();
			staff.setStaff_id(rs.getString(20));
			staff.setEmail(rs.getString(1));
			staff.setRepass(rs.getString(4));
			staff.setName(rs.getString(5));
			staff.setMob(rs.getString(7));
			staff.setAdrs(rs.getString(6));
			staff.setCountry(rs.getString(8));
			staff.setType(rs.getString(9));
			staff.setGender(rs.getString(10));
			staff.setDob(rs.getString(11));
			
			
			list.add(staff);
			
		}
		
		
		return SUCCESS;
	}

}
