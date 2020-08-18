<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.util.Date"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>SCMS Cricket Staff</title>
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
                <li><a href="/SCMS/ADMIN/home.jsp" class="selected">Home</a>
                </li>
                <li><a href="#">Staff</a>
                	<ul>
                		<li><a href="addstaffpage">Add Staff</a></li>
                		<li><a href="viewstaff">View Staff</a>
                	</ul>
                </li>
                
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
	  
	  
	  <form action="Register" class="register" id=formID>
				<h1>Staff Registration</h1>
				<fieldset class="row1">
					<legend>Account Details </legend>
					<p>
						<label>Email * </label> <input type="text" name="email" class="validate[required] text-input"/> 
						<label>Repeat email * </label> <input type="text" name="remail" class="validate[required] text-input"/>
					</p>
					<p>
						<label>Password* </label> <input type="text" name="password" class="validate[required] text-input"/> 
						<label>Repeat Password* </label> <input type="text" name="repass" class="validate[required] text-input"/> 
						<label class="obinfo">*
							obligatory fields </label>
					</p>
				</fieldset>
				<fieldset class="row2">
					<legend>Personal Details </legend>
					<p>
						<label>Name * </label> <input type="text" name="name"  class="validate[required] text-input"/>
					</p>
					<p>
						<label>Address * </label>
						<textarea rows="5" cols="25"  name="adrs" class="validate[required] text-input"></textarea>
					</p>
					<p>
						<label>Phone * </label> <input type="text" name="mob" maxlength="10" class="validate[required] text-input"/>
					</p>
					<p>
						<label>City  </label> <input type="text" name="city" class="long" class="validate[required] text-input"/>
					</p>
					<p>
						<label>Country * </label> <input type="text" name="country"  class="validate[required] text-input"/>
					</p>
					<p>
						<label>Type * </label> <select name="type" class="validate[required] text-input">
							<option>--Select--</option>
							<option value="CA">Club Admin</option>
							<option value="SM">Stadium Manager</option>
							<option value="TM">Tournament Manager</option>
							<option value="Team">Team Manager</option>
						</select>
					</p>
					</fieldset>
				<fieldset class="row3">
					<legend>Further Information </legend>
					<p>
						<label>Gender *</label> <input type="radio" value="male"  name="gender" class="validate[required] text-input"/> <label
							class="gender">Male</label> <input type="radio" name="gender" value="female" />
						<label class="gender">Female</label>
					</p>
					<p>
						<label>DOB * </label> <input type="text" name="dob"
							id="datepicker" onchange="fage(this.value);" class="validate[required] text-input">
</p>
					<p>
						<label>Nationality  </label> <select name="nationality" class="validate[required] text-input">
							<option value="0"></option>
							<option value="US">United States</option>
							<option value="India">India</option>
							<option value="Arabia">Arabia</option>
						</select>
					</p>
					<p>
						<label>Children  </label> <input type="checkbox" value="" />
					</p>
					
				</fieldset>
				<fieldset class="row4">
					<legend>Qualifications</legend>
					<p>
						<label>Experiance </label> <input type="text" name="exp" class="long" />
					</p>
					<p>
						<label>Post Graduate </label> <input type="text" name="pg" class="long" />
					</p>
					<p>
						<label>Under Graduate </label> <input type="text" class="long" name="ug"/>
					</p>
					<p>
						<label>Higher Secondery </label> <input type="text" class="lonog" name="hs"/>
					</p>
					<p>
						<label>SSLC </label> <input type="text" class="long" name="sslc"/>
					</p>
				</fieldset>
				<fieldset class="row5">
					<legend>Designation </legend>
					<p>
						<label>Club Name * </label> <input type="text" name="des" class="validate[required] text-input"/>
					</p>
					<p>
						<label>Team Name * </label> <input type="text" name="activity" class="validate[required] text-input"/>
					</p>
					
				</fieldset>
				<fieldset class="row6">
					<legend>Terms and Mailing </legend>
					<p class="agreement">
						<input type="checkbox" name="" class="validate[required] text-input"/> <label>* I accept the
							<a href="#">Terms and Conditions</a>
						</label>
					</p>
					<p class="agreement">
						<input type="checkbox" value="" /> <label>I want to
							receive personalized offers by your site</label>
					</p>
					<p class="agreement">
						<input type="checkbox" value="" /> <label>Allow partners
							to send me personalized offers and related services</label>
					</p>
				</fieldset>
				<div>
					<button class="button">Register &raquo;</button>
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
        </form>
        
        </div>
        
        
        </div>
         <div id="footer">  
	  <div id="footer_content">
	  </div>                 <!--close footer_content-->
	   </div>                  <!--close main-->	
</body>
</html>
	  