<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.util.Date"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
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
	  
	  
	  <form id="example1" action="updatestaff" class="register" method="post">
				<h1>Edit Staff Details</h1>		
	
				<fieldset class="row1">
	<table>
				<tr><td>
				<div style="width: 170px; float:right:"><p>Staff ID</p></div>
				</td>
				<td>
				<p>
				<input type="text" style="float: right;" name="staff_id" value="<s:property value = "staff_id"/>" readonly="readonly"/>	
				</p>
				</td></tr></table>
					<legend>Account Details </legend>
					<p>
						<label>Email * </label> <input type="text" name="email" value='<s:property value="email"/>'/>
						<label>Repeat email * </label> <input type="text" name="remail" value='<s:property value="remail" />'/>
					</p>
				</fieldset>
				<fieldset class="row2">
					<legend>Personal Details </legend>
					<p>
						<label>Name * </label> <input type="text" name="name" class="long" value='<s:property value="name"/>' />
					</p>
					<p>
						<label>Address * </label>
						<textarea rows="5" cols="25" class="long" name="adrs"><s:property value="adrs" /></textarea>
					</p>
					<p>
						<label>Phone * </label> <input type="text" name="mob" maxlength="10" value="<s:property value="mob"/>" />
					</p>
					<p>
						<label>City * </label> <input type="text" name="city" class="long" value='<s:property value="city"/>' />
					</p>
					<p>
						<label>Country * </label> <input type="text" name="country" class="long" value='<s:property value="country"/>'/>
					</p>
					<p>
						<label>Type * </label><input type="text"name="type" id="Type" value="<s:property value="type"/>" />
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
						<label>Gender *</label><input type="text" name="gender" value="<s:property value="gender" />"/>
					</p>
					<p>
						<label>DOB * </label> <input type="text" name="dob"
							id="datepicker" onchange="fage(this.value);" value="<s:property value="dob" />"/>
					</p>
				</fieldset>
				<fieldset class="row4">
					<legend>Qualifications</legend>
					<p>
						<label>Experiance </label> <input type="text" name="exp" class="long" value='<s:property value="exp"/>' />
					</p>
					<p>
						<label>Post Graduate </label> <input type="text" name="pg" class="long" value='<s:property value="pg"/>' />
					</p>
					<p>
						<label>Under Graduate </label> <input type="text" class="long" name="ug" value='<s:property value="ug"/>'/>
					</p>
					<p>
						<label>Higher Secondery </label> <input type="text" class="lonog" name="hs" value='<s:property value="hs"/>'/>
					</p>
					<p>
						<label>SSLC </label> <input type="text" class="long" name="sslc" value='<s:property value="sslc"/>'/>
					</p>
				</fieldset>
				<fieldset class="row5">
					<legend>Designation </legend>
					<p>
						<label>Club Name * </label> <input type="text" class="long" name="des" value='<s:property value="des"/>'/>
					</p>
					<p>
						<label>Activity * </label> <input type="text" class="long" name="activity" value='<s:property value="activity"/>'/>
					</p>
					
				</fieldset>
				<fieldset class="row6">
					<legend>Terms and Mailing </legend>
					<p class="agreement">
						<input type="checkbox" value="" /> <label>* I accept the
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
					<input type="reset" value="clear" class="btn" >
					<input type="submit" class="btn" value="Update">
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
         <div id="footer">  
	  <div id="footer_content">
	  </div>                 <!--close footer_content-->
	   </div>                  <!--close main-->	
</body>
</html>
	  