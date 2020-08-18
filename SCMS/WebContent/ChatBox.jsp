<%-- 
    Document   : ChatBox
    Created on : Dec 7, 2013, 12:28:06 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,com.database.Dbcon"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <script>

            window.location.hash="no-back-button";
            window.location.hash="Again-No-back-button";//again because google chrome don't insert first hash into history
            window.onhashchange=function(){window.location.hash="no-back-button";}
        </script>
        <title>Online Chating</title>
        <link href="csschat/style.css" rel="stylesheet" type="text/css" media="all" />
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link rel="stylesheet" href="csschat/examples.css" type="text/css" media="all" />
        <script src="jschat/jquery-1.8.1.min.js"></script>
        <script src="jschat/jquery.carouFredSel-6.0.5-packed.js"></script>
        <script type="text/javascript" language="javascript">
            $(function() {

                $("#foo1").carouFredSel();
                $("#foo2").carouFredSel({
                    width	: 1000,
                    items	: 8,
                    scroll	: 4
                });
                $("#foo3").carouFredSel({
                    items 		: 1,
                    direction	: "up",
                    auto : {
                        easing		: "elastic",
                        duration	: 1000,
                        timeoutDuration: 2000,
                        pauseOnHover: true
                    }
                }).find(".slide").hover(
                function() { $(this).find("div").slideDown(); },
                function() { $(this).find("div").slideUp();	}
            );
            });
        </script>

        <script type="text/javascript">
          

            setInterval(function(){funAj()},3000);
            function funDel()
            {
                var too=document.getElementById('rece').value;


                var xmlhttp=new XMLHttpRequest();

                /* if(window.XMLHttpRequest())
                {

                    xmlhttp=new XMLHttpRequest();

                }else
                {

                    xmlhttp=new ActiveXobject("Microsoft.XMLHTTP");
                } */
                xmlhttp.onreadystatechange=function()
                {

                    if(xmlhttp.readyState==4 && xmlhttp.status==200)
                    {

                        window.close();

                    }


                }


                xmlhttp.open("GET","MessageDelete.jsp?to="+too, true);
                xmlhttp.send();
            }

            function funAjax(to)
            {
                var namE=document.forms["example1"]["neW"].value;


                var xmlhttp=new XMLHttpRequest();

               /*  if(window.XMLHttpRequest())
                {

                    xmlhttp=new XMLHttpRequest();

                }else
                {

                    xmlhttp=new ActiveXobject("Microsoft.XMLHTTP");
                } */
                xmlhttp.onreadystatechange=function()
                {

                    if(xmlhttp.readyState==4 && xmlhttp.status==200)
                    {
                        
                        document.getElementById('sr').value="";
                        document.getElementById('sr').placeholder="Type your message here....";


                    }


                }


                xmlhttp.open("GET","MessageUpdation.jsp?message="+namE+"&to="+to, true);
                xmlhttp.send();
            }

            function funAj()
            {
                    

                var too=document.getElementById('rece').value;
                    


             var xmlhttp=new XMLHttpRequest();

                
                xmlhttp.onreadystatechange=function()
                {

                    if(xmlhttp.readyState==4 && xmlhttp.status==200)
                    {
                           
                        var a=new Array();
                            
                          
                        a=xmlhttp.responseText.split("$");
                        var c="";
                        for(  var j=0; j < a.length ;j++)
                        {
                            c +=a[j]+"<br/>";
                                
                        }
                      
                        if(c.length==10)
                        {

                           
                        }else
                        {
                            document.getElementById('setH').innerHTML=  "<table style='width: 100%;border-collapse: collapse;'>  <tr  style='background: #eee;'><td style='background: #333;color: white;  font-weight: bold;padding: 5px;' id='setHere'></td></tr> </table>";












                            document.getElementById('setHere').innerHTML=c;
                        }
                    }


                }


                xmlhttp.open("GET","MessageUpdationView.jsp?to="+too, true);
                xmlhttp.send();
            }


            $(document).ready(function(){
                //open popup
                $("#pop").click(function(){
                    $("#example1").fadeIn(1000);
                    positionPopup();
                });

                //close popup
                $("#close").click(function(){
                    $("#example1").fadeOut(500);
                });
            });

            //position the popup at the center of the page
            function positionPopup(){
                if(!$("#example1").is(':visible')){
                    return;
                }
                $("#example1").css({
                    left: ($(window).width() - $('#example1').width()) / 2,
                    top: ($(window).width() - $('#example1').width()) / 7,
                    position:'absolute'
                });
            }

            //maintain the popup at center of the page when browser resized
            $(window).bind('resize',positionPopup);

        </script>
        <style type="text/css">
            #example1{
                margin-left:  0%;
                margin-top: 0%;
                border: 9px solid #1ab37b;
                padding: 10px;
                background: white;
                width: 509px;
                height: 550px;
            }

        </style>
        <style>



            div.mask {
                position:           absolute;
                z-index:            1;
                top:                0;
                left:               0;
                width:              100%;
                height:             100%;
                background-color:   #800000;

            }

        </style>

     
        <script type="text/javascript" language="javascript">
            var siteroot = "../";
        </script>
    </head>
    <body>

        <%
                    Dbcon db = new Dbcon();
                    String sql = "update chat set status=1 where frm='" + request.getParameter("f") + "' and too='" + session.getAttribute("user").toString() + "' ";
                    db.insertUpdateDeleteData(sql);
        %>



        <input type="text" id="rece" style="display: none" value="<%=request.getParameter("f").toString()%>"/>




        <div id="mask" class="mask">

            <form id="example1"  action="StudentUpdation.jsp">

                <a onclick="funDel()" style="  float:right; width:25px; height:24px;background:url('images/close.png') no-repeat center center;"></a>
                <br/><br/>





                <div id="setH"></div>








                <%
                            StringBuffer buffer = new StringBuffer(request.getParameter("f").toString());

                            String f = buffer.charAt(0) + "";

                            String msg = buffer.replace(0, 1, f.toUpperCase()).toString();%>


                <%--<textarea  style="color: gray;-moz-box-shadow: 0 0 5px #999;-webkit-box-shadow: 0 0 5px #999;box-shadow: 0 0 5px #999;margin-bottom: 20px;font-size: 13px;outline: none;padding: 5px;border: 1px solid #F0F0F0;width: 490px;height: 430px;background:#f0f0f0;"  ></textarea>--%>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/1386439121_bullet-red.png"/><img src="images/1386439121_bullet-red.png"/><img src="images/1386439121_bullet-red.png"/><br/><input id="sr" type="text" name="neW"  style="background:  #f0f0f0;-moz-box-shadow: 0 0 5px #999;-webkit-box-shadow: 0 0 5px #999;box-shadow: 0 0 5px #999;margin-bottom: 20px;font-size: 13px;outline: none;border: 3px solid #9ACD32;width:410px;height: 15px;" placeholder="Send Message To <%=msg%> here....">&nbsp;&nbsp;<a    onclick="funAjax('<%=request.getParameter("f").toString()%>')" style="width: 70px;height: 33.2px" class="submit">Send</a>



                <%--<a  id="close"  class="submit">Close</a>--%>

            </form>
        </div>

    </body>
</html>
