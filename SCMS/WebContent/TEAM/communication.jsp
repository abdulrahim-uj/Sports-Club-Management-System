<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,com.database.Dbcon"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>SCMS Communication</title>
  <meta name="description" content="free website template" />
  <meta name="keywords" content="enter your keywords here" />
  <meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
  <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/css/style.css" />
  <link rel="stylesheet" media="all" href="${pageContext.servletContext.contextPath}/css/ddsmoothmenu.css"/>
  <link rel="stylesheet" media="all" href="${pageContext.servletContext.contextPath}/css/jquery.ui.chatbox.css"/>
  <script type="text/javascript" src="${pageContext.servletContext.contextPath}/js/jquery.min.js"></script>
  <script type="text/javascript" src="${pageContext.servletContext.contextPath}/js/jquery.easing.min.js"></script>
  <script type="text/javascript" src="${pageContext.servletContext.contextPath}/js/jquery.lavalamp.min.js"></script>
  <script type="text/javascript" src="${pageContext.servletContext.contextPath}/js/jquery.ui.chatbox.js"></script>
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
                    String user = session.getAttribute("user").toString();
        %>
        <script type="text/javascript">
            var ID;
            var box = null;
            var ME="<%=user%>";
            $(document).ready(function() {

                $("a").click(function(event, ui) {

                    if (box) {
                        box.chatbox("option", "boxManager").toggleBox();

                        window.location.href="";

                    }
                    else {
                        box = $("#chat_div").chatbox({id: ID,
                            user: {key: "value"},
                            title:ID,
                            messageSent: function(id, user, msg) {

                                $("#chat_div").chatbox("option", "boxManager").addMsg(ME, msg);
                                // alert(id+":"+msg+ME);
                                //ajax to insert to chat
                                var xmlhttp;

                                if(window.XMLHttpRequest){
                                    xmlhttp=new XMLHttpRequest();
                                }else{
                                    xmlhttp=new ActiveXObject("");
                                }

                                xmlhttp.onreadystatechange=function(){
                                    if(xmlhttp.readyState==4 && xmlhttp.status==200){

                                        var a=xmlhttp.responseText;
                                    }
                                }
                                xmlhttp.open("Get","chatcation.jsp?Me="+ME+"&To="+ID+"&msg="+msg,true);
                                xmlhttp.send();
                            }
                        });
                    }
                });
            });

        </script>
        <script>
            setInterval(function(){
                var Ar=new Array();
                //ajax to get msg
                var xmlhttp;

                if(window.XMLHttpRequest){
                    xmlhttp=new XMLHttpRequest();
                }else{
                    xmlhttp=new ActiveXObject("");
                }

                xmlhttp.onreadystatechange=function(){
                    if(xmlhttp.readyState==4 && xmlhttp.status==200){

                        var a=xmlhttp.responseText;
                        if(a.length>6)
                        {

                            //alert(a);
                            Ar=a.split(":");
                            if(box)
                            {

                            }else if(Ar.length>0)
                            {

                                document.getElementById(Ar[0].trim()).click();

                            }
                            if(Ar.length>0)
                            {

                                $("#chat_div").chatbox("option", "boxManager").addMsg(Ar[0].trim(), Ar[1]);
                            }

                        }


                    }
                }
                xmlhttp.open("Get","chatcationGet.jsp?Me="+ME,true);
                xmlhttp.send();





            },3000);
        </script>
        <script>
            function toUser(a)
            {
                ID=a+"";
            }
        </script>
    
    
</head>

<body>
  <div id="main">
    <div id="site_content">  
      <div id="header">  
        <h1>Sports<span>Club</span></h1>
	    <h2>Management System</h2>
      </div><!--close header-->	
      
       <div id="nav">
    	 <div class="ddsmoothmenu1">
    	<div id="top_nav" class="ddsmoothmenu">   
            <ul>
                <li><a href="home.jsp" class="selected">Home</a>
                </li>
                <li><a href="cricket.jsp">Cricket</a></li>
                 <li><a href="#">Football</a>
                    <ul>
                        <li><a href="cricketregteam.jsp">Football</a></li>
                  </ul>
                </li>
                <li><a href="#">Hockey</a>
                	<ul>
           		   		<li><a href="crickettrack.jsp">Hockey</a></li>
                	</ul>
                </li>
                <li><a href="#">Basketball</a>
                	<ul>
           		   		<li><a href="crickettrack.jsp">Basketball</a></li>
                	</ul>
                </li>
                <li><a href="chat">Communication</a>
                
                
                                
                                    <li><a href="#" id="a" onclick="toUser(this.id)" >a</a></li>


               
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
      <div id="content">
        <div class="clear"></div>
        <div class="content_item">
        <table cellspacing="5">
      
      
      
          <h2>Communication Channel</h2>
          <p>Login as...</p>
          
          	
       </div>
        <!--close content_item-->
	    
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
