<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.util.Date"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>Cricket Player Add</title>
  <meta name="description" content="free website template" />
  <meta name="keywords" content="enter your keywords here" />
  <meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
  <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/css/style.css" />
  <link rel="stylesheet" media="all" href="${pageContext.servletContext.contextPath}/css/ddsmoothmenu.css"/>
  <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/css/registration.css" />
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
                		
                		<li><a href="modifyteam.jsp">Create Team</a></li>
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
	  
        <form action="playerImage" class="register" method="post"
        				enctype="multipart/form-data">
            <h1>Add Player Details</h1>
             <fieldset class="row1">
                <legend>Image
                </legend>
                <p>
                    <input type="file" name="playerImage"
					class="validate[required] text-input"
					style="color: gray; -moz-box-shadow: 0 0 5px #999; -webkit-box-shadow: 0 0 5px #999; box-shadow: 0 0 5px #999; margin-bottom: 20px; font-size: 13px; outline: none; border: 1px solid #F0F0F0; background: #f0f0f0; width: 204px;">
			
                </p>
            </fieldset>                     
            <fieldset class="row2">
                <legend>Personal Details
                </legend>
                <p>
                    <label>Name *
                    </label>
                    <input type="text" name="pname" />
                </p>
                <p>
                    <label>Address *
                    </label>
                    <textarea rows="5" cols="26" name="adrs"></textarea>
                </p>
                <p>
                	<label>Email_id *
                	</label>
                	<input type="text" name="email" />
                </p>
                <p>
                    <label>Phone *
                    </label>
                    <input type="text" class="11" name="ph"/>
                </p>
                <p>
                	<label>Country *
                	</label>
                	<input type="text" name="country"/>
                </p>
            </fieldset>
            <fieldset class="row3">
                <legend>Further Information
                </legend>
                <p>
                    <label>Gender *</label> <input type="radio" value="male"  name="gender"/> <label
							class="gender">Male</label> <input type="radio" name="gender" value="female" />
						<label class="gender">Female</label>
                </p>
                <p>
                     <label>DOB *
                    </label>
 	                    <input type="text"  name="dob" id="datepicker"  onchange="fage(this.value);">
 	            </p>
            </fieldset>
            <fieldset class="row4">
            	<legend>Player Attributes
            	</legend>
            	<p>
            		<label>Specified</label>
            		<select name="specified">
                        <option>--select--</option>
                        <option value="bowler">Bowler</option>
                         <option value="spinbowler">Spin Bowler</option>
                        <option value="allroundsppinbowler">All Round Spin Bowler</option>
                        <option value="wk">Wicket Keaper</option>
                        <option value="wkbatsman">Wicket Keeper Batsman</option>
                        <option value="allrounder">Allrounder</option>
                        <option value="openingbowler">Opening Bowler</option>
                        <option value="openingbatsman">Opening Batsman</option>
                        <option value="batsman">Batsman</option>
                    </select>
            	</p>
            	<p>
            		<label>Bat position
            		</label>
            		<select name="batposition">
                        <option>--select--</option>
                        <option value="midleorder">Middle order</option>
                         <option value="loworder">Low order</option>
                        <option value="tailender">Tail ender</option>
                        <option value="opener">Opening batsman</option>
                    </select>
            	</p>
            	<p>
            		<label>Style</label>
            		<select name="style">
            			<option>--select--</option>
            			<option value="moderate">Moderate</option>
            			<option value="defensive">Defensive</option>
            			<option value="agresive">Aggressive</option>
            		</select>
            	</p>
            	<p>
            		<label>Hand</label>
            		<select name="hand">
            			<option>--select--</option>
            			<option value="left">Left</option>
            			<option value="right">Right</option>
            		</select>
            	</p>
            	<p>
            		<label>Bowl Style</label>
            		<select name="bowlstyle">
            			<option>--select--</option>
            			<option value="leftarmmedium">Left Arm Medium</option>
            			<option value="rightarmmedium">Right Arm Medium</option>
            			<option value="leftarmfm">Left Arm Fast Medium</option>
            			<option value="rightarmfm">Right Arm Fast Medium</option>
            			<option value="leftarmfast">Left Arm Fast</option>
            			<option value="rightarmfast">Right Arm Fast</option>
            			<option value="legspin">Leg Spin</option>
            			<option value="ofspin">Off Spin</option>
            			<option value="slowleftarm">Slow Left Arm</option>
            		</select>
            	</p>
            	<p>
            		<label>Mentality</label>
            		<select name="mentality">
            			<option>--select--</option>
            			<option value="agresive">Aggressive</option>
            			<option value="moderate">Moderate</option>
            			<option value="defensive">Defensive</option>
            		</select>
            	</p>
            	<p>
            		<label>Field position</label>
            		<select name="fposition">
            			<option>--select--</option>
            			<option value="wk">Wicket Keeper</option>
            			<option value="slip">Slip</option>
            			<option value="squareleg">Square Leg</option>
            			<option value="cover">Cover</option>
            			<option value="outfielder">Out Fielder</option>
            			<option value="gully">Gully</option>
            			<option value="closein">Close-in</option>
            		</select>
            	</p>
            </fieldset>
            <fieldset class="row5">
                <legend>User Agrement
                </legend>
                <p class="agreement">
                    <input type="checkbox" value=""/>
                    <label>*  I accept the <a href="#">Terms and Conditions</a></label>
                </p>
                <p class="agreement">
                    <input type="checkbox" value=""/>
                    <label>I want to receive personalized offers by your site</label>
                </p>
                <p class="agreement">
                    <input type="checkbox" value=""/>
                    <label>Allow partners to send me personalized offers and related services</label>
                </p>
            </fieldset>
            <div><button class="button">Register &raquo;</button></div>
            
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
            
        </form>
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
         <div id="footer">  
	  <div id="footer_content">
	  </div>
	   </div>                  <!--close main-->	
</body>
</html>
        
      
