<%-- 
    Document   : chatcation
    Created on : Jun 21, 2014, 5:27:49 PM
    Author     : RETHU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="com.database.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<%
            String me = request.getParameter("Me");
            String to = request.getParameter("To");
            String msg = request.getParameter("msg");
            String sql = "insert into chat(from,too,msg) values('" + me + "','" + to + "','" + msg + "')";
            System.out.println("sql = " + sql);
            new Dbcon().putData(sql);
            response.sendRedirect("SMHome.jsp");
%>