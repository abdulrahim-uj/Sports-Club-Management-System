

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,com.database.Dbcon"%>
<%
            String to = request.getParameter("to").toString();
            String frm = session.getAttribute("user").toString();
            String message = request.getParameter("message").toString();
            StringBuffer buffer = new StringBuffer(frm);
            String f = buffer.charAt(0) + "";

            String msg = buffer.replace(0, 1, f.toUpperCase()) + " : " + message;
            System.out.println(msg);
            Dbcon db = new Dbcon();
            String sql = "insert into chat values('" + frm + "','" + to + "','" + msg + "','0')";
            db.insertUpdateDeleteDat(sql);

%>