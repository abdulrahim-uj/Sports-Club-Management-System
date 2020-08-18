package com.sports;

import java.sql.Connection;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.database.Dbcon;

public class CreateTeamAct {
	
	Dbcon db = new Dbcon();
	
	private String cname;
	private String tname;
	private String captain;
	private String vcaptain;
	private String email;
	private String ph;
	private String inside;
	private String m1;
	private String m2;
	private String m3;
	private String m4;
	private String m5;
	private String m6;
	private String m7;
	private String m8;
	private String m9;
	private String reserve;
	private String r1;
	private String r2;
	private String r3;
	private String r4;
	private String r5;
	
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getCaptain() {
		return captain;
	}
	public void setCaptain(String captain) {
		this.captain = captain;
	}
	public String getVcaptain() {
		return vcaptain;
	}
	public void setVcaptain(String vcaptain) {
		this.vcaptain = vcaptain;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPh() {
		return ph;
	}
	public void setPh(String ph) {
		this.ph = ph;
	}
	public String getInside() {
		return inside;
	}
	public void setInside(String inside) {
		this.inside = inside;
	}
	public String getM1() {
		return m1;
	}
	public void setM1(String m1) {
		this.m1 = m1;
	}
	public String getM2() {
		return m2;
	}
	public void setM2(String m2) {
		this.m2 = m2;
	}
	public String getM3() {
		return m3;
	}
	public void setM3(String m3) {
		this.m3 = m3;
	}
	public String getM4() {
		return m4;
	}
	public void setM4(String m4) {
		this.m4 = m4;
	}
	public String getM5() {
		return m5;
	}
	public void setM5(String m5) {
		this.m5 = m5;
	}
	public String getM6() {
		return m6;
	}
	public void setM6(String m6) {
		this.m6 = m6;
	}
	public String getM7() {
		return m7;
	}
	public void setM7(String m7) {
		this.m7 = m7;
	}
	public String getM8() {
		return m8;
	}
	public void setM8(String m8) {
		this.m8 = m8;
	}
	public String getM9() {
		return m9;
	}
	public void setM9(String m9) {
		this.m9 = m9;
	}
	public String getReserve() {
		return reserve;
	}
	public void setReserve(String reserve) {
		this.reserve = reserve;
	}
	public String getR1() {
		return r1;
	}
	public void setR1(String r1) {
		this.r1 = r1;
	}
	public String getR2() {
		return r2;
	}
	public void setR2(String r2) {
		this.r2 = r2;
	}
	public String getR3() {
		return r3;
	}
	public void setR3(String r3) {
		this.r3 = r3;
	}
	public String getR4() {
		return r4;
	}
	public void setR4(String r4) {
		this.r4 = r4;
	}
	public String getR5() {
		return r5;
	}
	public void setR5(String r5) {
		this.r5 = r5;
	}
	
	public String execute() {
		
		HttpServletRequest http = ServletActionContext.getRequest();
		HttpSession session = http.getSession();
		String username = (String) session.getAttribute("user");
		Connection conn = null;
		try{
			String sql = "select username from login where username='" + username
					+ "'";
			System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>"+sql);
			
		
			/*String table = "player";

			ResultSet rs = new Dbcon().readData(sql);
			if (rs.next()) {
				if (rs.getString(1).equals("player")) {
					table = "player";
				
				}
				//REPLY = "player";
			}
			rs.close();*/

		

	
			String sql1 = "insert into team (clubname,teamname,captainname,vicecaptainname,email,phone,noofplayersinside,in1,in2,in3,in4,in5,in6,in7,in8,in9,noofplayersreserve,res1,res2,res3,res4,res5,ownername)values ('"
					+ cname +"','"
					+ tname +"','"
					+ captain +"','"
					+ vcaptain +"','"
					+ email +"','"
					+ ph +"','"
					+ inside +"','"
					+ m1 +"','"+ m2 +"','"+ m3 +"','"+ m4 +"','"+ m5 +"','"+ m6 +"','"+ m7 +"','"+ m8 +"','"+ m9 +"','"
					+ reserve +"','"
					+ r1 +"','"+ r2 +"','"+ r3 +"','"+ r4 +"','"+ r5 +"','"+username+"')";
			
			
			db.insertUpdateDeleteDat(sql1);

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
		return "success";
	}

}
