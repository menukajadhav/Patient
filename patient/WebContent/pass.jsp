<%@ page language="java" import="java.sql.*,databaseconnection.*" errorPage="Error.jsp"%>
<html>
<head>
<title>Patient Self-controllable and
Multi-level Privacy-preserving Cooperative
Authentication</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<link href="stylepink.css" rel="stylesheet" type="text/css" />

</head>

<body>

<div id="outerwrapper">



<div id="head">
    
   <div id="logo">
      <div style="font-size:35px;color:white;font-family-verdana;padding:30px 40px 30px 20px;line-height:1.2em;font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Patient Self-controllable and
Multi-level
 

	  <div align="center">Privacy-preserving Cooperative
Authentication</div></div>
   </div><!-- end of logo -->
   
  </div>
<div id="innerwrapper">
<table align="center" width="1015">
<tr>
<td width="364" valign="top">
<table align="center" width="336">
<tr>
<td height="44"><img src="img/monthForward_normal.gif"></td>
<td width="328">&nbsp;&nbsp;<a href="adminpage.jsp">Home</a></td>
</tr>
<tr>
<td height="44"><img src="img/monthForward_normal.gif"></td>
<td width="328">&nbsp;&nbsp;<a href="pass.jsp">Change Password</a></td>
</tr>
<tr>
<td height="44"><img src="img/monthForward_normal.gif"></td>
<td width="328">&nbsp;&nbsp;<a href="navi.jsp">Security Graph</a></td>
</tr>
<tr>
<td height="44"><img src="img/monthForward_normal.gif"></td>
<td width="328">&nbsp;&nbsp;<a href="signout.jsp">Signout</a></td>
</tr>
<tr>
<td colspan="2" width="320">
<img src="img/change.jpg" style="border-radius:15px;" width="298" height="185">
</td>
</tr>
</table>
</td>
<td width="639" valign="top">
<table align="center" width="440" style="border:1px solid #d2d2d2;">
	<tr>
	<td height="45" colspan="4" align="center"><font size="+1">Update Password Here</font></td>
	</tr>
	<tr bgcolor="#FFFFCC">
	<td width="106" height="31" class="paragraping">Username</td>
	<td width="129" class="paragraping">Password</td>
	<td width="97" class="paragraping">Update</td>
	<td width="88" class="paragraping">Delete</td>
	</tr>
<% 
    
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	String sql="select * from admin";
	try
	{
	   con=databasecon.getconnection();
	    st=con.createStatement();
	    rs=st.executeQuery(sql);
		while(rs.next())
	     {
		 
		
		 
		 
			String s1=rs.getString(1);
			%>
	
	
	<tr>
	
	<td class="paragraping"><% out.println(rs.getString(1));%></td>
	
	<td class="paragraping"><% out.println(rs.getString(2));%></td>
	
	<td><a onClick="update.jsp" href="update.jsp?<%=s1%>">Update</a></td>
	<td><a onClick="passdelete.jsp" href="passdelete.jsp?<%=s1%>">Delete</a></td>
	</tr>
		<%
			
	     }
		
	  
	}
	catch(SQLException e1)
	{
		out.println("Your given didn't match to our database");
		System.out.println(e1);
	
	 }

	finally
	{
	     st.close();
	      con.close();
	}
            %>
	
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