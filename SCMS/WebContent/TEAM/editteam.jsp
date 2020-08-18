<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="java.util.Date, com.database.*, java.sql.*"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Cricket Modify Team</title>
<meta name="description" content="free website template" />
<meta name="keywords" content="enter your keywords here" />
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.servletContext.contextPath}/css/style.css" />
<link rel="stylesheet" media="all"
	href="${pageContext.servletContext.contextPath}/css/ddsmoothmenu.css" />
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/css/pikaday.css">
<script src="${pageContext.servletContext.contextPath}/js/pikaday.js"></script>
<script type="text/javascript"
	src="${pageContext.servletContext.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.servletContext.contextPath}/js/jquery.easing.min.js"></script>
<script type="text/javascript"
	src="${pageContext.servletContext.contextPath}/js/jquery.lavalamp.min.js"></script>

<script type="text/javascript">
            function copy()
            {
                var sel = document.getElementById('ln').value;
                
                document.getElementById('Location').value = sel;
            }
        </script>

<script type="text/javascript">
    $(function() {
      $("#lava_menu").lavaLamp({
        fx: "backout",
        speed: 700
      });
    });
  </script>
<script type="text/javascript"
	src="${pageContext.servletContext.contextPath}/js/jquery.nivo.slider.pack.js"></script>
<script type="text/javascript">
    $(window).load(function() {
        $('#slider').nivoSlider();
    });
    </script>

<script type="text/javascript"
	src="${pageContext.servletContext.contextPath}/js/jquery_005.js"></script>
<script type="text/javascript"
	src="${pageContext.servletContext.contextPath}/js/ddsmoothmenu.js">

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
<script type="text/javascript"
	src="${pageContext.servletContext.contextPath}/js/jquery_004.js"></script>

<script type="text/javascript">
	$(function(){
		$("a[class^='prettyPhoto']").prettyPhoto({theme:'pp_default'});
	});
	</script>

<script type="text/javascript"
	src="${pageContext.servletContext.contextPath}/js/jquery_005.js"></script>
<script type="text/javascript"
	src="${pageContext.servletContext.contextPath}/js/ddsmoothmenu.js">

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
<script type="text/javascript"
	src="${pageContext.servletContext.contextPath}/js/jquery_004.js"></script>

<script type="text/javascript">
	$(function(){
		$("a[class^='prettyPhoto']").prettyPhoto({theme:'pp_default'});
	});
	</script>


<%
	Date d = new Date();
	int year = d.getYear() + 1900;
	int month = d.getMonth() + 1;

	int day = d.getDay();
%>

<%
	Connection con1 = new Dbcon().getConnection();
	String query1 = "select * from player";
	Statement stmt1 = con1.createStatement();
	ResultSet rs1 = stmt1.executeQuery(query1);
%>

<%
	Connection con2 = new Dbcon().getConnection();
	String query2 = "select * from player";
	Statement stmt2 = con2.createStatement();
	ResultSet rs2 = stmt2.executeQuery(query2);
%>

<%
	Connection con3 = new Dbcon().getConnection();
	String query3 = "select * from player";
	Statement stmt3 = con3.createStatement();
	ResultSet rs3 = stmt3.executeQuery(query3);
%>

<script>
            function showw(a)
            {
                // alert(a);
                if(a=="1")
                {
                    document.getElementById('na').style.display='block';
                    document.getElementById('m1').style.display='block';
                }
                else if(a=="2")
                {
                    document.getElementById('na').style.display='block';
                    document.getElementById('m1').style.display='block';
                    document.getElementById('m2').style.display='block';
                }
                else if(a=="3")
                {
                    document.getElementById('na').style.display='block';
                    document.getElementById('m1').style.display='block';
                    document.getElementById('m2').style.display='block';
                    document.getElementById('m3').style.display='block';
                }
                else if(a=="4")
                {
                    document.getElementById('na').style.display='block';
                    document.getElementById('m1').style.display='block';
                    document.getElementById('m2').style.display='block';
                    document.getElementById('m3').style.display='block';
                    document.getElementById('m4').style.display='block';
                }
                else if(a=="5")
                {
                    document.getElementById('na').style.display='block';
                    document.getElementById('m1').style.display='block';
                    document.getElementById('m2').style.display='block';
                    document.getElementById('m3').style.display='block';
                    document.getElementById('m4').style.display='block';
                    document.getElementById('m5').style.display='block';
                }
                else if(a=="6")
                {
                    document.getElementById('na').style.display='block';
                    document.getElementById('m1').style.display='block';
                    document.getElementById('m2').style.display='block';
                    document.getElementById('m3').style.display='block';
                    document.getElementById('m4').style.display='block';
                    document.getElementById('m5').style.display='block';
                    document.getElementById('m6').style.display='block';
                }
                else if(a=="7")
                {
                    document.getElementById('na').style.display='block';
                    document.getElementById('m1').style.display='block';
                    document.getElementById('m2').style.display='block';
                    document.getElementById('m3').style.display='block';
                    document.getElementById('m4').style.display='block';
                    document.getElementById('m5').style.display='block';
                    document.getElementById('m6').style.display='block';
                    document.getElementById('m7').style.display='block';
                }
                else if(a=="8")
                {
                    document.getElementById('na').style.display='block';
                    document.getElementById('m1').style.display='block';
                    document.getElementById('m2').style.display='block';
                    document.getElementById('m3').style.display='block';
                    document.getElementById('m4').style.display='block';
                    document.getElementById('m5').style.display='block';
                    document.getElementById('m6').style.display='block';
                    document.getElementById('m7').style.display='block';
                    document.getElementById('m8').style.display='block';
                }
                else if(a=="9")
                {
                    document.getElementById('na').style.display='block';
                    document.getElementById('m1').style.display='block';
                    document.getElementById('m2').style.display='block';
                    document.getElementById('m3').style.display='block';
                    document.getElementById('m4').style.display='block';
                    document.getElementById('m5').style.display='block';
                    document.getElementById('m6').style.display='block';
                    document.getElementById('m7').style.display='block';
                    document.getElementById('m8').style.display='block';
                    document.getElementById('m9').style.display='block';
                }else
                {
                    document.getElementById('na').style.display='none';
                    document.getElementById('m1').style.display='none';
                    document.getElementById('m2').style.display='none';
                    document.getElementById('m3').style.display='none';
                    document.getElementById('m4').style.display='none';
                    document.getElementById('m5').style.display='none';
                    document.getElementById('m6').style.display='none';
                    document.getElementById('m7').style.display='none';
                    document.getElementById('m8').style.display='none';
                    document.getElementById('m9').style.display='none';
                }
            }
        </script>

<script>
            function showr(r)
            {
                // alert(r);
                if(r=="1")
                {
                    document.getElementById('ra').style.display='block';
                    document.getElementById('r1').style.display='block';
                }
                else if(r=="2")
                {
                    document.getElementById('ra').style.display='block';
                    document.getElementById('r1').style.display='block';
                    document.getElementById('r2').style.display='block';
                }
                else if(r=="3")
                {
                    document.getElementById('ra').style.display='block';
                    document.getElementById('r1').style.display='block';
                    document.getElementById('r2').style.display='block';
                    document.getElementById('r3').style.display='block';
                }
                else if(r=="4")
                {
                    document.getElementById('ra').style.display='block';
                    document.getElementById('r1').style.display='block';
                    document.getElementById('r2').style.display='block';
                    document.getElementById('r3').style.display='block';
                    document.getElementById('r4').style.display='block';
                }
                else if(r=="5")
                {
                    document.getElementById('ra').style.display='block';
                    document.getElementById('r1').style.display='block';
                    document.getElementById('r2').style.display='block';
                    document.getElementById('r3').style.display='block';
                    document.getElementById('r4').style.display='block';
                    document.getElementById('r5').style.display='block';
                }else
                {
                    document.getElementById('ra').style.display='none';
                    document.getElementById('r1').style.display='none';
                    document.getElementById('r2').style.display='none';
                    document.getElementById('r3').style.display='none';
                    document.getElementById('r4').style.display='none';
                    document.getElementById('r5').style.display='none';
                }
            }
        </script>

</head>

<body>
	<div id="main">
		<div id="site_content">
			<div id="header">
				<h1>
					Sports <span>Club</span>
				</h1>
				<h2>Management System</h2>
			</div>
			<!--close header-->

			<div id="nav">
				<div class="ddsmoothmenu1">
					<div id="top_nav" class="ddsmoothmenu">
						<ul>
							<li><a href="home.jsp" class="selected">Home</a></li>
							<li><a href="cricketplayeraddpage">Add Player</a></li>
							<li><a href="viewplayers">View Players</a></li>
							<li><a href="#">Team</a>
								<ul>
									<li><a href="modifyteampage">Create Team</a></li>
									<li><a href="viewteam">View Team</a></li>
								</ul></li>
							<li><a href="cricketeventpage">Event Request</a></li>
							<li><a href="vieweventstatus">Event Status</a></li>
							<li><a href="../login.jsp">Logout</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div id="banner_image">
				<div id="slider-wrapper">
					<div id="slider" class="nivoSlider">
						<img alt=""
							src="${pageContext.servletContext.contextPath}/images/c1.jpg" />
						<img alt=""
							src="${pageContext.servletContext.contextPath}/images/c2.jpg" />
						<img alt=""
							src="${pageContext.servletContext.contextPath}/images/c3.jpg" />
						<img alt=""
							src="${pageContext.servletContext.contextPath}/images/c4.jpg" />
						<img alt=""
							src="${pageContext.servletContext.contextPath}/images/c5.jpg" />
						<img alt=""
							src="${pageContext.servletContext.contextPath}/images/c6.jpg" />
						<img alt=""
							src="${pageContext.servletContext.contextPath}/images/c7.jpg" />
						<img alt=""
							src="${pageContext.servletContext.contextPath}/images/c8.jpg" />
						<img alt=""
							src="${pageContext.servletContext.contextPath}/images/c9.jpg" />
						<img alt=""
							src="${pageContext.servletContext.contextPath}/images/c10.jpg" />
					</div>
					<!--close slider-->
				</div>
				<!--close slider-wrapper-->
			</div>
			<!--close banner_image-->
			<div id="content">
				<div class="clear"></div>
				<div class="content_item">
					<form action="createteam">

						<table cellspacing="5">


							<h2>Edit Team</h2>
							<p>Use this section to define the details of your team for up
								coming fixture</p>
							<tr>
								<!--   	<td>          
          	<div style="width:170px; float:left;"><p>Fixture Date</p></div>
          	</td>
          	<td>
          	 <input type="text"  name="dob" id="datepicker"  onchange="fage(this.value);">

	      	</td>    -->
	      					<tr>
	      						<td>
									<div style="width: 170px; float: left;">
										<p>Team Id</p>
									</div>
								</td>
								<td>
									<div style="width: 430px; float: right;">
										<p>
											 <input class="" type="text" name="team_id" value="" />
										</p>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div style="width: 170px; float: left;">
										<p>Club Name</p>
									</div>
								</td>
								<td>
									<div style="width: 430px; float: right;">
										<p>
											 <input class="" type="text" name="cname" value="" />
										</p>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div style="width: 170px; float: left;">
										<p>Team Name</p>
									</div>
								</td>
								<td>
									<div style="width: 430px; float: right;">
										<p>
											<input class="contact" type="text" name="tname" value="" />
										</p>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div style="width: 170px; float: left;">
										<p>Captain</p>
									</div>
								</td>
								<td><input class="contact" type="text" name="captain" id="capt" value="" /></td>
							</tr>
							<tr>
								<td>
									<div style="width: 170px; float: left;">
										<p>Vice Captain</p>
									</div>
								</td>
								<td><input class="contact" type="text" name="vcaptain" id="vcapt" value="" /></td>
							</tr>
							<tr>
								<td>
									<div style="width: 170px; float: left;">
										<p>Email Contact</p>
									</div>
								</td>
								<td>
									<div style="width: 430px; float: right;">
										<p>
											<input class="contact" type="text" name="email" value="" />
										</p>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div style="width: 170px; float: left;">
										<p>Phone</p>
									</div>
								</td>
								<td>
									<div style="width: 430px; float: right;">
										<p>
											<input class="contact" type="text" name="ph" value="" />
										</p>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div style="width: 170px; float: left;">
										<p>Number of players in side</p>
									</div>
								</td>
								<td>
									<div style="width: 430px; float: right;">
										<p>
											<input type="text" name="inside" onchange="showw(this.value)">
										</p>
									</div>
								</td>
							</tr>
							<tr style="width: 170px; float: left; display: none" id="na">
								<td style="font-family: serif; color: blue">Enter Members
									Names</td>
							</tr>
							<tr style="display: none" id="m1">
								<td>1.Members</td>
								<td><input type="text" id="m11" name="m1" /></td>


							</tr>
							<tr style="display: none" id="m2">
								<td>2.Members</td>
								<td><input type="text" id="m22" name="m2" /></td>


							</tr>
							<tr style="display: none" id="m3">
								<td>3.Members</td>
								<td><input type="text" id="m33" name="m3" /></td>


							</tr>
							<tr style="display: none" id="m4">
								<td>4.Members</td>
								<td><input type="text" id="m44" name="m4" /></td>


							</tr>
							<tr style="display: none" id="m5">
								<td>5.Members</td>
								<td><input type="text" id="m55" name="m5" /></td>


							</tr>
							<tr style="display: none" id="m6">
								<td>6.Members</td>
								<td><input type="text" id="m66" name="m6" /></td>


							</tr>
							<tr style="display: none" id="m7">
								<td>7.Members</td>
								<td><input type="text" id="m77" name="m7" /></td>


							</tr>
							<tr style="display: none" id="m8">
								<td>8.Members</td>
								<td><input type="text" id="m88" name="m8" /></td>


							</tr>
							<tr style="display: none" id="m9">
								<td>9.Members</td>
								<td><input type="text" id="m99" name="m9" /></td>
							</tr>


							<tr>
								<td>
									<div style="width: 170px; float: left;">
										<p>Number of players reserve</p>
									</div>
								</td>
								<td>
									<div style="width: 430px; float: right;">
										<p>
											<input type="text" name="reserve"
												onchange="showr(this.value)">
										</p>
									</div>
								</td>
							</tr>
							<tr style="width: 170px; float: left; display: none" id="ra">
								<td style="font-family: serif; color: blue">Enter Members
									Names</td>
							</tr>
							<tr style="display: none" id="r1">
								<td>1.Members</td>
								<td><input type="text" id="r11" name="r1" value="" /></td>


							</tr>
							<tr style="display: none" id="r2">
								<td>2.Members</td>
								<td><input type="text" id="r22" name="r2" value="" /></td>


							</tr>
							<tr style="display: none" id="r3">
								<td>3.Members</td>
								<td><input type="text" id="r33" name="r3" value="" /></td>


							</tr>
							<tr style="display: none" id="r4">
								<td>4.Members</td>
								<td><input type="text" id="r44" name="r4" value="" /></td>


							</tr>
							<tr style="display: none" id="r5">
								<td>5.Members</td>
								<td><input type="text" id="r55" name="r5" value="" /></td>
							</tr>
						</table>
						<div>
							<button class="btn">Create &raquo;</button>
						</div>
					</form>
				</div>


				<script>

        var picker = new Pikaday(
        {
            field: document.getElementById('datepicker'),
            firstDay: 1,
            minDate: new Date('1900-01-01'),
            maxDate: new Date('<%=year%>-<%=month%>-<%=day%>'),
						yearRange : [ 1900,
				<%=year%>
					]
					});
				</script>

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
										if (document.getElementById('capt').value == "") {
				/*	alert("df")  */
												document.getElementById('capt').value = tmp1;
											}else if (document
													.getElementById('vcapt').value == "") {
												document.getElementById('vcapt').value = tmp1;
											}
											else if (document
													.getElementById('m11').value == "") {
												document.getElementById('m11').value = tmp1;
											}
											else if (document
													.getElementById('m22').value == "") {
												document.getElementById('m22').value = tmp1;
											}
											else if (document
													.getElementById('m33').value == "") {
												document.getElementById('m33').value = tmp1;
											}
											else if (document
													.getElementById('m44').value == "") {
												document.getElementById('m44').value = tmp1;
											}
											else if (document
													.getElementById('m55').value == "") {
												document.getElementById('m55').value = tmp1;
											}
											else if (document
													.getElementById('m66').value == "") {
												document.getElementById('m66').value = tmp1;
											}
											else if (document
													.getElementById('m77').value == "") {
												document.getElementById('m77').value = tmp1;
											}
											else if (document
													.getElementById('m88').value == "") {
												document.getElementById('m88').value = tmp1;
											}
											else if (document
													.getElementById('m99').value == "") {
												document.getElementById('m99').value = tmp1;
											}else if (document.getElementById('r11').value == "") {
				/*	alert("df")    */
												document.getElementById('r11').value = tmp1;
											} else if (document
													.getElementById('r22').value == "") {
												document.getElementById('r22').value = tmp1;
											} else if (document
													.getElementById('r33').value == "") {
												document.getElementById('r33').value = tmp1;
											} else if (document
													.getElementById('r44').value == "") {
												document.getElementById('r44').value = tmp1;
											} else if (document
													.getElementById('r55').value == "") {
												document.getElementById('r55').value = tmp1;
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
									<td><h2>PLAYER NAMES</h2></td>
								</tr>
								<tr>
									<td><select id=xxx multiple size=1 style="width: 200px; height: 200px; color:white; background-color: black;
													font-size: 20px; font-style: italic; font-weight: bold;">
											<%
												while (rs3.next()) {
											%>

											<option value="<%=rs3.getString(3)%>"><%=rs3.getString(3)%></option>
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


									</td>
								</tr>
							</table>

						</div>

					</div>
				</div>
			</div>
			<!--close footer_content-->
		</div>
		<!--close footer-->
	</div>
	<!--close main-->
</body>
</html>
