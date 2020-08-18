<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,com.database.Dbcon"%>
<%
            String to = request.getParameter("to").toString();

            Dbcon db = new Dbcon();
            String sql = "delete from chat where too='" + to + "' and frm='" + session.getAttribute("user").toString() + "' or too='" + session.getAttribute("user").toString() + "' and frm='" + to + "'";
            db.insertUpdateDeleteDat(sql);

%>


