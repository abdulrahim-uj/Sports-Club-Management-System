<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
		import="java.util.Date, com.database.*, java.sql.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>SCMS Cricket Tracks</title>
  <meta name="description" content="free website template" />
  <meta name="keywords" content="enter your keywords here" />
  <meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
  <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/css/style.css" />
  <link rel="stylesheet" media="all" href="${pageContext.servletContext.contextPath}/css/ddsmoothmenu.css"/>
  <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/css/pikaday.css">
  <script src="${pageContext.servletContext.contextPath}/js/pikaday.js"></script>
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
    
		  <% Date d = new Date();
                int year = d.getYear() + 1900;
                int month = d.getMonth() + 1;

                int day = d.getDay();
    %>
    
    <%
	Connection con1 = new Dbcon().getConnection();
	String query1 = "select * from team";
	Statement stmt1 = con1.createStatement();
	ResultSet rs1 = stmt1.executeQuery(query1);
%>
    
     <%
	Connection con2 = new Dbcon().getConnection();
	String query2 = "select * from team";
	Statement stmt2 = con2.createStatement();
	ResultSet rs2 = stmt2.executeQuery(query2);
%>
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
                 <li><a href="/SCMS/TEAM/home.jsp" class="selected">Home</a></li>
                <li><a href="cricketplayeraddpage">Add Player</a></li>
                <li><a href="viewplayers">View Players</a></li>
                <li><a href="#">Team</a>
                	<ul>
                		
                		<li><a href="modifyteampage">Create Team</a></li>
                	</ul>
                </li>
                <li><a href="cricketeventpage">Event Request</a></li> 
                <li><a href="vieweventstatus">Event Status</a></li>
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
        <form action="cricketeventreq">
        <table cellspacing="5">
          <h2>Request Event</h2>
          <p>This section using send request to tournament manager for new fixture...</p>
          
        <tr>
        	<td>
        		<div style="width:170px; float:left;">Match Name</div>
        	</td>
        	<td>
        		<div><p><input  type="text" placeholder="Match name" name="cricketmname" value="" /></p></div>
        	</td>
        </tr>
        <tr>
        	<td>
        		<div style="width:170px; float:left;">Event Name</div>
        	</td> 
        	<td>
        		<div><p><input  type="text" placeholder="Event name" name="cricketename" value="" /></p></div>
        	</td> 
        </tr> 
        <tr>  
        	<td>     
          	<div style="width:170px; float:left;">Location</div>
          	</td>
          	<td>
	      	<div style="width:430px; float:right;">
	      	<p>
	      		<select name="location" style="width:153px;">
	      			<option value=""> </option>
	      			<option value="indoor">Indoor</option>
	      			<option value="outdoor">Outdoor</option>
	      		</select>
	      	</p></div>
	      	</td>
	    </tr>
		<tr>
	    	<td>
	    		<div style="width:170px; float:left;"><p>Team Details</p></div>
	    	</td>
	    	<td>
	    		<div style="width:430px; float:right;">
	    		<p><!-- <input class="team" type="text" placeholder="Team name" name="team" value="" /> -->
	    		<select name="team" style="width: 153px;">
											<%
												while (rs1.next()) {
											%>

											<option value="<%=rs1.getString(3)%>"><%=rs1.getString(3)%></option>
											<%
												}
											%> </select>
	    		<span>V/S</span>
	    		<!-- <input class="team" type="text" placeholder="Opsitteam name" name="team1" value="" /></p></div> -->
	    		<select name="team1" style="width: 153px;">
											<%
												while (rs2.next()) {
											%>

											<option value="<%=rs2.getString(3)%>"><%=rs2.getString(3)%></option>
											<%
												}
											%> </select>
	    	</td>
	    </tr>
		<tr>
			<td>
          		<div style="width:170px; float:left;"><p>Contact e_mail</p></div>
          	</td>
          	<td>
	      		<div><p><input class="team" type="text" placeholder="Team contact" name="contact" value="" />
	    		<input class="team" type="text" placeholder="Team contact" name="contact1" value="" /></p></div>
	      	</td>
	    </tr>
	    <tr>
	    	<td>
	    		<div style="width:170px; float:left;"><p>Match Type</p></div>
	    	</td>
	    	<td>
	    		<div style="width:430px; float:right;">
	    		<p>
	    			<select name="mtype" style="width:153px;">
	    				<option value=" "> </option>
	    				<option value="test">Test</option>
	    				<option value="over">Over</option>
	    			</select>
	    		</p>
	    		</div>
	    	</td>
	    </tr>
	    <tr>
	    	<td>
	    		<div style="width:170px; float:left;"><p>Date</p></div>
	    	</td>
	    	<td><p>
	    		<input type="text"  name="date" placeholder="Start date"  id="datepicker"  onchange="fage(this.value);">
	    		<big style="color: lime; font-weight: bold;">To</big>
	    		<input type="text"  name="date1" placeholder="End date" id="datepicker1"  onchange="fage(this.value);">
	    		<!-- <div><p><input onclick="ds_sh(this);" name="date" placeholder="Start date" readonly="readonly" style="cursor: text" />
	    		<input onclick="ds_sh(this);" name="date1" placeholder="End date" readonly="readonly" style="cursor: text" /></p></div> -->
	    </p>	</td>
	    </tr>
	    <tr>
	    	<td>
	    		<div style="width:170px; float:left;"><p>Match Mode</p></div>
	    	</td>
	    	<td>
	    		<div style="width:430px; float:right;"><p><input class="team" type="text" name="daynight" value="" /></p></div>
	    	</td>
	    </tr>
	    <tr>
	    	<td>
	    		<div style="width:170px; float:left;"><p>Match Time</p></div>
	    	</td>
	    	<td>
	    		<div style="width:430px; float:right;"><p><input class="time" type="text" name="mtime" value="" /></p></div>
	    	</td>
	    </tr>
  </table>
	      <div><button class="btn">Request &raquo;</button></div>
	   </form>
	    </div>
		 </div>
		 <script>

        var picker = new Pikaday(
        {
            field: document.getElementById('datepicker'),
            firstDay: 1,
            minDate: new Date('1900-01-01'),
            maxDate: new Date('<%= year%>-<%= month%>-<%=day%>'),
            yearRange: [1900,<%= year%>]
        });

    </script>	
		 
	<script>

        var picker = new Pikaday(
        {
            field: document.getElementById('datepicker1'),
            firstDay: 1,
            minDate: new Date('1900-01-01'),
            maxDate: new Date('<%= year%>-<%= month%>-<%=day%>'),
            yearRange: [1900,<%= year%>]
        });

    </script>	
    
		</div>
    <div id="footer">  
	  <div id="footer_content">
        <a href="http://validator.w3.org/check?uri=referer">Valid XHTML</a> | <a href="http://jigsaw.w3.org/css-validator/check/referer">Valid CSS</a> | <a href="http://fotogrph.com/">Images</a> | website template by <a href="http://www.araynordesign.co.uk">ARaynorDesign</a>
      </div><!--close footer_content-->	
    </div><!--close footer-->	
  </div><!--close main-->	
</body>
</html>
