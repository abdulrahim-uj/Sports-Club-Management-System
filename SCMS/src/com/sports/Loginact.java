package com.sports;

import java.sql.Connection;
import java.sql.ResultSet;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;
import org.apache.catalina.connector.Request;
import org.apache.commons.fileupload.RequestContext;
import org.apache.struts2.ServletActionContext;

import com.database.Dbcon;
import com.sun.org.apache.bcel.internal.generic.Type;

public class Loginact {
	private String username;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	private String password;

	public String execute() {
		HttpServletRequest req = ServletActionContext.getRequest();
		HttpSession session = req.getSession();
		
		String reply = null;
		Connection conn = null;

		try {
			String sql = "select * from login where username='" + username
					+ "' and password='" + password + "'";
			System.out.println(">>>>>>>>>>" + sql);
			ResultSet rs = new Dbcon().readData(sql);
			
			if (rs.next()) {
				String userLogin = rs.getString(1);

				session.setAttribute("user", userLogin);
				String type = rs.getString(3);
				if (type.equals("TM")) {
					System.out.println("inside tournament");
					reply = "TM";
					
				} else if (type.equals("SM")) {
					System.out.println("inside stadium");
					reply = "SM";
					
				} else if (type.equals("Team")) {
					new Dbcon()
					.insertUpdateDeleteDat("insert into online values('"
							+ userLogin + "')");
					reply = "Team";
					
					System.out.println("inside team");
					
				} else if (type.equals("CA")) {
					reply = "CA";
					System.out.println("inside clubadmin");
					
				} else {
					reply = "block";
				}
				
			}
			else{
				reply ="invalid";
			}

		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (Exception e) {
					System.out.println(e);
				}
			}
		}
		System.out
				.println("<>>>>>>>>>>>>>>><>>>>>>>>>>>>>>>>>>>>>>><>>>>>>>>>>>>>DSCSD<>>>>>>>>>>>>>>>>");
		return reply;
		
	}

}
