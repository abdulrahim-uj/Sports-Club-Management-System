
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,com.database.Dbcon"%>
<%

            String to = request.getParameter("to").toString();
            System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>" + to);

            Dbcon db = new Dbcon();
            String sql = "select * from chat where too='" + to + "' and frm='" + session.getAttribute("user").toString() + "' or too='" + session.getAttribute("user").toString() + "' and frm='" + to + "'";
            ResultSet res = db.readData(sql);
            while (res.next()) {
                out.println(res.getString("message") + "$");

            }

%>


