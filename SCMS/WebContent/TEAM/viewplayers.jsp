<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>SCMS Cricket</title>
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
    

</head>

<body>
<%
		String f = request.getParameter("f");
	%>
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
      <div id="content" >
        <div class="content_item">
          <h1>Welcome to our Team</h1>
          <h1>View Our Cricket Players</h1>
            
            	
            	<div class="CSSTableGenerator" >
                <table >
                    <tr>
                    	<td>
                    		ID
                    	</td>
                        <td>
                            Name
                        </td>
                        <td >
                            Address
                        </td>
                        <td>
                        	Contact
						</td>
                        <td>
                        	Specified
                        </td>
                        <td>
                        	Bat position
                        </td>
                        <td>
                        	Style
                        </td>
                        <td>
                        	Hand
                        </td>
                        <td>
                        	Bowl Style
                        </td>
                        <td>
                        	Mentality
                        </td>
                        <td>
                        	Field Position
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <s:iterator value="list">
                        
								<tr>
							
									<td><s:property value="player_id" /></td>
									<td><s:property value="pname" /></td>
									<td><s:property value="adrs" /></td>
								<td>
                        	         <table border=1 >
                        	        	 <tr >
											<td> Email </td>
											<td> Phone </td>
										</tr>
										<tr >
											<td><s:property value="email" /></td>
											<td><s:property value="ph" /></td>
										</tr>
									</table>
								</td>
									<td><s:property value="specified" /></td>
									<td><s:property value="batposition" /></td>
									<td><s:property value="style" /></td>
									<td><s:property value="hand" /></td>
									<td><s:property value="bowlstyle" /></td>
									<td><s:property value="mentality" /></td>
									<td><s:property value="fposition" /></td>
									<td><a href="editplayer?player_id=<s:property value="player_id" />"
									style="background:#3A6F39;
									border:none;
									color:#fff;
									padding: 5px 10px;
									cursor:pointer; ">Edit</a><p><p></p>
									<a href="deleteplayer?player_id=<s:property value="player_id"/>"
									style="background:#3A6F39;
									border:none;
									color:#fff;
									padding: 5px 10px;
									cursor:pointer; ">Delete</a></td>
								</tr>
							</s:iterator>
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
         
      
          
