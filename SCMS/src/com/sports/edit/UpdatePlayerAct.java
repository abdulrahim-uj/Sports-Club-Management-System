package com.sports.edit;

import java.sql.Connection;
import java.sql.Statement;

import com.database.Dbcon;
import com.opensymphony.xwork2.ActionSupport;

public class UpdatePlayerAct extends ActionSupport{
	
	private static final long serialVersionUID = 1L;
	
	private String player_id;
	private String pname;
	private String adrs;
	private String email;
	private String ph;
	private String country;
	private String gender;
	private String dob;
	private String type;
	private String specified;
	private String batposition;
	private String style;
	private String hand;
	private String bowlstyle;
	private String mentality;
	private String fposition;
	
	private String status;
	
	public String getPlayer_id() {
		return player_id;
	}
	public void setPlayer_id(String player_id) {
		this.player_id = player_id;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getAdrs() {
		return adrs;
	}
	public void setAdrs(String adrs) {
		this.adrs = adrs;
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
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getSpecified() {
		return specified;
	}
	public void setSpecified(String specified) {
		this.specified = specified;
	}
	public String getBatposition() {
		return batposition;
	}
	public void setBatposition(String batposition) {
		this.batposition = batposition;
	}
	public String getStyle() {
		return style;
	}
	public void setStyle(String style) {
		this.style = style;
	}
	public String getHand() {
		return hand;
	}
	public void setHand(String hand) {
		this.hand = hand;
	}
	public String getBowlstyle() {
		return bowlstyle;
	}
	public void setBowlstyle(String bowlstyle) {
		this.bowlstyle = bowlstyle;
	}
	public String getMentality() {
		return mentality;
	}
	public void setMentality(String mentality) {
		this.mentality = mentality;
	}
	public String getFposition() {
		return fposition;
	}
	public void setFposition(String fposition) {
		this.fposition = fposition;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	public String execute() throws Exception {
		Connection con = new Dbcon().getConnection();
		
			String query = "update player set playername='"+pname+"',address='"+adrs+"',email='"+email+"',phone='"+ph+"',country='"+country+"',gender='"+gender+"',dob='"+dob+"',specify='"+specified+"',batposition='"+batposition+"',style='"+style+"',hand='"+hand+"',bowlstyle='"+bowlstyle+"',mentality='"+mentality+"',fieldposition='"+fposition+"' where player_id=" + player_id;  
		
		System.out.println(">>>>>>>>>>>>>"+query);
		Statement st = con.createStatement();
		int ret = st.executeUpdate(query);
		if (ret == 1) {
			status = SUCCESS;
		} else {
			status = ERROR;
		}
		return status;
	}
	

}
