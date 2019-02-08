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
<script language="JavaScript">
function valid()
{
var a = document.f.des.value;
if(a=="")
{
alert("Enter Disease Name");
document.f.des.focus();
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
Authentication</div></div>
   </div><!-- end of logo -->
   
  </div>
<div id="innerwrapper">
<% 
    String name=(String)session.getAttribute("name");
	Connection con1=null;
	Statement st=null;
	ResultSet rs=null;
	String sql="select * from patient where name='"+name+"'";
	try
	{
	   con1=databasecon.getconnection();
	    st=con1.createStatement();
	    rs=st.executeQuery(sql);
		while(rs.next())
	     {
		 
		
		 
		 
			String s1=rs.getString(2);
			%>
<table align="center" width="1015">
<tr>
<td width="364" valign="top">
<table align="center" width="336">
<tr>
<td height="44"><img src="img/monthForward_normal.gif"></td>
<td width="328">&nbsp;&nbsp;<a href="patientpage.jsp">Home</a></td>
</tr>
<tr>
<td height="44"><img src="img/monthForward_normal.gif"></td>
<td width="328">&nbsp;&nbsp;<a href="view.jsp?<% out.println(rs.getString(2));%>">Your Details</a></td>
</tr>
<tr>
<td height="44"><img src="img/monthForward_normal.gif"></td>
<td width="328">&nbsp;&nbsp;<a href="report.jsp?<% out.println(rs.getString(2));%>">Medical Report</a></td>
</tr>
<tr>
<td height="44"><img src="img/monthForward_normal.gif"></td>
<td width="328">&nbsp;&nbsp;<a href="common1.jsp">Common Data</a></td>
</tr>
<tr>
<td height="44"><img src="img/monthForward_normal.gif"></td>
<td width="328">&nbsp;&nbsp;<a href="passchange.jsp">Change Password</a></td>
</tr>

<tr>
<td height="44"><img src="img/monthForward_normal.gif"></td>
<td width="328">&nbsp;&nbsp;<a href="signout.jsp">Signout</a></td>
</tr>
<tr>
<td colspan="2" width="320">
<img src="img/patient2.gif" style="border-radius:15px;" width="298" height="185">
</td>
</tr>
</table>
</td>
<td width="639" valign="top">
<table align="center" width="500">

        <td width="80"  colspan="4" align="center" class="paragraping"><font color="#FF0000" size="+1">Welcome!&nbsp;&nbsp;<% out.println(rs.getString(2));%></font></td>
		
		
       
		</tr>
	    	
 </table></td>
</tr>
</table> 
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
	      con1.close();
	}
            %>  
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