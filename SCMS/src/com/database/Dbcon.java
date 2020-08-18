package com.database;
import java.sql.*;
public class Dbcon {

    ResultSet res=null;
    Statement st=null;
    Connection con=null;
	public Dbcon() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/scms", "root", "root");
            st = con.createStatement();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public ResultSet readData(String sql) {
        try {
            res = st.executeQuery(sql);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return res;
    }

    public int insertUpdateDeleteData(String sql) {
        int i = 0;
        try {
            i = st.executeUpdate(sql);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

    public int insertUpdateDeleteDat(String sql) {
        int i = 0;
        try {
            i = st.executeUpdate(sql);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

    public void close() {
        try {
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public Connection getConnection(){
		return con;
	}
    
    public ResultSet getData(String sql)
  	{
  		try {
  		System.out.println(sql);
  		st=con.createStatement();
  		res=st.executeQuery(sql);
  		
  		} catch (Exception e) {
  			// TODO: handle exception
  			System.out.println(e);
  		}
  		return res;
  	}

  	public int putData(String sql){
  		System.out.println("sql "+sql);
  		int status=0;
  		try {
  			st=con.createStatement();
  			status=st.executeUpdate(sql);
  					
  		} catch (Exception e) {
  			// TODO: handle exception
  		}
  		return status;
  	}


}
