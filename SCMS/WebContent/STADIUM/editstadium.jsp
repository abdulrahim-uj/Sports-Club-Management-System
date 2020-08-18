<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>SCMS Add Indoor/Outdoor Stadium</title>
  <meta name="description" content="free website template" />
  <meta name="keywords" content="enter your keywords here" />
  <meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
  <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/css/style.css" />
  <link rel="stylesheet" media="all" href="${pageContext.servletContext.contextPath}/css/ddsmoothmenu.css"/>
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
    
 <!-- Script for listbox to text field passing val -->  
  
    <script type="text/javascript">
            function copy()
            {
                var sel = document.getElementById('ln').value;
                
                document.getElementById('Location').value = sel;
            }
        </script>
        
    <script type="text/javascript">
            function pichcopy()
            {
                var sel = document.getElementById('pich').value;
                
                document.getElementById('Pich').value = sel;
            }
        </script>
    
    <script type="text/javascript">
            function whethercopy()
            {
                var sel = document.getElementById('wr').value;
                
                document.getElementById('Whether').value = sel;
            }
        </script>
    
    <script type="text/javascript">
            function tempcopy()
            {
                var sel = document.getElementById('tr').value;
                
                document.getElementById('Temperature').value = sel;
            }
        </script>
   <!-- <<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>> --> 
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
        <div class="content_item">
        
        <form id="example1" action="updatestadium" method="post"
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
				<div style="width: 170px; float: left;"><p>Stadium ID</p></div>
			</td>
			<td>
				<p>
				<input type="text" name="stadium_id" value="<s:property value = "stadium_id"/>" readonly="readonly"/>	
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
				<span>&nbsp Options &nbsp</span><select id="ln" name="ln"style="width:153px;">
						<option value=" ">--Select--</option>
						<option value="Indoor">Indoor</option>
						<option value="Outdoor">Outdoor</option>
					</select>
					<input type="button" value="Select" name="btn_move" id="btn_move" onclick="copy()">				
				</p>
			</td>
		</tr>
		<tr>
			<td>
				<div style="width: 170px; float: left;"><p>Stadium Name</p></div>
			</td>
			<td>
				<p>
				<input type="text" name="sname" value='<s:property value = "sname"/>'>	
				</p>
			</td>
		</tr>
		<tr>
			<td>
				<div style="width: 170px; float: left;"><p>Address</p></div>
			</td>
			<td>
				<p>
				<textarea rows="7" cols="27" name="adrs"><s:property value = "adrs"/></textarea>
				</p>
			</td>
		</tr>
		<tr>
			<td>
				<div style="width: 170px; float: left;">
				<p>Pitch Type</p>
				</div>
			</td>
			<td>
				<p>
					<input type="text" name="ptype" id="Pich" value='<s:property value = "ptype"/>' readonly="readonly">
					<span>&nbsp Options &nbsp</span><select id="pich" name="pich" style="width:153px;">
					
					<option value="">--Select--</option>
					<option value="Wet">Wet</option>
					<option value="Normal">Normal</option>
					<option value="Hard">Hard</option>
					<option value="Dump">Dump</option>
					<option value="Dusty">Dusty</option>
					<option value="Green">Green</option>
					<option value="Dry">Dry</option>
					</select>
					<input type="button" value="Select" name="btn_move" id="btn_move" onclick="pichcopy()">
				</p>
				
			</td>
		</tr>
		<tr>
			<td>
				<div style="width: 170px; float: left;"><p>Whether</p></div>
			</td>
			<td>
				<p>
					<input type="text" name="whether" id="Whether" value='<s:property value = "whether"/>' readonly="readonly">
					<span>&nbsp Options &nbsp</span><select id="wr" name="wr" style="width:153px;" >
						<option value=" ">--Select--</option>
						<option value="Sunny">Sunny</option>
						<option value="Overcast">Overcast</option>
						<option value="Rainy">Rainy</option>
					</select>
					<input type="button" value="Select" name="btn_move" id="btn_move" onclick="whethercopy()">
				</p>
			</td>
		</tr>
		<tr>
			<td>
				<div style="width: 170px; float: left;"><p>Temperature</p></div>
			</td>
			<td>
				<p>
				<input type="text" name="temp" id="Temperature" value='<s:property value = "temp"/>' readonly="readonly">
				<span>&nbsp Options &nbsp</span><select id="tr" name="tr" style="width:153px;">
					<option value=" ">--Select--</option>
					<option value="Cool">Cool</option>
					<option value="Mild">Mild</option>
					<option value="Warm">Warm</option>
					<option value="Hot">Hot</option>
					<option value="Humid">Humid</option>
				</select>
				<input type="button" value="Select" name="btn_move" id="btn_move" onclick="tempcopy()">
				</p>
			</td>
		</tr>
		<tr>
			<td>
				<div style="width: 170px; float: left;"><p>Total Seats</p></div>
			</td>
			<td>
				<p>
					<input type="text" name="tseat" value='<s:property value = "tseat"/>'/>
				</p>
			</td>
		</tr>
		<tr>
			<td>
				<div style="width: 170px; float: left;"><p>Amount</p></div>
			</td>
			<td>
				<p>
					<input type="text" name="amount" value='<s:property value = "amount"/>'/>
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
