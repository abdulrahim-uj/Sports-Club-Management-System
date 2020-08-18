<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		import="java.util.Date, com.database.*, java.sql.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<script>
	window.location.hash = "no-back-button";
	window.location.hash = "Again-No-back-button";//again because google chrome don't insert first hash into history
	window.onhashchange = function() {
		window.location.hash = "no-back-button";
	}
</script>		
  <title>SCMS Home</title>
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
	<!--   <div id="menubar">
        <ul class="lavaLampWithImage" id="lava_menu">
          <li class="current"><a href="index.jsp">Home</a></li>
          <li><a href="ourwork.jsp">Our Work</a></li>
          <li><a href="news.jsp">News</a></li>
          <li><a href="gallery.jsp">Gallery</a></li>
          <li><a href="contactu.jsp">Contact Us</a></li>
          <li><a href="about.jsp">About Us</a></li>
          <li><a href="login.jsp">Login</a></li>
        </ul>
	  </div>    --><!--close menubar-->
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
        <div class="content_item">
          <h1>Welcomes You . . !</h1>
          <p>
          Cricket is one of the oldest games in the world and it continues to thrive today. The game is said to have originated in the 16th century with international matches being played since 1844. There is really no official documentation as to when Cricket started or even where it started. Much of the information that has been piece together has state that Cricket was a game that was thought up in the Saxon or Norman times by children living in the Weal, this is a thick area of woos an clearings in the South East area of England that is across Kent an Sussex.
Cricket started out as a child's game but the adult version of the game was said to have started in the 17th century. Some speculate that Cricket is a take off of a games called Bowls or lawn bowling with the slight variation that a bat is use to keep the ball from reaching the target almost similar to baseball. The basic tools use to play Cricket were thought to be matte lump of sheep's wool to be use as the ball and a stick, crook or farm too was use as the bat.
The very first mention of the games was in a 1598 court case where ownership of a plot of land was being contested in Surrey. An older man ha testified that he and his friends has played a game called creckett on the land over 50 years prior when they attended school there. In 1611, was the first time that an adult had mentioned playing the game rather than attending a church mass. Since then there has been many mentioned of the game in the English Civil War and then after the war ended a new Puritan Government had put a stop to more active sports like Cricket and Football.
Cricket began to grow after the Restoration of 1660 and this is when the game first attracted gamblers to the game. In 1664, the Gaming Act was passed and it put a limit on the stakes of a game to 100 pounds. By the end of the 17th century Cricket was a game that was betted on daily. In the 17th Century, North America was introduced to the game through the English Colonies. By the 18th century it had passed through other parts of the world.
Today, Cricket is still a major sport that still attracts players, spectators and even media interest as well. The ICC or the International Cricket Conference has over time expanded the development of the game and it hopes to produce more national teams that are capable of competing at the Test level. In June of 2001, the ICC has brought the Test Championship Table and in October 2002, the One Day International Championship Table was introduced.
The newest addition to Cricket is the Twenty20, this a style of Cricket that was first seen in England for professional inter county teams and it was introduced by the England and Wales Cricket Board. If you have never seen a game of Cricket, go see one; it really is very fun and exciting.
          </p>
          <h3>Up Coming Events...</h3>
          <div style="width:200px; float:left; padding: 0px 20px 10px 0px;"><marquee><img alt="image" src="images/image.jpg" /></marquee></div>
          <p>This website template uses the fancybox jquery tool to enhance the website, click on the image to the right to see. </p>
          <p>Ut tincidunt, ante vel fermentum iaculis, turpis sem pulvinar diam, sit amet ullamcorper nibh dui ac nibh. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos:</p>
          <p>Vestibulum tempus urna vitae neque vehicula sit amet tristique felis ultrices. Phasellus eu laoreet mauris. Integer sit amet ante nec ipsum euismod hendrerit et eget sapien. Duis velit ante, semper nec dapibus adipiscing, pellentesque vitae orci. Etiam adipiscing, justo ut faucibus placerat, neque libero accumsan ipsum, non pellentesque ligula nibh id justo. Aenean tellus nisl, bibendum vitae sollicitudin id, faucibus ut mi.</p>
          <p>Vestibulum tempus urna vitae neque vehicula sit amet tristique felis ultrices. Phasellus eu laoreet mauris. Integer sit amet ante nec ipsum euismod hendrerit et eget sapien. Duis velit ante, semper nec dapibus adipiscing, pellentesque vitae orci. Etiam adipiscing, justo ut faucibus placerat, neque libero accumsan ipsum, non pellentesque ligula nibh id justo. Aenean tellus nisl, bibendum vitae sollicitudin id, faucibus ut mi.</p>
          
          
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
				<!-- 	<img alt="image" src="TImage/c1.jpg " style="width: 200px; height: 150px; padding: 1px 2px 0px 0px;" />
					<img alt="image" src="TImage/c2.jpg " style="width: 200px; height: 150px; padding: 1px 2px 0px 0px;" />
					<img alt="image" src="TImage/c3.jpg " style="width: 200px; height: 150px; padding: 1px 2px 0px 0px;" />
					<img alt="image" src="TImage/c4.jpg " style="width: 200px; height: 150px; padding: 1px 2px 0px 0px;" />
					<img alt="image" src="TImage/c5.jpg " style="width: 200px; height: 150px; padding: 1px 2px 0px 0px;" />
					<img alt="image" src="TImage/c6.jpg " style="width: 200px; height: 150px; padding: 1px 2px 0px 0px;" />
					<img alt="image" src="TImage/c7.jpg " style="width: 200px; height: 150px; padding: 1px 2px 0px 0px;" />
					<img alt="image" src="TImage/c8.jpg " style="width: 200px; height: 150px; padding: 1px 2px 0px 0px;" />
					<img alt="image" src="TImage/c9.jpg " style="width: 200px; height: 150px; padding: 1px 2px 0px 0px;" /> -->
					</marquee>
          	</fieldset>
          	</form>
         <!--  <form action="" class="players">
           <fieldset class="row1">
            <legend><h3>Our Players</h3>
                </legend>
           </fieldset>
           </form>     -->
		</div><!--close content_item-->	
	      
		<div class="sidebar_container">   		  
		  <marquee direction="up"><div class="sidebar">
            <div class="sidebar_item">
               <blink><h2>Latest Sports News *</h2></blink>
			    <h4>April 2012</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque cursus tempor enim.</p>
		          <a href="#">Read more</a>
              </div><!--close sidebar_item--> 
          </div></marquee><!--close sidebar-->     		
		  <div class="sidebar">
            <div class="sidebar_item">
              <h2>Latest Club News *</h2>
		  	  <h4>April 2012</h4>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque cursus tempor enim.</p>
		        <a href="#">Read more</a>
            </div><!--close sidebar_item--> 
          </div><!--close sidebar-->  
		  <div class="sidebar">
            <div class="sidebar_item">
              <h2>Latest Blog</h2>
			  <h4>April 2012</h4>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque cursus tempor enim.</p>
		        <a href="#">Read more</a>
            </div><!--close sidebar_item--> 
          </div><!--close sidebar-->  
        </div><!--close sidebar_container-->	
       <br style="clear:both;" />
      </div><!--close content-->	
    </div><!--close site_content-->	
    <div id="footer">  
	  <div id="footer_content">
        <a href="http://validator.w3.org/check?uri=referer">Valid XHTML</a> | <a href="http://jigsaw.w3.org/css-validator/check/referer">Valid CSS</a> | <a href="http://fotogrph.com/">Images</a> | website template by <a href="http://www.araynordesign.co.uk">ARaynorDesign</a>
      </div><!--close footer_content-->	
    </div><!--close footer-->	
  </div><!--close main-->	
</body>
</html>
