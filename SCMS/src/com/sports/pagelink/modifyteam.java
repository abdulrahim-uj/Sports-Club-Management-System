package com.sports.pagelink;

import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.database.Dbcon;

public class modifyteam {

	public String execute(){
	
		HttpServletRequest http = ServletActionContext.getRequest();
		HttpSession session = http.getSession();
		String username = (String) session.getAttribute("user");
		try{
			String sql = "select username from login where username='" + username
					+ "'";
			System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>"+sql);
			ResultSet rs = new Dbcon().readData(sql);
		}
			 catch (Exception e) {
					e.printStackTrace();
				}
		return "success";
			}
	}
