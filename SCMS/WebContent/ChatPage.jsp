<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<%@page import="java.sql.*,com.database.Dbcon,java.io.File"%>
<html>
<head>
<script>
	window.location.hash = "no-back-button";
	window.location.hash = "Again-No-back-button";//again because google chrome don't insert first hash into history
	window.onhashchange = function() {
		window.location.hash = "no-back-button";
	}
</script>
<title>Online Chating</title>
<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/css/style.css" />
  <link rel="stylesheet" media="all" href="${pageContext.servletContext.contextPath}/css/ddsmoothmenu.css"/>
  <script type="text/javascript" src="${pageContext.servletContext.contextPath}/js/jquery.min.js"></script>
  <script type="text/javascript" src="${pageContext.servletContext.contextPath}/js/jquery.easing.min.js"></script>
  <script type="text/javascript" src="${pageContext.servletContext.contextPath}/js/jquery.lavalamp.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<script src="jschat/jquery-1.8.1.min.js"></script>
<script src="jschat/jquery.carouFredSel-6.0.5-packed.js"></script>
<script type="text/javascript" language="javascript">
	$(function() {

		$("#foo1").carouFredSel();
		$("#foo2").carouFredSel({
			width : 1000,
			items : 8,
			scroll : 4
		});
		$("#foo3").carouFredSel({
			items : 1,
			direction : "up",
			auto : {
				easing : "elastic",
				duration : 1000,
				timeoutDuration : 2000,
				pauseOnHover : true
			}
		}).find(".slide").hover(function() {
			$(this).find("div").slideDown();
		}, function() {
			$(this).find("div").slideUp();
		});
	});
</script>
<script>
	function chaT(To) {

		window
				.showModalDialog(
						"ChatBox.jsp?f=" + To,
						"CabinMapping",
						"dialogHeight: 589px; dialogWidth: 549px; titlebar: no; toolbar: no; statusbar:no;dialogLeft:420px;dialogTop:200px;");

	}
</script>
<script type="text/javascript" language="javascript">
	var siteroot = "../";
</script>
</head>
<body>
	<div class="header-bg">
		<div class="wrap">
			<div class="wrapper">
				<div class="header">
					<div class="logo">
						<a href="index.jsp"><img src="images/logo.png" /></a>
					</div>
					<div class="menu">

						<ul>
							<li><a
								href="${pageContext.servletContext.contextPath}/TEAM/home.jsp">Home</a></li>
							<li><a href="ChatPage.jsp">Refresh</a></li>
							<%--<li><a href="programs.jsp">Programs</a></li>--%>
							<%--<li><a href="programs.html">Schedule</a></li>--%>
							<li><a href="logout">LogOut</a></li>
							<div class="clear"></div>
						</ul>
					</div>
					<div class="clear"></div>
				</div>
				
				 <div id="banner_image">
	    <div id="slider-wrapper">        
          <div id="slider" class="nivoSlider">
            <img alt="" src="${pageContext.servletContext.contextPath}/images/c1.jpg" />
            <img alt="" src="${pageContext.servletContext.contextPath}/images/c2.jpg" />
            <img alt="" src="${pageContext.servletContext.contextPath}/images/c3.jpg" />
            <img alt="" src="${pageContext.servletContext.contextPath}/images/c4.jpg" />
            <img alt="" src="${pageContext.servletContext.contextPath}/images/c5.jpg" />
            <img alt="" src="${pageContext.servletContext.contextPath}/images/c6.jpg" />
            <img alt="" src="${pageContext.servletContext.contextPath}/images/c7.jpg" />
            <img alt="" src="${pageContext.servletContext.contextPath}/images/c8.jpg" />
            <img alt="" src="${pageContext.servletContext.contextPath}/images/c9.jpg" />
            <img alt="" src="${pageContext.servletContext.contextPath}/images/c10.jpg" />
		  </div><!--close slider-->
		</div><!--close slider-wrapper-->
	  </div><!--close banner_image-->
			<!-- 	<div class="transparent p1">
					<div class="wrap">
						<div class="html_carousel">
							<div id="foo3">
								<div class="slide">
									<img src="images/e1.jpg" alt="carousel 1" width="1000"
										height="450" />
									<div>
										<h4>Smart Computing</h4>
										<p>Either The Lab Section Protector nor An Efficient
											Communication Media.</p>
									</div>
								</div>
								<div class="slide">
									<img src="images/e2.jpg" alt="carousel 2" width="1000"
										height="450" />
									<div>
										<h4>Smart Computing</h4>
										<p>Either The Lab Section Protector nor An Efficient
											Communication Media.</p>
									</div>
								</div>
								<div class="slide">
									<img src="images/e3.jpg" alt="carousel 3" width="1000"
										height="450" />
									<div>
										<h4>Smart Computing</h4>
										<p>Either The Lab Section Protector nor An Efficient
											Communication Media.</p>
									</div>
								</div>
								<div class="slide">
									<img src="images/e4.jpg" alt="carousel 4" width="1000"
										height="450" />
									<div>
										<h4>Smart Computing</h4>
										<p>Either The Lab Section Protector nor An Efficient
											Communication Media.</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>    -->
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<div class="wrap">
		<div class="wrapper">
			<div class="content">
				<div class="about">
					<div class="about-top">
						<div class="about-left">
							<h3>Value and Affordability</h3>
							<div class="left-img">
								<img src="images/pic7.jpg" alt="" />
							</div>
							<div class="left-desc">
								<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
									sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna
									aliquam erat volutpat. Ut wisi enim ad minim veniam, quis
									nostrud exerci tation ullamcorper suscipit lobortis nisl ut
									aliquip ex ea commodo consequat. Duis autem vel eum iriure
									dolor in hendrerit in vulputate velit esse molestie consequat,
									vel illum dolore eu feugiat nulla facilisis at vero eros et
									accumsan et iusto odio dignissim qui blandit consectetuer
									adipiscing elit</p>
							</div>
							<div class="prog-top">
								<h3>Admission Overview</h3>
								<div class="prog-text">
									<div class="prog-left">
										<div class="p-img">
											<img src="images/book-icon.png" alt="" />
										</div>
										<div class="p-desc">
											<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
												elit, sed diam nonummy nibh euismod</p>
										</div>
										<div class="clear"></div>
									</div>
									<div class="prog-left">
										<div class="p-img">
											<img src="images/book-1.png" alt="" />
										</div>
										<div class="p-desc">
											<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
												elit, sed diam nonummy nibh euismod</p>
										</div>
										<div class="clear"></div>
									</div>
									<div class="prog-left">
										<div class="p-img">
											<img src="images/leaf.png" alt="" />
										</div>
										<div class="p-desc">
											<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
												elit, sed diam nonummy nibh euismod</p>
										</div>
										<div class="clear"></div>
									</div>
								</div>
								<div class="prog-right">
									<div class="right-text">
										<div class="p-img">
											<img src="images/book-2.png" alt="" />
										</div>
										<div class="p-desc">
											<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
												elit, sed diam nonummy nibh euismod</p>
										</div>
										<div class="clear"></div>
									</div>
									<div class="right-text">
										<div class="p-img">
											<img src="images/globe.png" alt="" />
										</div>
										<div class="p-desc">
											<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
												elit, sed diam nonummy nibh euismod</p>
										</div>
										<div class="clear"></div>
									</div>
									<div class="right-text">
										<div class="p-img">
											<img src="images/globe-2.png" alt="" />
										</div>
										<div class="p-desc">
											<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
												elit, sed diam nonummy nibh euismod</p>
										</div>
										<div class="clear"></div>
									</div>
								</div>
							</div>
							<div class="clear"></div>
						</div>
					</div>
					<div class="about-right">
						<h3>Online Users</h3>
						<div class="right-img">
							<div class="sidebar-nav">
								<ul>
									<%
										Dbcon db = new Dbcon();
										String sql = "select distinct(username) from online where username!='"
												+ session.getAttribute("user").toString()
												+ "' and username!='admin' ";
										ResultSet res = db.readData(sql);
										while (res.next()) {
									%>
									<li><a onclick="chaT('<%=res.getString("username")%>')"><%=res.getString("username").toUpperCase()%></a></li>
									<%
										}
									%>
									<%--<li><a href="ChangePassword.jsp">Change Password</a></li>
                                        <li><a href="TeacherUpdateProfile.jsp">Update Profile</a></li>
                                        <li><a href="">The standard chunk of Lorem Ipsum</a></li>
                                        <li><a href="">The standard chunk of Lorem Ipsum</a></li>
                                        <li><a href="">Always free from repetition</a></li>
                                        <li><a href="LogoutAction.jsp">LogOut</a></li>--%>

								</ul>
							</div>
							<%--<h3>Management Settings</h3>
                                <div class="sidebar-nav">
                                    <ul>
                                        <li><a href="ShareResource.jsp">Share Resources</a></li>
                                        <li><a href="ChangePassword.jsp">Change Your Password</a></li>
                                        <li><a href="SelectBatchAttendence.jsp">View Attendence Reports</a></li>
                                        <li><a href="">The standard chunk of Lorem Ipsum</a></li>
                                        <li><a href="">The standard chunk of Lorem Ipsum</a></li>
                                        <li><a href="">Always free from repetition</a></li>
                                        <li><a href="">The standard chunk of Lorem Ipsum</a></li>
                                        <li><a href="">The standard chunk of Lorem Ipsum</a></li>

                                    </ul>
                                </div>--%>
						</div>
						<div class="clear"></div>
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</div>
	</div>
	<div class="footer-top">
		<div class="wrap">
			<%-- <div class="footer">
                     <div class="footer-nav">
                         <h5><a href="home.jsp">Home</a></h5>
                         <ul>
					<li><a href="#">Locations</a></li>
					<li><a href="#">Team</a></li>
					<li><a href="#">Work</a></li>
				</ul>
                         <div class="clear"></div>
                     </div>
                     <div class="footer-nav">
                         <h5><a href="about.jsp">About</a></h5>
                         <ul>
					<li><a href="#">Advance</a></li>
					<li><a href="#">Inspire</a></li>
					<li><a href="#">Flourish</a></li>
					<li><a href="#">Extend</a></li>
				</ul>
                     </div>
                     <div class="footer-nav">
                         <h5><a href="programs.jsp">Programs</a></h5>
                         <ul>
					<li><a href="#">Advance</a></li>
					<li><a href="#">Inspire</a></li>
					<li><a href="#">Flourish</a></li>
					<li><a href="#">Extend</a></li>
				</ul>
                     </div>
                     <div class="footer-nav">
				<h5><a href="programs.jsp">Schedule</a></h5>
				<ul>
					<li><a href="#">Advance</a></li>
					<li><a href="#">Inspire</a></li>
					<li><a href="#">Flourish</a></li>
					<li><a href="#">Extend</a></li>
				</ul>
			</div>
                     <div class="footer-nav1">
                         <h5><a href="contact.jsp">Contact</a></h5>
                         <ul id="navlist">
                             <li id="fb"><a href="www.facebook.com"></a></li>
                             <li id="tw"><a href="www.twitter.com"></a></li>
                             <li id="msg"><a href="www.gmail.com"></a></li>
                         </ul>
                     </div>
                     <div class="clear"></div>
                 </div>--%>
		</div>
	</div>
	<div class="footer-bottom">
		<div class="wrap">
			<div class="footer-text">
				<div class="copy">
					<p>
						&copy; 2013 All rights Reserved | Design by <a
							href="http://w3layouts.com">W3Layouts</a>
					</p>
				</div>
				<%--<div class="subcribe">
                     <input type="text" class="textbox" value="Enter Your text " onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter Your text';}">
                     <input type="submit" value="Search Go!" >
                </div>--%>
				<div class="clear"></div>
			</div>
		</div>
	</div>
</body>
</html>