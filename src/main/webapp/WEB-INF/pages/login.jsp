<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>



  
#footer {
	position: relative;
	bottom: 0;
	background-color: #6f7373;
	width: 97%;
	height: 100px;
}

#header {
	background-color: #61d0c5;
	position: absolute;
	top: 0;
	width: 97%;
	height: 100px;
}

#headerlogo img {
	width: 100px;
	top: 0;
}

#header-nav {
	float: right;
	margin-top: 52px;
}

#header-logos img{
    top:0;
    float:right;
   
    

}

#header-nav span {
	-moz-box-shadow: 0px 0px 0px 0px #276873;
	-webkit-box-shadow: 0px 0px 0px 0px #276873;
	box-shadow: 0px 0px 0px 0px #276873;
	background-color: #599bb3;
	-moz-border-radius: 28px;
	-webkit-border-radius: 28px;
	border-radius: 28px;
	border: 1px solid #29668f;
	display: inline-block;
	cursor: pointer;
	color: #ffffff;
	font-family: Georgia;
	font-size: 17px;
	font-weight: bold;
	padding: 13px 19px;
	text-decoration: none;
	text-shadow: 0px 1px 0px #3d768a;
}

.myButton:hover {
	background-color: #408c99;
}

#header-nav span active {
	position: relative;
	top: 1px;
}

#main {
	position: relative;
	padding-left: 5px;
	width: 1500px;
	margin: 25px;
}
</style>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="src/main/webapp/webresources/cssstyles/style.css">
<title>Registration Page</title>
</head>
<body>

	<div id="header">
		<div id="header-nav">
			<span><a href="${pageContext.request.contextPath}/home.html">Home</a></span>
			<span><a
				href="${pageContext.request.contextPath}/aboutus.html">AboutUs</a></span> <span><a
				href="${pageContext.request.contextPath}/activities.html">Activities</a></span>
			<span><a
				href="${pageContext.request.contextPath}/gallery.html">Gallery</a></span> <span><a
				href="${pageContext.request.contextPath}/contactus.html">ContactUs</a></span>
			<span><a href="${pageContext.request.contextPath}/login.html">Register</a></span>

		
		<div>
		<a href="https://www.facebook.com/profile.php?id=100011786641957"><img src="http://www.utic.edu.py/v6/images/face.png" style="width: 30px;height: 30px;/* margin-right: -24px; */margin-top: -93px;margin-left: 500px;"></a>
		</div>
		<div>
		<a href="https://twitter.com/rotaract_yuva"><img src="http://www.yeahmobi.com/uploads/image/20150807/1438935740.png" style="width:30px;height:30px;margin-top:-93px;margin-left:538px;"></a>
		</div>
		<div>
		<a href="https://www.youtube.com/channel/UCSSDKtOjQm5qwbPv_G_gcYg"><img src="https://www.shareicon.net/data/256x256/2015/08/29/92753_youtube_606x606.png" style="width:30px;height:30px;margin-top:-93px;margin-left:572px;"></a>
		</div>
		<div><p style="margin-top: -89px;margin-left: 253px;font-style: oblique;font-family: serif;font-size: 16px;">rotaractyuvaguntur3150@gmail.com</p></div>
		<div><p style="margin-top: -93px;margin-left: 600px">|</div>
		
		</div>
		
		<div id="headerlogo">
			<img
				src="https://pbs.twimg.com/profile_images/515000607749332992/w48pZobG_400x400.jpeg" style="
    margin-left: 22px;" />
			<span
				style="font-size: 40px; font-family: cursive; margin-left: 2%; vertical-align: top;">Rotaract
				Club Of Yuva</span>
	</div>

		<form:form action="${pageContext.request.contextPath}/userdetails"
			method="post" modelAttribute="details">

			<div id="main">
				<table id="tablemenu">

					<tr style="text-align: center;">
						<th style="text-align: center; font-size: 20px;">Registration
							Details</th><td>(* fields are mandatory)</td>
					</tr>
					<tr style="height: 10px;"></tr>
                                  
					<tr>
						<td>FirstName:*</td>
						<td><input type="text" name="firstname"
							placeholder="Enter first name"></td>  <td>  <form:errors path="firstname" cssStyle="color:red"> </form:errors></td>
							
					</tr>
					<tr>
						<td>LastName:*</td>
						<td><input type="text" name="lastname"
							placeholder="Enter Last Name"></td><td><form:errors path="lastname" cssStyle="color:red"> </form:errors></td>
					</tr>
					<br>
					<tr>
						<td>Email:*</td>
						<td><input type="email" name="email" placeholder="Enter Email @gmail.com"></td><td>  <form:errors path="email" cssStyle="color:red"> </form:errors></td>
					</tr>
					<tr>
						<td>Password:*</td>
						<td><input type="password" name="password"
							placeholder="Enter Password"></td><td>  <form:errors path="password" cssStyle="color:red"> </form:errors></td>
					</tr>
					<tr>
						<td>Confirm Password:*</td>
						<td><input type="password" name="confirmpassword"
							placeholder="Re-Enter the Password"></td><td>  <form:errors path="confirmpassword" cssStyle="color:red"> </form:errors></td>
					</tr>
					<tr>
						<td>DateOfBirth:*</td>
						<td><input type="text" name="dob"
							placeholder="Enter DOB (yyyy/mm/dd)"></td><td>  <form:errors path="dob" cssStyle="color:red"> </form:errors></td>
					</tr>

					<tr>
						<td>Gender:*</td>
						<td><input type="radio" value="Male" name="gender">Male
							<input type="radio" value="Female" name="Gender">Female</td><td>  <form:errors path="gender" cssStyle="color:red"> </form:errors></td>
					</tr>
					<tr>
						<td>Mobile:*</td>
						<td><input type="text" name="mobilenumber"
							placeholder="Enter Mobile Number"></td><td>  <form:errors path="mobilenumber" cssStyle="color:red"> </form:errors></td>
					</tr>
					<tr>
						<td>Address1:*</td>
						<td><input type="text" name="address1"
							placeholder="Enter Street Address"></td><td>  <form:errors path="address1" cssStyle="color:red"> </form:errors></td>
					</tr>
					<tr>
						<td>Address2:*</td>
						<td><input type="text" name="address2"
							placeholder="Enter Apt Number"></td><td>  <form:errors path="address2" cssStyle="color:red"> </form:errors></td>
					</tr>
					<tr>
						<td>City:*</td>
						<td><input type="text" name="city" placeholder="Enter City"></td><td>  <form:errors path="city" cssStyle="color:red"> </form:errors></td>
					</tr>
					<tr>
						<td>State:*</td>
						<td><input type="text" name="state" placeholder="Enter State"></td><td>  <form:errors path="state" cssStyle="color:red"> </form:errors></td>
					</tr>
					<tr>
						<td>Country:*</td>
						<td><input type="text" name="country"
							placeholder="Enter Country"></td><td>  <form:errors path="country" cssStyle="color:red"> </form:errors></td>
					</tr>
					<tr>
						<td>ZipCode:*</td>
						<td><input type="text" name="zipcode"
							placeholder="Enter ZipCode"></td><td>  <form:errors path="zipcode" cssStyle="color:red"> </form:errors></td>
					</tr>
					<tr>
						<td>Alternate Email:*</td>
						<td><input type="text" name="altemail"
							placeholder="Enter Alternate Email"></td><td>  <form:errors path="altemail" cssStyle="color:red"> </form:errors></td>
					</tr>
					<tr style="height: 15px"></tr>
					<tr style="text-align: center;">
						<td colspan=2><button style="font-size: 20px">Register</button></td>
					</tr>
				</table>
    
			</div>

		</form:form>

		
</body>

<div id="footer"></div>
</html>