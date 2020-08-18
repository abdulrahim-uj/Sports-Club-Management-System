<%-- 
    Document   : index
    Created on : Mar 18, 2014, 8:29:01 PM
    Author     : RETHU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,com.database.*,java.sql.*;"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <title>Event Management</title>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <link rel="stylesheet" type="text/css" href="style.css" />
        <script src="js/pikaday.js"></script>

        <link rel="stylesheet" href="css/pikaday.css"/>
        <link rel="stylesheet" href="css/site.css"></link>
        <script>
            function showw(a)
            {
                // alert(a);
                if(a=="1")
                {
                    document.getElementById('na').style.display='block';
                    document.getElementById('m1').style.display='block';
                }
                else if(a=="4")
                {
                    document.getElementById('na').style.display='block';
                    document.getElementById('m1').style.display='block';
                    document.getElementById('m2').style.display='block';
                }
                else if(a=="8")
                {
                    document.getElementById('na').style.display='block';
                    document.getElementById('m1').style.display='block';
                    document.getElementById('m2').style.display='block';
                    document.getElementById('m3').style.display='block';
                    document.getElementById('m4').style.display='block';
                    document.getElementById('m5').style.display='block';
                    document.getElementById('m6').style.display='block';
                    document.getElementById('m7').style.display='block';
                    document.getElementById('m8').style.display='block';
                }else
                {
                    document.getElementById('na').style.display='none';
                    document.getElementById('m1').style.display='none';
                    document.getElementById('m2').style.display='none';
                    document.getElementById('m3').style.display='none';
                    document.getElementById('m4').style.display='none';
                    document.getElementById('m5').style.display='none';
                    document.getElementById('m6').style.display='none';
                    document.getElementById('m7').style.display='none';
                    document.getElementById('m8').style.display='none';
                }
            }
        </script>
        <script>
            jQuery(document).ready(function(){
                // binds form submission and fields to the validation engine
                jQuery("#formID").validationEngine();
            });

        </script>
    </head>
    <body>
        <div id="wrapper">
            <div id="header">
                <div id="logo">
                    <h1><a href="#">Event Management</a></h1>
                </div>
                <div id="slogan">

                </div>
            </div>
            <div id="menu">
                <ul>
                    <li class="first current_page_item"><a href="Studhome.jsp">Homepage</a></li>
                    <li><a href="studprofileview.jsp">Profile View</a></li>
                    <li><a href="Studeventreg.jsp">Event Register</a></li>
                    <li><a href="studeventdetails.jsp">Event Details</a></li>
                    <li><a href="studviewevent.jsp">Event View</a></li>

                    <li class="last"><a href="index.jsp">Logout</a></li>
                </ul>
                <br class="clearfix" />
            </div>
            <div id="splash">
                <img class="pic" src="images/pic01.jpg" width="870" height="230" alt="" />
            </div>
            <div id="page">
                <div id="content">
                    <div class="box">


                        <p>
                        <center>
                            <form action="studeventact.jsp"  method="post">
                                <table align="center">
                               
                                    <tr>
                                        <td>
                                            <label for="website">Select Type</label>
                                        </td>

                                        <td>
                                        	<input type="text" name="type" style="width: 100%" onchange="showw(this.value)" >
                                            <!-- <select name="type" style="width: 100%" onchange="showw(this.value)" >-->
                                                <option value="">--Select--</option>
                                                <option value="1">Single</option>
                                                <option value="4">Duet</option>
                                                <option value="8">Group</option>
                                            </select></td>
                                    </tr>
                                    <tr style="display: none" id="na"><td style="font-family:serif;color: blue">Enter Members Names
                                        </td></tr>
                                    <tr style="display: none" id="m1">
                                        <td>
                                            1.Members</td><td><input type="text" id="m11" name="m1" />
                                        </td>


                                    </tr>
                                    <tr style="display: none" id="m2">
                                        <td>
                                            2.Members</td><td><input type="text" id="m22" name="m2" />
                                        </td>


                                    </tr>
                                    <tr style="display: none" id="m3">
                                        <td>
                                            3.Members</td><td><input type="text" id="m33" name="m3" />
                                        </td>


                                    </tr>
                                    <tr style="display: none" id="m4">
                                        <td>
                                            4.Members</td><td><input type="text" id="m44" name="m4" />
                                        </td>


                                    </tr>
                                    <tr style="display: none" id="m5">
                                        <td>
                                            5.Members</td><td><input type="text" id="m55" name="m5" />
                                        </td>


                                    </tr>
                                    <tr style="display: none" id="m6">
                                        <td>
                                            6.Members</td><td><input type="text" id="m66" name="m6" />
                                        </td>


                                    </tr>
                                    <tr style="display: none" id="m7">
                                        <td>
                                            7.Members</td><td><input type="text" id="m77" name="m7" />
                                        </td>


                                    </tr>
                                    <tr style="display: none" id="m8">
                                        <td>
                                            8.Members</td><td><input type="text" id="m88" name="m8" />
                                        </td>


                                    </tr>
                                    <tr><td> <input type="submit"  value="SET EVENT"/></td></tr>
                                </table></form></center>


                        <%
                                    String param = request.getParameter("f");
                                    if (param != null) {
                                        if (param.equalsIgnoreCase("1")) {%>

                        <script>alert("Success...");</script><%                                                                                                }
                                                                if (param.equalsIgnoreCase("2")) {%>
                        <script>alert("failed...");</script>
                        <%  }

                                    }
                        %>

                    </div>


                    <br class="clearfix" />
                </div>

                <br class="clearfix" />
            </div>

        </div>
        <div id="footer">
	Copyright (c) 2012 Sitename.com. All rights reserved. Design by <a href="http://www.freecsstemplates.org/" rel="nofollow">FreeCSSTemplates.org</a>.
        </div>
    </body>
</html>