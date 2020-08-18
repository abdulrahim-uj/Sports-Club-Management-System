package com.sports.delete;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.database.Dbcon;
import com.opensymphony.xwork2.ActionSupport;
import com.sports.view.CriPlayer;

public class DeletePlayerAct extends ActionSupport {
	
	private static final long serialVersionUID = 1L;
	private String player_id;
	
	private String status;
	
	private ArrayList<CriPlayer> list = new ArrayList<CriPlayer>();

	public String getPlayer_id() {
		return player_id;
	}

	public void setPlayer_id(String player_id) {
		this.player_id = player_id;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public ArrayList<CriPlayer> getList() {
		return list;
	}

	public void setList(ArrayList<CriPlayer> list) {
		this.list = list;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
public String execute() throws Exception {
		
		Connection con = new Dbcon().getConnection();

		String query = "delete from player where player_id="+player_id;
		Statement st = con.createStatement();
		int ret = st.executeUpdate(query);
		
		Connection con1 = new Dbcon().getConnection();
		String query1 = "select * from player";
		Statement stmt1 = con1.createStatement();
		ResultSet rs = stmt1.executeQuery(query1);
		CriPlayer player;
		while (rs.next()) {
			player = new CriPlayer();
			player.setPlayer_id(rs.getString(1));
			player.setPname(rs.getString(3));
			player.setAdrs(rs.getString(4));
			player.setEmail(rs.getString(5));
			player.setPh(rs.getString(6));
			player.setCountry(rs.getString(7));
			player.setGender(rs.getString(8));
			player.setSpecified(rs.getString(10));
			player.setBatposition(rs.getString(11));
			player.setStyle(rs.getString(12));
			player.setHand(rs.getString(13));
			player.setBowlstyle(rs.getString(14));
			player.setMentality(rs.getString(15));
			player.setFposition(rs.getString(16));

			
			list.add(player);
			
		}
		
		
		return SUCCESS;
	}


}
