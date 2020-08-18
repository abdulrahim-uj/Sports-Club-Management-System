<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>SCMS Add Indoor/Outdoor Stadium</title>
<meta name="description" content="free website template" />
<meta name="keywords" content="enter your keywords here" />
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/css/style.css" />
<link rel="stylesheet" media="all" href="${pageContext.servletContext.contextPath}/css/ddsmoothmenu.css" />
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

 <!-- Jquery Validaton Engine By AR -->

<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/css/validationEngine.jquery.css"
	type="text/css" />

<script src="${pageContext.servletContext.contextPath}/js/jquery-1.7.2.min.js" type="text/javascript">
	
</script>
<script src="${pageContext.servletContext.contextPath}/js/jquery.validationEngine-en.js" type="text/javascript"
	charset="utf-8">
	
</script>
<script src="${pageContext.servletContext.contextPath}/js/jquery.validationEngine.js" type="text/javascript"
	charset="utf-8">
	
</script>
<script>
	jQuery(document).ready(function() {
		// binds form submission and fields to the validation engine
		jQuery("#formID").validationEngine();

	});
</script>

<!-- Jquery Validaton Engine By AR --> 

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
                <li><a href="/SCMS/STADIUM/home.jsp">Home</a>
                </li>
                <li><a href="#">Location</a>
                    <ul>
                    	<li><a href="stadiumpage">Add Stadium</a></li>
                        <li><a href="viewstadium">View Stadiums</a></li>
                  </ul>
                </li>
                <li><a href="#">Event</a>
                    <ul>
                        <li><a href="viewfixture">Bookings</a></li>
                        <li><a href="viewpreevent">Previous</a></li>
                  </ul>
                </li>
       			<li><a href="logout">Logout</a></li>       
            </ul>
		</div>
	</div>
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

<div id="content">
	<div class="clear"></div>
		<div class="content_item"><!-- id="example1" -->
			<form  action="userImage" method="post"
						enctype="multipart/form-data" id=formID>
						<table cellspacing="5">



							<h2>Add Stadium</h2>
							<p>This is what a contact form could look like on this
								website template:</p>
							<tr>
								<td>
									<div style="width: 170px; float: left;">Image</div>
								</td> &nbsp;
								<td><input type="file" name="userImage"
									class="validate[required] text-input"
									style="color: gray; -moz-box-shadow: 0 0 5px #999; -webkit-box-shadow: 0 0 5px #999; box-shadow: 0 0 5px #999; margin-bottom: 20px; font-size: 13px; outline: none; border: 1px solid #F0F0F0; background: #f0f0f0; width: 204px;">
								</td>
							</tr>

							<tr>
								<td>
									<div style="width: 170px; float: left;">Location</div>
								</td>
								<td>
									<div style="width: 430px; float: right;">
										<p>
											<select name="location" style="width: 200px" name="mtype"
												class="validate[required] text-input">
												<option value=""></option>
												<option value="Indoor">Indoor</option>
												<option value="Outdoor">Outdoor</option>
											</select>
										</p>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div style="width: 170px; float: left;">
										<p>Stadium Name</p>
									</div>
								</td>
								<td>
									<div style="width: 430px; float: right;">
										<p>
											<input type="text" name="sname" size="27"
												class="validate[required] text-input" />
										</p>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div style="width: 170px; float: left;">
										<p>Address</p>
									</div>
								</td>
								<td>
									<div style="width: 430px; float: right;">
										<p>
											<textarea rows="7" cols="27" name="adrs" class="validate[required] text-input"></textarea>
										</p>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div style="width: 170px; float: left;">
										<p>Pitch Type</p>
									</div>
								</td>
								<td>
									<div style="width: 430px; float: right;">
										<p>
											<select name="ptype" style="width: 200px"
												class="validate[required] text-input">
												<option value=""></option>
												<option value="Wet">Wet</option>
												<option value="Normal">Normal</option>
												<option value="Hard">Hard</option>
												<option value="Dump">Dump</option>
												<option value="Dusty">Dusty</option>
												<option value="Green">Green</option>
												<option value="Dry">Dry</option>
											</select>
										</p>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div style="width: 170px; float: left;">
										<p>Whether</p>
									</div>
								</td>
								<td>
									<div style="width: 430px; float: right;">
										<p>
											<select name="whether" style="width: 200px"
												class="validate[required] text-input">
												<option value=""></option>
												<option value="Sunny">Sunny</option>
												<option value="Overcast">Overcast</option>
												<option value="Rainy">Rainy</option>
											</select>
										</p>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div style="width: 170px; float: left;">
										<p>Temperature</p>
									</div>
								</td>
								<td>
									<div style="width: 430px; float: right;">
										<p>
											<select name="temp" style="width: 200px"
												class="validate[required] text-input">
												<option value=""></option>
												<option value="Cool">Cool</option>
												<option value="Mild">Mild</option>
												<option value="Warm">Warm</option>
												<option value="Hot">Hot</option>
												<option value="Humid">Humid</option>
											</select>
										</p>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div style="width: 170px; float: left;"><p>Total Seats</p></div>
								</td>
								<td>
									<div style="width: 430px; float: right;">
										<p>
											<input type="text" name="tseat" size="27"
												class="validate[required] text-input" />
										</p>
									</div>	
								</td>
							</tr>
							<tr>
								<td>
									<div style="width: 170px; float: left;">
										<p>Amount</p>
									</div>
								</td>
								<td>
									<div style="width: 430px; float: right;">
										<p>
											<input type="text" name="amount" size="27"
												class="validate[required] text-input" />
										</p>
									</div>
								</td>
							</tr>
						</table>
						<div>
							<input type="submit" class="btn" value="Save">
						</div>
						
					</form>
					

				</div>

				
		</div>
		
		</div>
		<%
			String replyy = request.getParameter("f");
			if (replyy != null) {
				if(replyy.equals("1"))
				{
		%>
		<script type="text/javascript">
			alert("success");
		</script>
		<%
			} else {
		%>
		<script type="text/javascript">
			alert("failed");
		</script>
		<%
			}}
		%>
	
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
