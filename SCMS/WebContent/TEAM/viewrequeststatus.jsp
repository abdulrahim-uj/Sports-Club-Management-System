<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.util.Date"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>Event Approved Form</title>
  <meta name="description" content="free website template" />
  <meta name="keywords" content="enter your keywords here" />
  <meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
  <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/css/style.css" />
  <link rel="stylesheet" media="all" href="${pageContext.servletContext.contextPath}/css/ddsmoothmenu.css"/>
<!--   <link rel="stylesheet" type="text/css" href="../css/registration.css" />    -->
  <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/css/table.css" />
<!--   <link rel="stylesheet" href="../css/pikaday.css">
  <script src="../js/pikaday.js"></script>                        -->
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
                		
                		<li><a href="modifyteampage">Create Team</a></li>
                		<li><a href="viewteamm">View Team</a></li>
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
	  
	     
        <form action="" class="register">
            <h1>View Approved (Up Coming) Fixtures</h1>
            
            	
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
                   <!-- <td>
                          	Contacct
                        </td>                                  -->
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
                            Status
                        </td>
                    </tr> 
                    <tr>
                     <s:iterator value="list"><tr>
                    
                        <td><s:property value="event_id" /></td>
									<td><s:property value="matchname" /></td>
									<td><s:property value="eventname"/></td>
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
						<!-- 		<td>
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
									</td>                                         -->
									<td><s:property value="mtype"/></td>
									<td><s:property value="stadiumname"/></td>
                      				<td>
                      					<table border="1">
                      						<tr>
                      							<td> Start date</td>
                      							<td> End date </td>
                      						</tr>
                      						<tr>
                      							<td><s:property value="date"/></td>
												<td><s:property value="date1"/></td>
											</tr>			
                      					</table>
									</td>
									<td>
                      					<table border="1">
                      						<tr>
                      							<td> Main Umpaire </td>
                      							<td> Leg Umpaire </td>
                      							<td> Theird Umpaire </td>
                      						</tr>
                      						<tr>
                      							<td><s:property value="umpaire1"/></td>
												<td><s:property value="umpaire2"/></td>
												<td><s:property value="umpaire3"/></td>
											</tr>			
                      					</table>
									</td>
                         			<td><s:property value="meettime"/></td>
                       				<td>
                            			<s:property value="status"/>
                        			</td>
                    </tr> </s:iterator>
                </table>
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
<!--     </div>         -->     <!--close footer-->	
  </div>                  <!--close main-->	
</body>
</html>
	  