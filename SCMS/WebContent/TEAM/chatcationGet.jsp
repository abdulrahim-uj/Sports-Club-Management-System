<%-- 
    Document   : chatcationGet
    Created on : Jun 22, 2014, 11:06:25 AM
    Author     : RETHU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="com.database.*,java.sql.*"%>

<%
            String me = request.getParameter("Me");

            String sql = "select * from chat where too='" + me + "' order by chat_id asc";
            System.out.println("sql = " + sql);
            Dbcon db = new Dbcon();
            ResultSet rs = db.getData(sql);
            String data = " ";
            if (rs.next()) {
                data = rs.getString("from").trim() + ":" + rs.getString("msg")+":";
                db.putData("delete from chat where chat_id=" + rs.getInt(1) + "");
            }
            System.out.println(data);
            out.println(data);
%>