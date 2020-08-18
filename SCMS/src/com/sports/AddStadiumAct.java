package com.sports;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.interceptor.ServletRequestAware;

import com.database.Dbcon;
import com.opensymphony.xwork2.ActionSupport;

public class AddStadiumAct extends ActionSupport implements ServletRequestAware{
	
	private static final long serialVersionUID = 1L;
	private File userImage;
	private String userImageContentType;
	private String userImageFileName;
	private String location;
	private String sname;
	private String adrs;
	private String ptype;
	private String whether;
	private String temp;
	private String tseat;
	private String amount;
	
	

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public String getAdrs() {
		return adrs;
	}

	public void setAdrs(String adrs) {
		this.adrs = adrs;
	}

	public String getPtype() {
		return ptype;
	}

	public void setPtype(String ptype) {
		this.ptype = ptype;
	}

	public String getWhether() {
		return whether;
	}

	public void setWhether(String whether) {
		this.whether = whether;
	}

	public String getTemp() {
		return temp;
	}

	public void setTemp(String temp) {
		this.temp = temp;
	}
	
	public String getTseat() {
		return tseat;
	}

	public void setTseat(String tseat) {
		this.tseat = tseat;
	}



	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public HttpServletRequest getServletRequest() {
		return servletRequest;
	}

	private HttpServletRequest servletRequest;

	public String execute() {
		try {
			String filePath = servletRequest.getSession().getServletContext().getRealPath("/SImage");
			String work=filePath.substring(0,filePath.indexOf(".metadata"));
			String prj="SCMS/WebContent/SImage";
			filePath=work.concat("/"+prj);
			System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>" + filePath);
			
			
			if (!new File(filePath).exists()) {
				new File(filePath).mkdir();
			}
			System.out.println("Server path:" + filePath);
			File fileToCreate = new File(filePath, this.userImageFileName);

			FileUtils.copyFile(this.userImage, fileToCreate);
			String sql = "insert into stadium(imagepath,location,stadiumname,address,pitchtype,whether,temprature,totalseats,amount,imagename) values('"
					+ filePath
					+ "','"
					+ location
					+ "','"
					+ sname
					+ "','"
					+ adrs
					+ "','"
					+ ptype
					+ "','"
					+ whether
					+ "','"
					+ temp
					+ "','"
					+ tseat 
					+"','"
					+ amount + "','" + getUserImageFileName() + "')";
			
			String sql1="insert into booked(startdate,enddate,stadiumname,event_id,state) values ('0000-00-00','0000-00-00','"+sname+"','0','0')";

			new Dbcon().insertUpdateDeleteDat(sql);
			new Dbcon().insertUpdateDeleteDat(sql1);
			System.out.println("closed>>>>>>>>>>>>>>>>>>");
			
		} catch (Exception e) {
			e.printStackTrace();
			addActionError(e.getMessage());

			return INPUT;
		}
		return SUCCESS;
	}

	public File getUserImage() {
		return userImage;
	}

	public void setUserImage(File userImage) {
		this.userImage = userImage;
	}

	public String getUserImageContentType() {
		return userImageContentType;
	}

	public void setUserImageContentType(String userImageContentType) {
		this.userImageContentType = userImageContentType;
	}

	public String getUserImageFileName() {
		return userImageFileName;
	}

	public void setUserImageFileName(String userImageFileName) {
		this.userImageFileName = userImageFileName;
	}

	public void setServletRequest(HttpServletRequest servletRequest) {
		this.servletRequest = servletRequest;

	}

}
