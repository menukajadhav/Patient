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
      <tr bgcolor="#FF9966" style="font-family:verdana;font-size:12px;"> 
        <td height="36">Patient-ID</td>
        <td>Name</td>
        <td>Age,Gender</td>
        <td>Zipcode,Disease</td>
        <td>Delete</td>
      </tr>
      <% 
	Connection con1 = null;
	Statement st1 = null;
	ResultSet rs1 = null;
	String pid=null, name=null, pass=null,des=null, email=null,mobile=null,dob=null, sal=null, gender=null, zip=null;

	try{
		con1=databasecon.getconnection();
	    st1=con1.createStatement();
		String sql1="select pid,name,pass,des,email,AES_DECRYPT(mobile,'key'),dob,sal,gender,zip from public order by sal";
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
			
			String s1 = des;
			String s2 = gender;
			des="";gender="";
			
			char[] cc = s1.toCharArray();
			char[] c1 = s2.toCharArray();
			
			for(int i = 0; i< cc.length; i++)
		   {		  
		   if( i <= 3)
		   {
		   des = des + cc[i];
		   }
		   else
		   {
		   des = des + " ";
		   }		   
		   }
		   for(int j = 0; j< c1.length; j++)
		   {		  
		   if( j <= 0)
		   {
		   gender = gender + c1[j];
		   }
		   else
		   {
		   gender = gender + " ";
		   }		   
		   }
%>
      <tr style="font-family:verdana;font-size:12px;"> 
        <td> <font color="green">
          <%=pid%>
          </font> </td>
        <td> <font color="green">
          <%=name%>
          </font> </td>
        <td> <font color="red" size="+1">(
          <%=sal%>
          ,
          <%=gender%>
          )</font> </td>
        <td> <font color="red" size="+1">(
          <%=zip%>
          ,
          <%=des%>
          )</font> </td>
        <%
      
String pid1=rs1.getString(1);

%>
        <td> <a href="patdelete.jsp?<%=pid%>">Delete</a></td>
      </tr>
      <%
	   }
	 
	 }
	   catch(Exception e2)
	   {
	     out.println(e2.getMessage());
	   }
	   
	    
%>
    </table>
    <br><br><br><br><br>
<table align="center" width="1020">
<tr>
<td>
<table align="left">
<tr>
<td width="24" height="44"><img src="img/monthForward_normal.gif"></td>
<td width="984">&nbsp;&nbsp;<a href="adminpage.jsp">Home</a></td></tr>

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