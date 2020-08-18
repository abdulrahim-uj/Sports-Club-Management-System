<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="java.util.Date, com.database.*, java.sql.*"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>SCMS Add Previous Events</title>
  <meta name="description" content="free website template" />
  <meta name="keywords" content="enter your keywords here" />
  <meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
  <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/css/style.css" />
  <link rel="stylesheet" media="all" href="${pageContext.servletContext.contextPath}/css/ddsmoothmenu.css"/>
  <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/css/table.css" />
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
    
    
    <%
	Connection con1 = new Dbcon().getConnection();
	String query1 = "select * from event where status='3'";
	Statement stmt1 = con1.createStatement();
	ResultSet rs1 = stmt1.executeQuery(query1);
%> 


<%
	Connection con3 = new Dbcon().getConnection();
	String query3 = "select * from team join event join player where  event.team1=team.teamname";
	Statement stmt3 = con3.createStatement();
	ResultSet rs3 = stmt3.executeQuery(query3);
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
                <li><a href="/SCMS/STADIUM/home.jsp" class="selected">Home</a>
                </li>
                <li><a href="#">Fixture Details</a>
                	<ul>
                		
                		<li><a href="viewrecords">View</a></li>
                	</ul>
                </li>
                <li><a href="#">Score Sheet</a>
                    <ul>
                        <li><a href="#">Batting</a>
                        	<ul>
                        		
                        		<li><a href="viewbatscr">View</a></li>
                        	</ul>
                        </li>
                        <li><a href="#">Bowling</a>
                        	<ul>
                        		
                        		<li><a href="viewbowlscr">View</a></li>
                        	</ul>
                        </li>
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
	   <form action="bowlscr" class="register">
            <h1>Add Bowling Score Sheet</h1>
            	<h3>Team Name A</h3>
            	            
           
            	<div id="content">
        <div class="clear"></div>
        <div class="content_item">
        <table cellspacing="5">
             <tr>
             <td>
          	<div style="width:170px; float:left;"><p>Event_id</p></div>
          	</td>
          	<td>
		  	<div style="width:430px; float:right;"><p><input class="contact" type="text" name="event_id" value="<s:property value = "event_id"/>"readonly="readonly" /></p></div>
		  	</td>
		</tr>
                <tr>
             <td>
          	<div style="width:170px; float:left;"><p>Match Name</p></div>
          	</td>
          	<td>
		  	<div style="width:430px; float:right;"><p><input class="contact" type="text" name="mname" value="<s:property value = "mname"/>" /></p></div>
		  	</td>
		</tr>
		<tr>
	    	<td>
          	<div style="width:170px; float:left;"><p>Team Name</p></div>
          	</td>
          	<td>
		  	<div style="width: 430px; float: right;"><p><select  name="tname"><%
												while (rs1.next()) {
											%>
											<option value="">
											<option value="<%=rs1.getString(5)%>"><%=rs1.getString(5)%>
											<option value="<%=rs1.getString(7)%>"><%=rs1.getString(7)%>
											</option>
											<%
												}
											%></select>
		  	</p>
		  	</div>
		  	</td>
		</tr>
	    <tr>
	    	<td>
	    		<div style="width:170px; float:left;"><p>Player Name</p></div>
	    	</td>
	    	<td>
	    		<div style="width:430px; float:right;"><p><input class="team" type="text" id="player" name="pname" value="" /></p></div>
	    	</td>
	    </tr>
	    <tr>
	    	<td>
	    		<div style="width:170px; float:left;"><p>Total Overs</p></div>
	    	</td>
	    	<td>
	    		<div style="width:430px; float:right;"><p><input class="team" type="text" name="tover" value="" /></p></div>
	    	</td>
	    </tr>
	    <tr>
	    	<td>
	    		<div style="width:170px; float:left;"><p>maidian overs</p></div>
	    	</td>
	    	<td>
	    		<div style="width:430px; float:right;"><p><input class="team" type="text" name="mover" value="" /></p></div>
	    	</td>
	    </tr>
	    <tr>
	    	<td>
	    		<div style="width:170px; float:left;"><p>Wicket</p></div>
	    	</td>
	    	<td>
	    		<div style="width:430px; float:right;"><p><input class="team" type="text" name="wiket" value="" /></p></div>
	    	</td>
	    </tr>
	    <tr>
	    	<td>
	    		<div style="width:170px; float:left;"><p>Extras</p></div>
	    	</td>
	    	<td>
	    		<div style="width:430px; float:right;"><p>Noball<input class="team" type="text" name="nball" value="" /></p></div>
	    		<div style="width:430px; float:right;"><p>Wide<input class="team" type="text" name="wide" value="" /></p></div>
	    	</td>
	    </tr><tr>
	    	<td>
	    		<div style="width:170px; float:left;"><p>Runs</p></div>
	    	</td>
	    	<td>
	    		<div style="width:430px; float:right;"><p><input class="team" type="text" name="run" value="" /></p></div>
	    	</td>
	    </tr>
	     </table>
	     <div><button class="btn">Save &raquo;</button></div>
	  </div>
      
       </form>  
        <!--close content_item-->
        		        				<div class="sidebar_container">
					<div class="sidebar">
						<div class="sidebar_item">

							<script type="text/javascript">
								var from_array = new Array();

								// this array has the values for the source list
								//var to_array = new Array('Red',3,5);
								// this array has the values for the destination list(if any)
								function moveoutid() {
									var sda = document.getElementById('xxx');

									var len = sda.length;
				/* alert(len) */
									var sda1 = document.getElementById('m11');
									for (var j = 0; j < len; j++) {
										if (sda[j].selected) {
											var tmp = sda.options[j].text;
											var tmp1 = sda.options[j].value;
				/*	alert(tmp1);
				alert("o"+document.getElementById('r11').value+"o")  */
										if (document.getElementById('player').value == "") {
				/*	alert("df")  */
												document.getElementById('player').value = tmp1;
											}
											sda.remove(j);

										}
									}
								}

								function moveinid() {
									var sda = document.getElementById('xxx');
									var sda1 = document.getElementById('m11');
									var len = sda1.length;
									for (var j = 0; j < len; j++) {
										if (sda1[j].selected) {
											var tmp = sda1.options[j].text;
											var tmp1 = sda1.options[j].value;
											sda1.remove(j);
											j--;
											var y = document
													.createElement('option');
											y.text = tmp;
											try {
												sda.add(y, null);
											} catch (ex) {
												sda.add(y);
											}
										}
									}
								}
							</script>




							<h2>PLAYER NAMES</h2>

							<table border=1 align="left" valign=center style="width: 150px;">

								<tr>
									<td><h2>PLAYER NAMES<input type="text" name="tname" value="<s:property value = "tname"/>" /></h2></td>
								</tr>
								<tr>
									<td><select id=xxx multiple size=1 style="width: 200px; height: 200px; color:white; background-color: black;
													font-size: 20px; font-style: italic; font-weight: bold;">
											<%
												while (rs3.next()) {
											%>

											<option value="<%=rs3.getString(55)%>"><%=rs3.getString(55)%></option>
											<%
												}
											%>
											<script type="text/javascript">
												for (var i = 0; i < from_array.length; i++) {
													document.write('<option>'
															+ from_array[i]
															+ '</option>');
												}
											</script>
									</select> <input type=button value="Select" class="slct" onclick=moveoutid() /> 
</td>
					<!-- 
							<select id=ywyy multiple size=1 style="width:100;">


									<script type="text/javascript">
													for(var j=0;j<to_array.length;j++)
										{
										document.write('<option>'+to_array[j]+'</option>');
													}

										-->


							
								</tr>
							</table>

						</div>
					</div>
				</div>
            </div>	
          <div id="footer">  
	  <div id="footer_content">
        <a href="http://validator.w3.org/check?uri=referer">Valid XHTML</a> | <a href="http://jigsaw.w3.org/css-validator/check/referer">Valid CSS</a> | <a href="http://fotogrph.com/">Images</a> | website template by <a href="http://www.araynordesign.co.uk">ARaynorDesign</a>
      </div><!--close footer_content-->	
    </div><!--close footer-->	
  </div><!--close main-->	
</body>
</html>
