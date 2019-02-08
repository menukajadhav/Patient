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
<% 
    String name=(String)session.getAttribute("name");
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	String sql="select * from patient where name='"+name+"'";
	try
	{
	   con=databasecon.getconnection();
	    st=con.createStatement();
	    rs=st.executeQuery(sql);
		while(rs.next())
	     {
		 
		
		 
		 
			String s1=rs.getString(2);
			%>
			<table align="center" width="500">

        <td width="80"  colspan="4" align="center" class="paragraping"><font color="#FF0000" size="+1">Welcome!&nbsp;&nbsp;<% out.println(rs.getString(2));%></font></td>
		
		
       
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
	      con.close();
	}
            %>
<table align="center" width="1020" height="100">
<tr bgcolor="#FFCC99" style="font-family:verdana;font-size:12px;">
<td height="52">Patient-ID</td>
<td>Name</td>
<td>Password</td>
<td>Disease</td>
<td>Email</td>
<td>Mobile</td>
<td>DOB</td>
<td>Age</td>
<td>Gender</td>
<td>Zipcode</td>
<td>Reason</td>
<td>Prescription</td>
</tr>
<% 
	Connection con1 = null;
	Statement st1 = null;
	ResultSet rs1 = null;
	String pid=null,  pass=null, email=null,mobile=null,dob=null, sal=null, gender=null,des=null,reason=null,prescription=null, zip=null;

	try{
		con1=databasecon.getconnection();
	    st1=con1.createStatement();
		String sql1="select a.pid,a.name,a.pass,a.des,a.email,AES_DECRYPT(a.mobile,'key'),a.dob,a.sal,a.gender,a.zip,b.reason,b.prescription from patient a,prescription b where a.pid=b.pid and a.name='"+name+"' order by sal";
		rs1=st1.executeQuery(sql1);
		
		 while(rs1.next())
		
       {
	   
			pid=rs1.getString(1);
		    name=rs1.getString(2);
		    pass=rs1.getString(3);
			des=rs1.getString(4);
		    email=rs1.getString(5);
			mobile=rs1.getString(6);
		    dob=rs1.getString(7);
		    sal=rs1.getString(8);
		    gender=rs1.getString(9);
			zip=rs1.getString(10);
			reason=rs1.getString(11);
			prescription=rs1.getString(12);
		   
%>
  <tr style="font-family:verdana;font-size:12px;"> 
    <td height="80"> <font color="green"><%=pid%></font> </td>
	<td> <font color="green"><%=name%></font> </td>
    <td> <font color="green"><%=pass%></font> </td>
	<td> <font color="green"><%=des%></font> </td>
    <td> <font color="green"><%=email%></font> </td>
	<td> <font color="green"><%=mobile%></font> </td>
	<td> <font color="red"><%=dob%></font> </td>
    <td> <font color="red"><%=sal%></font> </td>
    <td> <font color="red"><%=gender%></font> </td>
	<td> <font color="red"><%=zip%></font> </td>
	<td> <font color="green"><%=reason%></font> </td>
	<td> <font color="green"><%=prescription%></font> </td>
 
        <%
      
String pid1=rs1.getString(1);

%>

      	
    </tr>
<%
	   }
	 
	 }
	   catch(Exception e2)
	   {
	     out.println(e2.getMessage());
	   }
	   
	    
%>
</table> <br><br><br><br><br>
<table align="center" width="1020">
<tr>
<td valign="top">
<table align="left">
<tr>
<td width="24" height="44"><img src="img/monthForward_normal.gif"></td>
<td width="984">&nbsp;&nbsp;<a href="patientpage.jsp">Home</a></td></tr>

</table>
</td>
<td>

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