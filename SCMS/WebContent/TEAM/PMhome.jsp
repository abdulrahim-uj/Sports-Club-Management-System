<%-- 
    Document   : AdminHome
    Created on : Mar 3, 2014, 12:45:13 AM
    Author     : Rukku
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="com.database.*,java.sql.ResultSet"%>
<html>
    <head>
        <title>PMS </title>
        <link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Kite+One' rel='stylesheet' type='text/css'>
        <link href="../css/style.css" rel="stylesheet" type="text/css">
        <link href="css/stylesheet.css" rel="stylesheet" type="text/css">
        <%--   <script type="text/javascript" src="../js/jquery.min.js"></script>--%>
        <link rel="stylesheet" href="../css/jquery.fancybox.css">
        <%--.................................................Ca=hat......................................................--%>
        <%--   <link rel="stylesheet" href="css/jquery-ui-1.8.2.custom.css" type="text/css" media="screen" />--%>
        <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
        <script type="text/javascript" src="js/jquery-ui-1.8.2.custom.min.js"></script>
        <link type="text/css" href="${pageContext.servletContext.contextPath}/css/jquery.ui.chatbox.css" rel="stylesheet" />
        <script type="text/javascript" src="${pageContext.servletContext.contextPath}/js/jquery.ui.chatbox.js"></script>
        <%
                    String user = session.getAttribute("user").toString();
        %>
        <script type="text/javascript">
            var ID;
            var box = null;
            var ME="<%=user%>";
            $(document).ready(function() {

                $("a").click(function(event, ui) {

                    if (box) {
                        box.chatbox("option", "boxManager").toggleBox();

                        window.location.href="";

                    }
                    else {
                        box = $("#chat_div").chatbox({id: ID,
                            user: {key: "value"},
                            title:ID,
                            messageSent: function(id, user, msg) {

                                $("#chat_div").chatbox("option", "boxManager").addMsg(ME, msg);
                                // alert(id+":"+msg+ME);
                                //ajax to insert to chat
                                var xmlhttp;

                                if(window.XMLHttpRequest){
                                    xmlhttp=new XMLHttpRequest();
                                }else{
                                    xmlhttp=new ActiveXObject("");
                                }

                                xmlhttp.onreadystatechange=function(){
                                    if(xmlhttp.readyState==4 && xmlhttp.status==200){

                                        var a=xmlhttp.responseText;
                                    }
                                }
                                xmlhttp.open("Get","chatcation.jsp?Me="+ME+"&To="+ID+"&msg="+msg,true);
                                xmlhttp.send();
                            }
                        });
                    }
                });
            });

        </script>
        <script>
            setInterval(function(){
                var Ar=new Array();
                //ajax to get msg
                var xmlhttp;

                if(window.XMLHttpRequest){
                    xmlhttp=new XMLHttpRequest();
                }else{
                    xmlhttp=new ActiveXObject("");
                }

                xmlhttp.onreadystatechange=function(){
                    if(xmlhttp.readyState==4 && xmlhttp.status==200){

                        var a=xmlhttp.responseText;
                        if(a.length>6)
                        {

                            //alert(a);
                            Ar=a.split(":");
                            if(box)
                            {

                            }else if(Ar.length>0)
                            {

                                document.getElementById(Ar[0].trim()).click();

                            }
                            if(Ar.length>0)
                            {

                                $("#chat_div").chatbox("option", "boxManager").addMsg(Ar[0].trim(), Ar[1]);
                            }

                        }


                    }
                }
                xmlhttp.open("Get","chatcationGet.jsp?Me="+ME,true);
                xmlhttp.send();





            },3000);
        </script>
        <script>
            function toUser(a)
            {
                ID=a+"";
            }
        </script>
    </head>
    <body>
        <!---strat-wrap---->
        <!---strat-header---->
        <div class="header">
            <div class="wrap">
                <!---start-logo--->
                <div class="logo">
                    <ul>
                        <li><a href="index.html"><img src="../images/loggg.png"/></a></li>        <div class="clear"> </div>
                    <div class="clear"> </div>
                    </ul>
                </div>
                <!---//End-logo--->
                <!----start-top-nav---->
                <div class="top-nav" >

                    <div id="nav">

                        <ul>
                            <li class="active"><a href="../SM/SMHome.jsp">Home</a></li>
                            <li><a href="AssignTask.jsp">Assigntask</a></li>

                            <li><a href="ModificationView.jsp">Modifcation</a></li>

                            <li><a href="UploadProject.jsp">Project</a></li>

                            <li><a href="#">Chat</a><ul>
                                    <%

                                                String sql = "select * from login where username!='" + user + "' and type='Team'";
                                                ResultSet rs = new Dbcon().getData(sql);
                                                while (rs.next()) {
                                    %>


                                    <li><a href="#" id="<%=rs.getString(1)%>" onclick="toUser(this.id)" ><%=rs.getString(1)%></a></li>


                                    <%}%>   </ul>
                            </li>
                            <li><a href="../Logout.jsp">Logout</a></li>

                        </ul>
                    </div></div>
                <div class="clear"> </div>
                <!----//End-top-nav---->
            </div>
            <!---//End-wrap---->
            <!---End-header---->
        </div>
        <div class="main">

            <!-----//images effect//---->
            <div class="events">
               
                <h2 style="font-size: 20">Welcome <%=user%></h2>
                <div class="section group">
                    <div class="grid_1_of_3 events_1_of_3">
                        <div class="event-img" style="width: 380px;height: 370px">

                            <a class="fancybox" rel="group" href="../images/screen.jpg" title="PhotoGraphy"><img src="../images/screen.jpg" alt="" /><span><img src="../images/add.png"></span></a>
                        </div>
                        <div class="event-time">
                            <a href="#"><h2>PROJECT MANAGEMENT.</h2></a>
                            <p> Project management system along with employee, work, task are managed through this application. In present scenario every software company works on multiple projects simultaneously so there is need to manage all these projects efficiently in term of employee management, project design..</p>
                       </div>
                    </div>
                      <div class="grid_1_of_3 events_1_of_3" style="width: 380px;height: 370px;margin-right: 180PX;float: right;">
                        <div class="event-img">
                            <a class="fancybox" rel="group" href="../images/teamm.jpg" title="PhotoGraphy"><img src="../images/teamm.jpg" alt="" /><span><img src="../images/add.png"></span></a>
                        </div>
                        <div class="event-time">

                            <a href="#"><h2>TEAM WORK</h2></a>
                            <p>Teamwork is "work done by several associates with each doing a part but all subordinating personal prominence to the efficiency of the whole"

In a business setting accounting techniques may be used to provide financial measures of the benefits of teamwork which are useful for justifying the concept.</p>
                        </div>
                    </div>
                </div></div></div>
        <!---------//footer//-------->
    <footer>
        <div class="wrap">
            <div class="main">
                <p>&copy; All rights reserved. Template by <a href="http://w3layouts.com/">w3layouts.com</a></p>
            </div>
        </div>
    </footer>

</body>
</html>