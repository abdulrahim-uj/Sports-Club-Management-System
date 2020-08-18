package com.sports;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;

import com.database.Dbcon;
import com.opensymphony.xwork2.ActionSupport;

public class PlayerUploadAction extends ActionSupport implements
		ServletRequestAware{
	
	private static final long serialVersionUID = 1L;
	
	private File playerImage;
	private String playerImageContentType;
	private String playerImageFileName;
	private String pname;
	private String adrs;
	private String email;
	private String ph;
	private String country;
	private String gender;
	private String dob;
	private String specified;
	private String batposition;
	private String style;
	private String hand;
	private String bowlstyle;
	private String mentality;
	private String fposition;
	
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	public File getPlayerImage() {
		return playerImage;
	}
	public void setPlayerImage(File playerImage) {
		this.playerImage = playerImage;
	}
	public String getPlayerImageContentType() {
		return playerImageContentType;
	}
	public void setPlayerImageContentType(String playerImageContentType) {
		this.playerImageContentType = playerImageContentType;
	}
	public String getPlayerImageFileName() {
		return playerImageFileName;
	}
	public void setPlayerImageFileName(String playerImageFileName) {
		this.playerImageFileName = playerImageFileName;
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
	
	private HttpServletRequest servletRequest;
	
	public String execute() {
		HttpServletRequest http = ServletActionContext.getRequest();
		HttpSession session = http.getSession();
		String username = (String) session.getAttribute("user");
		try{
			String sql = "select username from login where username='" + username
					+ "'";
			System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>"+sql);
	
			String filePath = servletRequest.getSession().getServletContext().getRealPath("/TImage");
			String work=filePath.substring(0,filePath.indexOf(".metadata"));
			String prj="SCMS/WebContent/TImage";
			filePath=work.concat("/"+prj);
			System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>" + filePath);
			
			
			if (!new File(filePath).exists()) {
				new File(filePath).mkdir();
			}
			System.out.println("Server path:" + filePath);
			File fileToCreate = new File(filePath, this.playerImageFileName);

			FileUtils.copyFile(this.playerImage, fileToCreate);
			String sql1 = "insert into player(imagepath,playername,address,email,phone,country,gender,dob,specify,batposition,style,hand,bowlstyle,mentality,fieldposition,imagename,ownername) values('"
					+ filePath
					+ "','"
					+ pname
					+ "','"
					+ adrs
					+ "','"
					+ email
					+ "','"
					+ ph
					+ "','"
					+ country
					+ "','"
					+ gender
					+ "','"
					+ dob
					+ "','"
					+ specified
					+ "','"
					+ batposition
					+ "','"
					+ style
					+ "','"
					+ hand
					+ "','"
					+ bowlstyle
					+ "','"
					+ mentality 
					+ "','"
					+ fposition 
					+ "','" + getPlayerImageFileName() + "','"+username+"')";

			new Dbcon().insertUpdateDeleteDat(sql1);
			System.out.println("closed>>>>>>>>>>>>>>>>>>"+sql);
			System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+sql1);
		} catch (Exception e) {
			e.printStackTrace();
			addActionError(e.getMessage());

			return INPUT;
		}
		return SUCCESS;
	}
	
	public void setServletRequest(HttpServletRequest servletRequest) {
		this.servletRequest = servletRequest;

	}

}
