﻿<%@ page language="java" import="java.sql.*,databaseconnection.*" errorPage="Error.jsp"%>
<html>
<head>
<title>Patient Self-controllable and
Multi-level Privacy-preserving Cooperative
Authentication</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<link href="stylepink.css" rel="stylesheet" type="text/css" />
<style type="text/css">

	#inputArea
	{
	    font-family: verdana;
	    font-size: 13px;
	    margin-bottom: 5px;
	    display: block;
	    padding: 4px;
	    width: 300px;
	}
  .submit {

	background:#FFFFFF url("img/submit.jpg") no-repeat left ;
	font-size:11px;
	font-weight:bold;
	width:94px;
	height:30px;
}
    </style>
<script language="JavaScript">
function valid()
{
var a = document.f.name.value;
var b = document.f.pass.value;
if(a=="")
{
alert("Enter Username");
document.f.name.focus();
return false;
}
if(b=="")
{
alert("Enter Password");
document.f.pass.focus();
return false;
}
}
</script>
</head>

<body>

<div id="outerwrapper">



<div id="head">
    
   <div id="logo">
      <div style="font-size:35px;color:white;font-family-verdana;padding:30px 40px 30px 20px;line-height:1.2em;font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Patient Self-controllable and
Multi-level 
 

	  <div align="center">Privacy-preserving Cooperative
Authentication </div></div>
   </div><!-- end of logo -->
   
  </div>
<div id="innerwrapper">
<table align="center" width="1015">
<tr>
<td width="364" valign="top">
<table align="center" width="336">
<tr>
<td height="44"><img src="img/monthForward_normal.gif"></td>
<td width="328">&nbsp;&nbsp;<a href="index.html">Home</a></td>
</tr>
<tr>
<td height="44"><img src="img/monthForward_normal.gif"></td>
<td width="328">&nbsp;&nbsp;<a href="docreg.jsp">Doctor Register</a></td>
</tr>
<tr>
<td height="44"><img src="img/monthForward_normal.gif"></td>
<td width="328">&nbsp;&nbsp;<a href="patreg.jsp">Patient Register</a></td>
</tr>
<tr>
<td height="44"><img src="img/monthForward_normal.gif"></td>
<td width="328">&nbsp;&nbsp;<a href="phyreg.jsp">Physician Register</a></td>
</tr>
<tr>
<td height="44"><img src="img/monthForward_normal.gif"></td>
<td width="328">&nbsp;&nbsp;<a href="doclog.jsp">Doctor Login</a></td>
</tr>
<tr>
<td height="44"><img src="img/monthForward_normal.gif"></td>
<td width="328"><a href="patlog.jsp">&nbsp;&nbsp;Patient Login</a></td>
</tr>
<tr>
<td height="44"><img src="img/monthForward_normal.gif"></td>
<td width="328"><a href="adminlog.jsp">&nbsp;&nbsp;Admin Login</a></td>
</tr>
<tr>
<td height="44"><img src="img/monthForward_normal.gif"></td>
<td width="328"><a href="phylog.jsp">&nbsp;&nbsp;Physician Login</a></td>
</tr>

</table>
</td>
<td width="639" valign="top">
<table align="center" width="500" class="paragraping1">
<form action="admin.jsp" name="f" method="get" onSubmit="return valid();">
<div style="width:400px;height:300px;">
       <div align="center" class="paragraping1"><font color="#006600" size="3">Admin Login Here</font></div> <br>
        <label for="txtEmail" id>
            <font style="color:green;font-size:12px;font-family:verdana">Username:</font></label><br>
        <input id="inputArea" type="text" name="name"/><br>
        <label for="txtWebsite">
            <font style="color:green;font-size:12px;font-family:verdana">Password:</font></label><br><input id="inputArea" type="password" name="pass" />
	     
		<br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="sub"  class="submit">
</div>
</form>
</table>
</td>
</tr>
</table>   
</div>
<div id="footer">
<p align="center"><span style="float:center;font-family:verdana;">&nbsp;&nbsp;&nbsp;Patient Self-controllable and
Multi-level Privacy-preserving Cooperative
Authentication</span>
</p>
</div>
</div>

</body>
</html>