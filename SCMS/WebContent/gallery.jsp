<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="java.util.Date, com.database.*, java.sql.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>SCMS Photo Gallery</title>
  <meta name="description" content="free website template" />
  <meta name="keywords" content="enter your keywords here" />
  <meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
  <link rel="stylesheet" type="text/css" href="css/style.css" />
  <link rel="stylesheet" media="all" href="css/ddsmoothmenu.css"/>
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/jquery.easing.min.js"></script>
  <script type="text/javascript" src="js/jquery.lavalamp.min.js"></script>
  <script type="text/javascript">
    $(function() {
      $("#lava_menu").lavaLamp({
        fx: "backout",
        speed: 700
      });
    });
  </script>
    <script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>
    <script type="text/javascript">
    $(window).load(function() {
        $('#slider').nivoSlider();
    });
    </script>
    
        <script type="text/javascript" src="js/jquery_005.js"></script>
<script type="text/javascript" src="js/ddsmoothmenu.js">

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
 <script type="text/javascript" src="js/jquery_004.js"></script>
 
<script type="text/javascript">
	$(function(){
		$("a[class^='prettyPhoto']").prettyPhoto({theme:'pp_default'});
	});
	</script>         
    
    
    <%
	Connection con = new Dbcon().getConnection();
	String query = "select * from player";
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery(query);
%>
    
    <%
	Connection con1 = new Dbcon().getConnection();
	String query1 = "select * from stadium";
	Statement stmt1 = con1.createStatement();
	ResultSet rs1 = stmt1.executeQuery(query1);
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
                <li><a href="index.jsp" class="selected">Home</a>
                </li>
                <li><a href="#">Events</a>
                    <ul>
                        <li><a href="cricket.jsp">Cricket</a></li>
                        <li><a href="football.jsp">Football</a></li>
                        <li><a href="hockey.jsp">Hockey</a></li>
                        <li><a href="basketball.jsp">Basketball</a></li>
                       
                  </ul>
                </li>
                <li><a href="gallery.jsp">Gallery</a>
                    <ul>
                        <li><a href="#">Cricket</a></li>
                        <li><a href="#">Football</a></li>
                        <li><a href="#">Hockey</a></li>
                        <li><a href="#">Basketball</a></li>
                  </ul>
                </li>
                <li><a href="news.jsp">News</a></li>
                <li><a href="about.jsp">About Us</a></li>
                <li><a href="login.jsp">Login</a></li>
                <li><a href="contactu.jsp">Contact Us</a>          
                </li>
            </ul>
            </div>
            </div>
         </div>
      
<!--	  <div id="menubar">
        <ul class="lavaLampWithImage" id="lava_menu">
          <li><a href="index.jsp">Home</a></li>
          <li><a href="ourwork.jsp">Our Work</a></li>
          <li><a href="news.jsp">News</a></li>
          <li class="current"><a href="gallery.jsp">Gallery</a></li>
          <li><a href="contactu.jsp">Contact Us</a></li>
          <li><a href="about.jsp">About Us</a></li>
          <li><a href="login.jsp">Login</a></li>
        </ul>
	  </div> --><!--close menubar-->
	  
	  <div id="banner_image">
	    <div id="slider-wrapper">        
          <div id="slider" class="nivoSlider">
            <img alt="" src="images/c1.jpg" />
            <img alt="" src="images/c2.jpg" />
            <img alt="" src="images/c3.jpg" />
            <img alt="" src="images/c4.jpg" />
            <img alt="" src="images/c5.jpg" />
            <img alt="" src="images/c6.jpg" />
            <img alt="" src="images/c7.jpg" />
            <img alt="" src="images/c8.jpg" />
            <img alt="" src="images/c9.jpg" />
            <img alt="" src="images/c10.jpg" />
		  </div><!--close slider-->
		</div><!--close slider-wrapper-->
	  </div><!--close banner_image-->		  
      <div id="content">
        <div class="content_item" style="width: 970px;">
          <h1>SCMS Photos *</h1>
          <marquee behavior="alternate" bgcolor="#FF9900"><h2>Our Players</h2></marquee>
          <%
												while (rs.next()) {
											%>
											<img alt="" src="TImage/<%=rs.getString(17)%>" style="width: 200px; height: 150px; padding: 10px 20px 0px 0px;">
											
											<%
												}
											%>
		  <marquee behavior="alternate" bgcolor="#66CD00"><h2>Stadiums</h2></marquee>
		  
		  		<%
												while (rs1.next()) {
													
											%>
											
											<img alt="<%=rs1.getString(4)%>" src="SImage/<%=rs1.getString(11)%>" style="width: 200px; height: 150px; padding: 10px 20px 0px 0px;" >
											
											<%
												}
											%>	
											
		</div><!--close content_item-->	
	      
		  	
  </div><!--close main-->	
</body>
</html>
