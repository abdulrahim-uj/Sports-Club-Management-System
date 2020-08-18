package com.sports.edit;

import java.sql.Connection;

import com.database.Dbcon;
import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;
import com.opensymphony.xwork2.ActionSupport;

public class EditPlayerAct extends ActionSupport{
	
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
	
	public String execute() throws Exception {
		
		Connection con = new Dbcon().getConnection();
			
		String query = "select * from player where player_id="+player_id;
		System.out.println(query);
		Statement st = (Statement) con.createStatement();
		ResultSet rs = (ResultSet) st.executeQuery(query);
		while (rs.next()) {
			setPname(rs.getString(3));
			setAdrs(rs.getString(4));
			setEmail(rs.getString(5));
			setPh(rs.getString(6));
			setCountry(rs.getString(7));
			setGender(rs.getString(8));
			setDob(rs.getString(9));
			setSpecified(rs.getString(10));
			setBatposition(rs.getString(11));
			setStyle(rs.getString(12));
			setHand(rs.getString(13));
			setBowlstyle(rs.getString(14));
			setMentality(rs.getString(15));
			setFposition(rs.getString(16));
			
			}
			return SUCCESS;
		}
	

}
