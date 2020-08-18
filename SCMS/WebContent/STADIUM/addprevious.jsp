<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>SCMS Add Previous Events</title>
<meta name="description" content="free website template" />
<meta name="keywords" content="enter your keywords here" />
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/css/style.css" />
<link rel="stylesheet" media="all" href="${pageContext.servletContext.contextPath}/css/ddsmoothmenu.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/css/table.css" />
<script type="text/javascript" src="${pageContext.servletContext.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.servletContext.contextPath}/js/jquery.easing.min.js"></script>
<script type="text/javascript" src="${pageContext.servletContext.contextPath}/js/jquery.lavalamp.min.js"></script>
<script type="text/javascript">
	$(function() {
		JQuery.noConflict();
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
        <h1>Sports <span>Club</span></h1>
	    <h2>Management System</h2>
      </div><!--close header-->	
      
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
        <div class="content_item">
       <div class="content_item">
        
        <form id="example1" action="eventresult" method="post"
			enctype="multipart/form-data">
		<table cellspacing="5">
		<h2>EDIT STADIUM</h2>
		<p>This is what a contact form could look like on thiswebsite template:</p>
	<!-- 	<tr>
			<td>
				<div style="width: 170px; float: left;">Image</div>
			</td> &nbsp;
			<td>
				<input type="file" name="userImage"
					class="validate[required] text-input"
					style="color: gray; -moz-box-shadow: 0 0 5px #999; -webkit-box-shadow: 0 0 5px #999; box-shadow: 0 0 5px #999; margin-bottom: 20px; font-size: 13px; outline: none; border: 1px solid #F0F0F0; background: #f0f0f0; width: 204px;">
			</td>
		</tr>
	 -->
	 	<tr>
			<td>
				<div style="width: 170px; float: left;">Event_id</div>
			</td>
			<td>
				<p>
				<input type="text"name="event_id" id="Location" value="<s:property value="event_id"/>" readonly="readonly"/>
				</p>
			</td>
		</tr>
		<tr>
			<td>
				<div style="width: 170px; float: left;">Location</div>
			</td>
			<td>
				<p>
				<input type="text"name="location" id="Location" value="<s:property value="location"/>" readonly="readonly"/>
				</p>
			</td>
		</tr>
		<tr>
			<td>
				<div style="width: 170px; float: left;"><p>Stadium Name</p></div>
			</td>
			<td>
				<p>
				<input type="text" name="sname" value='<s:property value = "sname"/>'readonly="readonly">	
				</p>
			</td>
		</tr>
		<tr>
			<td>
				<div style="width: 170px; float: left;"><p>Start Date</p></div>
			</td>
			<td>
				<p>
				<input type="text" name="sdate" value='<s:property value = "sdate"/>'readonly="readonly">	
				</p>
			</td>
		</tr>
		<tr>
			<td>
				<div style="width: 170px; float: left;"><p>End Date</p></div>
			</td>
			<td>
				<p>
				<input type="text" name="edate" value='<s:property value = "edate"/>'readonly="readonly">	
				</p>
			</td>
		</tr>
		<tr>
			<td>
				<div style="width: 170px; float: left;"><p>Match Type</p></div>
			</td>
			<td>
				<p>
					<input type="text" name="mtype" value='<s:property value = "mtype"/>' readonly="readonly">
				</p>
				
			</td>
		</tr>
		<tr>
			<td>
				<div style="width: 170px; float: left;"><p>Match Name</p></div>
			</td>
			<td>
				<p>
					<input type="text" name="mname" value='<s:property value = "mname"/>' readonly="readonly">
				</p>
				
			</td>
		</tr>
		<tr>
			<td>
				<div style="width: 170px; float: left;"><p>Team Name</p></div>
			</td>
			<td>
				<div>
					<p>
					<input type="text" name="tname" value='<s:property value = "tname"/>' readonly="readonly">
			<span>V/S</span>
					<input type="text" name="tname1" value='<s:property value = "tname1"/>' readonly="readonly">
					</p>
				</div>
			</td>
		</tr>
		
		<tr>
			<td>
				<div style="width: 170px; float: left;" ><p style="color: orange; width: 100px; float: left; font-weight: bold;">Result</p></div>
			</td>
		</tr>
		<tr>
			<td>
				<div style="width: 170px; float: left;"><p>Win</p></div></td>
			<td>
				<p>
					<input type="text" name="win" />
				</p>
			</td>
			<td>
				<div style="width: 170px; float: left;"><p>Total Run</p></div></td>
			<td>
				<p>
					<input type="text" name="winrun" />
				</p>
			</td>
		</tr>
		<tr>
			<td>
				<div style="width: 170px; float: left;"><p>Failed</p></div></td>
			<td>
				<p>
					<input type="text" name="fail" />
				</p>
			</td>
			<td>
				<div style="width: 170px; float: left;"><p>Total Run</p></div></td>
			<td>
				<p>
					<input type="text" name="failrun" />
				</p>
			</td>	
		</tr>	
	</table>
	<div>
		<input type="reset" value="clear" class="btn" >
		<input type="submit" class="btn" value="Update">
	</div>
</form>
</div>
       </div> </div>
       </div> 
        <!--close content_item-->
        <div id="footer">  
	  <div id="footer_content">
        <a href="http://validator.w3.org/check?uri=referer">Valid XHTML</a> | <a href="http://jigsaw.w3.org/css-validator/check/referer">Valid CSS</a> | <a href="http://fotogrph.com/">Images</a> | website template by <a href="http://www.araynordesign.co.uk">ARaynorDesign</a>
      </div><!--close footer_content-->	
    </div><!--close footer-->	
  </div><!--close main-->	
</body>
</html>
