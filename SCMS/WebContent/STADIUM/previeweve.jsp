<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="java.util.Date" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>SCMS View previous Fixtures</title>
<meta name="description" content="free website template" />
<meta name="keywords" content="enter your keywords here" />
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/css/style.css" />
<link rel="stylesheet" media="all" href="${pageContext.servletContext.contextPath}/css/ddsmoothmenu.css" />
<!--   <link rel="stylesheet" type="text/css" href="../css/registration.css" />    -->
<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/css/table.css" />
<!--   <link rel="stylesheet" href="../css/pikaday.css">
  <script src="../js/pikaday.js"></script>                        -->
<script type="text/javascript" src="${pageContext.servletContext.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.servletContext.contextPath}/js/jquery.easing.min.js"></script>
<script type="text/javascript" src="${pageContext.servletContext.contextPath}/js/jquery.lavalamp.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#lava_menu").lavaLamp({
			fx : "backout",
			speed : 700
		});
	});
</script>
<script type="text/javascript" src="${pageContext.servletContext.contextPath}/js/jquery.nivo.slider.pack.js"></script>
<script type="text/javascript">
	$(window).load(function() {
		$('#slider').nivoSlider();
	});
</script>

<script type="text/javascript" src="${pageContext.servletContext.contextPath}/js/jquery_005.js"></script>
<script type="text/javascript" src="${pageContext.servletContext.contextPath}/js/ddsmoothmenu.js">
	
</script>

<script type="text/javascript">
	ddsmoothmenu.init({
		mainmenuid : "top_nav", //menu DIV id
		orientation : 'h', //Horizontal or vertical menu: Set to "h" or "v"
		classname : 'ddsmoothmenu', //class added to menu's outer DIV
		//customtheme: ["#1c5a80", "#18374a"],
		contentsource : "markup" //"markup" or ["container_id", "path_to_menu_file"]
	})
</script>


<!---prettyPhoto-->
<script type="text/javascript" src="${pageContext.servletContext.contextPath}/js/jquery_004.js"></script>

<script type="text/javascript">
	$(function() {
		$("a[class^='prettyPhoto']").prettyPhoto({
			theme : 'pp_default'
		});
	});
</script>


<%
	Date d = new Date();
	int year = d.getYear() + 1900;
	int month = d.getMonth() + 1;

	int day = d.getDay();
%>




</head>

<body>
	<div id="main">
		<div id="site_content">
			<div id="header">
				<h1>
					Sports <span>Club</span>
				</h1>
				<h2>Management System</h2>
			</div>
			<!--close header-->

			<div id="nav">
				<div class="ddsmoothmenu1">
					<div id="top_nav" class="ddsmoothmenu">
						<ul>
							<li><a href="/SCMS/STADIUM/home.jsp" class="selected">Home</a>
                </li>
                <li><a href="#">Fixture Details</a>
                	<ul>
                		
                		<li><a href="viewrecords">View</a></li>
                	</ul>
                </li>
                <li><a href="#">Score Sheet</a>
                    <ul>
                        <li><a href="#">Batting</a>
                        	<ul>
                        		
                        		<li><a href="viewbatscr">View</a></li>
                        	</ul>
                        </li>
                        <li><a href="#">Bowling</a>
                        	<ul>
                        		
                        		<li><a href="viewbowlscr">View</a></li>
                        	</ul>
                        </li>
                  </ul>
                </li>
      			<li><a href="logout">Logout</a></li>
						</ul>
					</div>
				</div>
			</div>

			<!-- 	  <div id="menubar">
        <ul class="lavaLampWithImage" id="lava_menu">
          <li><a href="index.jsp">Home</a></li>
          <li><a href="ourwork.jsp">Our Work</a></li>
           <li><a href="news.jsp">News</a></li>
          <li><a href="gallery.jsp">Gallery</a></li>
          <li><a href="contactu.jsp">Contact Us</a></li>
          <li class="current"><a href="about.jsp">About Us</a></li>
          <li><a href="login.jsp">Login</a></li>
        </ul>
	  </div>-->
			<!--close menubar-->
			<div id="banner_image">
				<div id="slider-wrapper">
					<div id="slider" class="nivoSlider">
						<img src="../images/slide1.jpg" alt="" /> <img
							src="../images/slide2.jpg" alt="" /> <img
							src="../images/slide3.jpg" alt="" />
					</div>
					<!--close slider-->
				</div>
				<!--close slider-wrapper-->
			</div>
			<!--close banner_image-->


			<form action="" class="register">
				<h1>View Fixtures</h1>


			<div class="CSSTableGenerator" >
                <table >
                    <tr>
                    	<td>
                            Event ID
                        </td>
                        <td>
                            Match name
                        </td>
                        <td>
                            Event name
                        </td>
                        <td>
                            Location
                        </td>
                        <td>
                            Team v/s Team
                        </td>
                       
                        <td >
                            Stadium Name
                        </td>
                        <td>
                        	Event Date
                        </td>
                        <td>
                        	Result
                        </td>
                        <td>
                        	Bat Score
                        </td>
                        <td>
                        	Bowl Score
                        </td>
                    </tr>
                    <tr>
                        <s:iterator value="list">
								<tr>

									<td><s:property value="event_id" /></td>
									<td><s:property value="matchname" /></td>
									<td><s:property value="eventname"/></td>
									<td><s:property value="location"/></td>
									<td>
										<table border="1">
											<tr>
												<td> Team </td>
												<td> Team </td>
											</tr>
											<tr>
												<td><s:property value="team" /></td>
												<td><s:property value="team1" /></td>
											</tr>
										</table>
									</td>
									
									
									<td><s:property value="stadiumname" /></td>
									<td>
										<table border="1">
											<tr>
												<td> Start Date </td>
												<td> End Date </td>
											</tr>
											<tr>
												<td><s:property value="date"/></td>
												<td><s:property value="date1"/></td>
											</tr>
										</table>
									</td>
									<td>
										<table border="1">
											<tr>
												<td> Winner </td>
												<td> Failed </td>
											</tr>
											<tr>
												<td><s:property value="win"/></td>
												<td><s:property value="fail"/></td>
											</tr>
										</table>
									</td>
									
									<td><a href="batscore?event_id=<s:property value="event_id" />"
									style="background:#3A6F39;
									border:none;
									color:#fff;
									padding: 5px 10px;
									cursor:pointer; ">Add</a></td>
									<td><a href="bowlscore?event_id=<s:property value="event_id" />"
									style="background:#3A6F39;
									border:none;
									color:#fff;
									padding: 5px 10px;
									cursor:pointer; ">Add</a></td>
								</tr>
							</s:iterator>
                    </tr>
                </table>
            </div>
</body>
</html>
