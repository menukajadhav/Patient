<%@ page import="java.sql.*, javax.sql.*, databaseconnection.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
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
<table align="center" width="1020" height="100">
<tr bgcolor="#FFCC66" style="font-family:verdana;font-size:12px;">
<td height="36">Patient-ID</td>
<td>Name</td>

<td>Disease</td>


<td>Reason</td>
</tr>
<%  
 ArrayList list1 = new ArrayList();

	Connection con1 = null;
	Statement st1 = null;
	ResultSet rs1 = null;
	String pid=null, name=null, pass=null, email=null,des=null,dob=null, sal=null, gender=null, zip=null,pstatus=null,dstatus=null;

	try{
		con1=databasecon.getconnection();
	    st1=con1.createStatement();
		String sql1="select* from public where pstatus='No' and dstatus='Notvisit' order by sal";
		rs1=st1.executeQuery(sql1);
		list1.add(sql1);
		
		 while(rs1.next())
		
       {
	   
			/*pid=rs1.getString(1);
			System.out.println(pid);
		    name=rs1.getString(2);
		    
			des=rs1.getString(5);
		   /* dob=rs1.getString(6);
		    sal=rs1.getString(7);
		    gender=rs1.getString(8);
			zip=rs1.getString(9); 
			pstatus=rs1.getString(14);
			dstatus=rs1.getString(15);*/
			
			
			
			
%>
  <tr style="font-family:verdana;font-size:12px;"> 
    <td> <font color="green"><%=rs1.getString(1)%></font> </td>
	<td> <font color="green"><%=rs1.getString(2)%></font> </td>
	<td> <font color="#804040"><%=rs1.getString(5)%></font> </td>
	
  
 <td><a href="dis1.jsp?as=<%=rs1.getString(1)%>&&bs=<%=rs1.getString(14)%>"><font
										size="2"
										style="font-family: Lucida Calligraphy; color: blue; font-weight: bold; font-size: 15px;">View</font></a></td>
       

      	
    </tr>
<%
	   }
	 
	 }
	   catch(Exception e2)
	   {
	     out.println(e2.getMessage());
	   }
	   
	    
%>
</table>   <br><br><br><br><br>
<table align="center" width="1020">
<tr>
<td>
<table align="left">
<tr>
<td width="24" height="44"><img src="img/monthForward_normal.gif"></td>
<td width="984">&nbsp;&nbsp;<a href="physicianpage.jsp">Home</a></td></tr>

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