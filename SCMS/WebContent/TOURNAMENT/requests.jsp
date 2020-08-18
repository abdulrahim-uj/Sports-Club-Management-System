<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.util.Date"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>SCMS Fixture Requests</title>
  <meta name="description" content="free website template" />
  <meta name="keywords" content="enter your keywords here" />
  <meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
  <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/css/style.css" />
  <link rel="stylesheet" media="all" href="${pageContext.servletContext.contextPath}/css/ddsmoothmenu.css"/>
  <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/css/table.css" />
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
                <li><a href="/SCMS/TOURNAMENT/home.jsp" class="selected">Home</a>
                </li>
                <li><a href="#">Cricket</a>
                    <ul>
                    	<li><a href="viewrequests">Requests</a></li>
                    	<li><a href="approved">View Fixtures</a></li>
                    </ul>
                   </li> 
              <!--      <li><a href="calendar.jsp">Tournament Calendar</a>
                    <ul>
                        <li><a href="calander.jsp">Cricket</a></li>
                  </ul>
                </li>                                                 -->
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
	  
	  		<div class="CSSTableGenerator" >
	  		
                <table >
                    <tr>
                    	<td>
                    		Event ID
                    	</td>
                        <td>
                            Match Name
                        </td>
                        <td>
                        	Event Name
                        </td>
                        <td >
                            Location
                        </td>
                        <td>
                            Team v/s Team
                        </td>
                        <td>
                          	Contacct
                        </td>
                        <td>
                            Match Type
                        </td>
                        <td>
                            Stadium Name
                        </td>
                        <td>
                            Event Date
                        </td>
                        <td>
                            Umpaires...
                        </td>
                        <td>
                        	Meet Time
                        </td>
                        <td>
                            Approval
                        </td>
                    </tr>
                    <tr>
                        <s:iterator value="list">
								<tr>
									<td><s:property value="event_id" /></td>
									<td><s:property value="matchnam" /></td>
									<td><s:property value="eventnam"/></td>
									<td><s:property value="location"/></td>
									<td>
                        	         	<table border=1 >
                        	        		<tr >
												<td> Team </td>
												<td> Team </td>
											</tr>
											<tr >
												<td><s:property value="team" /></td>
												<td><s:property value="team1" /></td>
											</tr>
										</table>
									</td>
									<td>
										<table border="1">
											<tr>
												<td> Team </td>
												<td> Team </td>
											</tr>
											<tr>
												<td><s:property value="contact"/></td>
												<td><s:property value="contact1"/></td>
											</tr>		
										</table>
									</td>
									<td><s:property value="mtype"/></td>
									<td>
                           					 <p><a href="availablestadium?date=<s:property value="date"/>&date1=<s:property value="date1"/>&ev=<s:property value="event_id"/>">Select Stadium</a></p>
                      				</td>
                      				<td>
                      					<table border="1">
                      						<tr>
                      							<td> Start date</td>
                      							<td> End date </td>
                      						</tr>
                      						<tr >
                      							<td><s:property value="date"/></td>
												<td><s:property value="date1"/></td>
											</tr>			
                      					</table>
                      					
									</td><form action="approve">
                         			<td>
                         				<input class="umpaire" type="text" name="ump1" value="" />
                         				<input class="umpaire" type="text" name="ump2" value="" />
                         				<input class="umpaire" type="text" name="ump3" value="" />
                         				<input class="umpaire" type="hidden" name="event_id" value="<s:property value="event_id"/>" />
                         				
                         </td>
                         <td>
                         	<input class="mtime" type="text" name="meettime" value="" />
                         </td>
                         <td>
                          <input type="submit" value="Submit"> 
                            <p><a href="novacancy.jsp">no vacancy</a></p>
                        </td></form>
                        </s:iterator>
                    </tr>
                </table>
            </div>
            <div><button class="btn">Save &raquo;</button></div>
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
             <div id="footer">  
	  <div id="footer_content">
        <a href="http://validator.w3.org/check?uri=referer">Valid XHTML</a> | <a href="http://jigsaw.w3.org/css-validator/check/referer">Valid CSS</a> | <a href="http://fotogrph.com/">Images</a> | website template by <a href="http://www.araynordesign.co.uk">ARaynorDesign</a>
      </div><!--close footer_content-->	
    </div><!--close footer-->	
  </div><!--close main-->	
</body>
</html>