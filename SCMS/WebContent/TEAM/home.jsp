<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*,com.database.Dbcon"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <script>

            window.location.hash="no-back-button";
            window.location.hash="Again-No-back-button";//again because google chrome don't insert first hash into history
            window.onhashchange=function(){window.location.hash="no-back-button";}
        </script>
<title>SCMS Team Manager</title>
<meta name="description" content="free website template" />
<meta name="keywords" content="enter your keywords here" />
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.servletContext.contextPath}/css/style.css" />
<link rel="stylesheet" media="all"
	href="${pageContext.servletContext.contextPath}/css/ddsmoothmenu.css" />
<script type="text/javascript"
	src="${pageContext.servletContext.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.servletContext.contextPath}/js/jquery.easing.min.js"></script>
<script type="text/javascript"
	src="${pageContext.servletContext.contextPath}/js/jquery.lavalamp.min.js"></script>
	<script type="text/javascript"
	src="${pageContext.servletContext.contextPath}/jschat/jquery-1.8.1.min.js"></script>
<script type="text/javascript"
	src="${pageContext.servletContext.contextPath}/jschat/notify.js"></script>
<script type="text/javascript">
	$(function() {
		$("#lava_menu").lavaLamp({
			fx : "backout",
			speed : 700
		});
	});
</script>
<script type="text/javascript"
	src="${pageContext.servletContext.contextPath}/js/jquery.nivo.slider.pack.js"></script>
<script type="text/javascript">
	$(window).load(function() {
		$('#slider').nivoSlider();
	});
</script>

<script type="text/javascript"
	src="${pageContext.servletContext.contextPath}/js/jquery_005.js"></script>
<script type="text/javascript"
	src="${pageContext.servletContext.contextPath}/js/ddsmoothmenu.js">
	
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
<script type="text/javascript"
	src="${pageContext.servletContext.contextPath}/js/jquery_004.js"></script>

<script type="text/javascript">
	$(function() {
		$("a[class^='prettyPhoto']").prettyPhoto({
			theme : 'pp_default'
		});
	});
</script>

<%
	Connection con = new Dbcon().getConnection();
	String query = "select * from player";
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery(query);
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
			<%
		Dbcon db = new Dbcon();
		String se = "select distinct(frm) from chat where status=0 and too='"
				+ session.getAttribute("user").toString() + "'";
		ResultSet rex = db.readData(se);
		int o = 0;
		String msg = "";
		while (rex.next()) {
			o = 1;
			msg += rex.getString("frm") + ",";
		}
		if (o == 1) {
	%>
	<script>$.notify("U have message from <%=msg%>","info");</script>

	<%
		}
	%>
			<!--close header-->

			<div id="nav">
				<div class="ddsmoothmenu1">
					<div id="top_nav" class="ddsmoothmenu">
						<ul>
							<li><a href="/SCMS/TEAM/home.jsp" class="selected">Home</a></li>

							<li><a href="cricketpage">Cricket</a></li>
							<li><a
								href="${pageContext.servletContext.contextPath}/ChatPage.jsp">chat</a></li>
							<!--      <li><a href="#">Football</a>
                    <ul>
                        <li><a href="cricketregteam.jsp">Football</a></li>
                  </ul>
                </li>
                <li><a href="#">Hockey</a>
                	<ul>
           		   		<li><a href="crickettrack.jsp">Hockey</a></li>
                	</ul>
                </li>
                <li><a href="#">Basketball</a>
                	<ul>
           		   		<li><a href="crickettrack.jsp">Basketball</a></li>
                	</ul>
                </li>                                                                   -->
							<li><a href="chat">Communication</a></li>
							<li><a href="logout">Logout</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div id="banner_image">
				<div id="slider-wrapper">
					<div id="slider" class="nivoSlider">
						<img alt=""
							src="${pageContext.servletContext.contextPath}/images/c1.jpg" />
						<img alt=""
							src="${pageContext.servletContext.contextPath}/images/c2.jpg" />
						<img alt=""
							src="${pageContext.servletContext.contextPath}/images/c3.jpg" />
						<img alt=""
							src="${pageContext.servletContext.contextPath}/images/c4.jpg" />
						<img alt=""
							src="${pageContext.servletContext.contextPath}/images/c5.jpg" />
						<img alt=""
							src="${pageContext.servletContext.contextPath}/images/c6.jpg" />
						<img alt=""
							src="${pageContext.servletContext.contextPath}/images/c7.jpg" />
						<img alt=""
							src="${pageContext.servletContext.contextPath}/images/c8.jpg" />
						<img alt=""
							src="${pageContext.servletContext.contextPath}/images/c9.jpg" />
						<img alt=""
							src="${pageContext.servletContext.contextPath}/images/c10.jpg" />
					</div>
					<!--close slider-->
				</div>
				<!--close slider-wrapper-->
			</div>
			<!--close banner_image-->
			<form action="" method="post"></form>
			<div id="content">
				<div class="content_item">
					<h1>Welcome to our Team</h1>
					<h2>Our Work</h2>
					<h4>Cricket</h4>
					<h6>Add details</h6>
					<h6>View Details</h6>
					<h4>Football</h4>
					<h4>Hockey</h4>
					<h4>Basketball</h4>
					<p>This standards compliant, simple, fixed width website
						template is released as an 'open source' design (under the
						Creative Commons Attribution 3.0 Licence), which means that you
						are free to download and use it for anything you want (including
						modifying and amending it). If you wish to remove the
						'ARaynorDesign' link in the footer of the template, please contact
						me first, but other than that...</p>
					<h3>Place your heading here</h3>
					<div style="width: 200px; float: left; padding: 0px 20px 10px 0px;">
						<img alt="image"
							src="${pageContext.servletContext.contextPath}/images/image.jpg" />
					</div>
					<p>This website template uses the fancybox jquery tool to
						enhance the website, click on the image to the right to see.</p>
					<p>Ut tincidunt, ante vel fermentum iaculis, turpis sem
						pulvinar diam, sit amet ullamcorper nibh dui ac nibh. Class aptent
						taciti sociosqu ad litora torquent per conubia nostra, per
						inceptos himenaeos:</p>
					<p>Vestibulum tempus urna vitae neque vehicula sit amet
						tristique felis ultrices. Phasellus eu laoreet mauris. Integer sit
						amet ante nec ipsum euismod hendrerit et eget sapien. Duis velit
						ante, semper nec dapibus adipiscing, pellentesque vitae orci.
						Etiam adipiscing, justo ut faucibus placerat, neque libero
						accumsan ipsum, non pellentesque ligula nibh id justo. Aenean
						tellus nisl, bibendum vitae sollicitudin id, faucibus ut mi.</p>
					<p>Vestibulum tempus urna vitae neque vehicula sit amet
						tristique felis ultrices. Phasellus eu laoreet mauris. Integer sit
						amet ante nec ipsum euismod hendrerit et eget sapien. Duis velit
						ante, semper nec dapibus adipiscing, pellentesque vitae orci.
						Etiam adipiscing, justo ut faucibus placerat, neque libero
						accumsan ipsum, non pellentesque ligula nibh id justo. Aenean
						tellus nisl, bibendum vitae sollicitudin id, faucibus ut mi.</p>
				
			<form action="" class="players" style="margin-left: -25px;">	
     <fieldset class="row1" style="width: 986px; padding: 8px;">
                <legend>Our Players
                </legend>
                	<marquee behavior="alternate">
                	<%
												while (rs.next()) {
											%>
											<img alt="" src="TImage/<%=rs.getString(17)%>" style="width: 200px; height: 150px; padding: 10px 20px 0px 0px;">
											
											<%
												}
											%>
											</marquee>
          	</fieldset>
          	</form>
		</div><!--close content_item-->	
				<div class="sidebar_container">
					<div class="sidebar">
						<div class="sidebar_item">
							<h2>Latest Blog</h2>
							<h4>April 2012</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Pellentesque cursus tempor enim.</p>
							<a href="#">Read more</a>
						</div>
						<!--close sidebar_item-->
					</div>
					<!--close sidebar-->
					<div class="sidebar">
						<div class="sidebar_item">
							<h2>Latest Blog</h2>
							<h4>April 2012</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Pellentesque cursus tempor enim.</p>
							<a href="#">Read more</a>
						</div>
						<!--close sidebar_item-->
					</div>
					<!--close sidebar-->
					<div class="sidebar">
						<div class="sidebar_item">
							<h2>Latest Blog</h2>
							<h4>April 2012</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Pellentesque cursus tempor enim.</p>
							<a href="#">Read more</a>
						</div>
						<!--close sidebar_item-->
					</div>
					<!--close sidebar-->
				</div>
				<!--close sidebar_container-->
				<br style="clear: both;" />
			</div>
			<!--close content-->
		</div>
		<!--close site_content-->
		<div id="footer">
			<div id="footer_content">
				<a href="http://validator.w3.org/check?uri=referer">Valid XHTML</a>
				| <a href="http://jigsaw.w3.org/css-validator/check/referer">Valid
					CSS</a> | <a href="http://fotogrph.com/">Images</a> | website template
				by <a href="http://www.araynordesign.co.uk">ARaynorDesign</a>
			</div>
			<!--close footer_content-->
		</div>
		<!--close footer-->
	</div>
	<!--close main-->
</body>
</html>

