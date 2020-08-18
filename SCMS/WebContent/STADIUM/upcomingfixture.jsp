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
  <link rel="stylesheet" media="all" href="${pageContext.servletContext.contextPath}/css/ddsmoothmenu.css"/>
  <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/css/table.css" />
  <script type="text/javascript" src="${pageContext.servletContext.contextPath}/js/jquery.min.js"></script>
  <script type="text/javascript" src="${pageContext.servletContext.contextPath}/js/jquery.easing.min.js"></script>
  <script type="text/javascript" src="${pageContext.servletContext.contextPath}/js/jquery.lavalamp.min.js"></script>
  <script type="text/javascript">
    $(function() {
      $("#lava_menu").lavaLamp({
        fx: "backout",
        speed: 700
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
	mainmenuid: "top_nav", //menu DIV id
	orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
	classname: 'ddsmoothmenu', //class added to menu's outer DIV
	//customtheme: ["#1c5a80", "#18374a"],
	contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
})

</script>


<!---prettyPhoto-->
 <script type="text/javascript" src="${pageContext.servletContext.contextPath}/js/jquery_004.js"></script>
 
<script type="text/javascript">
	$(function(){
		$("a[class^='prettyPhoto']").prettyPhoto({theme:'pp_default'});
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
                <li><a href="home.jsp" class="selected">Home</a>
                </li>
                <li><a href="viewfixture">Bookings</a></li>
                <li><a href="../login.jsp">Logout</a></li>       
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
        <form action="booked" class="register" method="post">
        <table cellspacing="5">
      
      
      
          <h2>Stadium Booking page</h2>
          <p>This is what a contact form could look like on this website template:</p>
          
          
      <!--  <tr>
        	<td>          
          	<div style="width:170px; float:left;">Location</div>
          	</td>
          	<td>
	      	<div style="width:530px; float:right;">
	      	<p>
	      		<select name="location" style="width:153px;">
	      			<option value=" "> </option>
	      			<option value="indoor">Indoor</option>
	      			<option value="outdoor">Outdoor</option>
	      		</select>
	      	</p></div>
	      	</td>
	    </tr>
	    <tr>
	    	<td>
          	<div style="width:170px; float:left;"><p>Stadium Name</p></div>
          	</td>
          	<td>
		  	<div style="width:530px; float:right;"><p><input class="contact" type="text" name="sname" value="" /></p></div>
		  	</td>
		</tr>
		<tr>
			<td>
          	<div style="width:170px; float:left;"><p>Address</p></div>
          	</td>
          	<td>
	      	<div style="width:530px; float:right;"><p><textarea rows="7" cols="35" name="adrs"></textarea></p></div>
	      	</td>
	    </tr>
	    <tr>
	    	<td>
	    		<div style="width:170px; float:left;"><p>Match Type</p></div>
	    	</td>
	    	<td>
	    		<div style="width:530px; float:right;">
	    		<p>
	    			<select name="mtype" style="width:153px;">
	    				<option value=" "> </option>
	    				<option value="test">Test</option>
	    				<option value="over">Over</option>
	    			</select>
	    		</p></div>
	    	</td>
	    </tr>
	    <tr>
	    	<td>
	    		<div style="width:170px; float:left;"><p>Match Time</p></div>
	    	</td>
	    	<td>
	    		<div style="width:530px; float:right;"><p>
	    		<select name="mtime" style="width:153px;">
	    			<option value=" "> </option>
	    			<option value="day">Day</option>
	    			<option value="night">Night</option>
	    		</select></p>
	    		</div>
	    	</td>
	    </tr>
	     <tr>
	    	<td>
	    		<div style="width:170px; float:left;"><p>Pitch Type</p></div>
	    	</td>
	    	<td>
	    		<div style="width:530px; float:right;"><p>
	    		<select name="ptype" style="width:153px;">
	    			<option value=" "> </option>
	    			<option value="wet">Wet</option>
	    			<option value="normal">Normal</option>
	    			<option value="hard">Hard</option>
	    			<option value="dump">Dump</option>
	    			<option value="dusty">Dusty</option>
	    			<option value="green">Green</option>
	    			<option value="dry">Dry</option>
	    		</select></p>
	    		</div>
	    	</td>
	    </tr>
	    <tr>
	    	<td>
	    		<div style="width:170px; float:left;"><p>Whether</p></div>
	    	</td>
	    	<td>
	    		<div style="width:530px; float:right;"><p>
	    		<select name="whether" style="width:153px;">
	    			<option value=" "> </option>
	    			<option value="sunny">Sunny</option>
	    			<option value="overcast">Overcast</option>
	    			<option value="rainy">Rainy</option>
	    		</select></p>
	    		</div>
	    	</td>
	    </tr>
	    <tr>
	    	<td>
	    		<div style="width:170px; float:left;"><p>Temperature</p></div>
	    	</td>
	    	<td>
	    		<div style="width:530px; float:right;"><p>
	    		<select name="temperature" style="width:153px;">
	    			<option value=" "> </option>
	    			<option value="cool">Cool</option>
	    			<option value="mild">Mild</option>
	    			<option value="warm">Warm</option>
	    			<option value="hot">Hot</option>
	    			<option value="humid">Humid</option>
	    		</select></p>
	    		</div>
	    	</td>
	    </tr>
	    <tr>
	    	<td>
	    		<div style="width:170px; float:left;"><p>Team Details</p></div>
	    	</td>
	    	<td>
	    		<div><p><input class="team" type="text" name="team" value="" />
	    		<span>V/S</span>
	    		<input class="team" type="text" name="team1" value="" /></p></div>
	    	</td>
	    </tr>
	    <tr>
	    	<td>
	    		<div style="width:170px; float:left;"><p><span>Umpaire</span></p></div>
	    	</td>
	    	<td>
	    		<div style="width:530px; float:right;"><p><input class="team" type="text" name="mainump" value="" />Main umpaire</p></div>
	    		<div><p><input class="team" type="text" name="legump" value="" />Leg Umpaire</p></div>
	    		<div><p><input class="team" type="text" name="theirdump" value="" />Theird Umpaire</p></div>
	    	</td>
	    </tr>
	    <tr>
	    	<td>
	    		<div style="width:170px; float:left;"><p>Start Time</p></div>
	    	</td>
	    	<td>
	    		<div style="width:530px; float:right;"><p><input class="team" type="text" name="stime" value="" /></p></div>
	    	</td>
	    </tr>
	    <tr>
	    	<td>
	    		<div style="width:170px; float:left;"><p>Meet Time</p></div>
	    	</td>
	    	<td>
	    		<div style="width:530px; float:right;"><p><input class="team" type="text" name="meettime" value="" /></p></div>
	    	</td>
	    </tr>      -->
	    
	    <tr>
	    	<td>
	    		<div style="width:170px; float:left;"><p>Event ID</p></div>
	    	</td>
	    	<td>
	    		<div style="width:530px; float:right;"><p><input class="sdate" type="text" name="event_id" value='<s:property value="event_id"/>'readonly="readonly" ></p></div>
	    	</td>
	    </tr>
	    <tr>
	    	<td>
	    		<div style="width:170px; float:left;"><p>Start date</p></div>
	    	</td>
	    	<td>
	    		<div style="width:530px; float:right;"><p><input class="sdate" type="text" name="sdate" value='<s:property value="sdate"/>' readonly="readonly"/></p></div>
	    	</td>
	    </tr>
	    <tr>
	    	<td>
	    		<div style="width:170px; float:left;"><p>End date</p></div>
	    	</td>
	    	<td>
	    		<div style="width:530px; float:right;"><p><input class="edate" type="text" name="edate" value='<s:property value="edate"/>'readonly="readonly" /></p></div>
	    	</td>
	    </tr>
	    <tr>
	    	<td>
	    		<div style="width:170px; float:left;"><p>Stadium name</p></div>
	    	</td>
	    	<td>
	    		<div style="width:530px; float:right;"><p><input class="sanme" type="text" name="sname" value='<s:property value="sname"/>'readonly="readonly" /></p></div>
	    	</td>
	    </tr>
	    <tr>
	    	<td>
	    		<div style="width:170px; float:left;"><p>Event name</p></div>
	    	</td>
	    	<td>
	    		<div style="width:530px; float:right;"><p><input class="ename" type="text" name="ename" value='<s:property value="ename"/>'readonly="readonly" /></p></div>
	    	</td>
	    </tr>
	    <tr>
	    	<td>
	    		<div style="width:170px; float:left;"><p>Team</p></div>
	    	</td>
	    	<td>
	    		<div style="width:530px; float:right;"><p><input class="team" type="text" name="team" value='<s:property value="team"/>'readonly="readonly" /></p></div>
	    	</td>
	    </tr>
	    <tr>
	    	<td>
	    		<div style="width:170px; float:left;"><p>Opposite Team</p></div>
	    	</td>
	    	<td>
	    		<div style="width:530px; float:right;"><p><input class="team1" type="text" name="team1" value='<s:property value="team1"/>' readonly="readonly"/></p></div>
	    	</td>
	    </tr>
	     </table>
	     <div><button class="btn">Booking &raquo;</button></div>
	     </form>
	  </div>
	  </div>
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
