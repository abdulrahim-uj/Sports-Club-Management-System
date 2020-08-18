<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>SCMS About Us</title>
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
        <div class="clear"></div>
        <div class="content_item">
        <table cellspacing="5">
        <tr>
        <td>Username</td><td><input type="text" /></td></tr>
        <tr><td>Password</td><td><input type="text" /></td></tr>
        <tr><td>Type</td><td><input type="text" /></td></tr>
       
        
        
        
        
        </table>
          <h2>Contact Us</h2>
          <p>This is what a contact form could look like on this website template:</p>
          <div style="width:170px; float:left;"><p>Name</p></div>
	      <div style="width:430px; float:right;"><p><input class="contact" type="text" name="your_name" value="" /></p></div>
          <div style="width:170px; float:left;"><p>Email Address</p></div>
		  <div style="width:430px; float:right;"><p><input class="contact" type="text" name="your_email" value="" /></p></div>
          <div style="width:170px; float:left;"><p>Message</p></div>
	      <div style="width:430px; float:right;"><p><textarea class="contact textarea" rows="8" cols="50" name="your_message"></textarea></p></div>
          <br style="clear:both;" />
          <p style="padding: 10px 0 10px 0;">Please enter the answer to this simple maths question (to prevent spam)</p>
          <div style="width:170px; float:left;"><p>Maths Question: 9 + 3 = ?</p></div>
	      <div style="width:430px; float:right;"><p><input type="text" name="user_answer" class="contact" /><input type="hidden" name="answer" value="4d76fe9775" /></p></div>
          <div style="width:430px; float:right;"><p style="padding-top: 15px"><input class="submit" type="submit" name="contact_submitted" value="Send" /></p></div>
        </div><!--close content_item-->
	    
		  <div class="sidebar_container">  	  
		    <div class="sidebar">
              <div class="sidebar_item">
                <h2>Latest Blog</h2>
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
