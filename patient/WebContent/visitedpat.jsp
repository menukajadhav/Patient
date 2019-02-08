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
<table align="center" width="1020" height="100">
<tr bgcolor="#FFCC66" style="font-family:verdana;font-size:12px;">
<td height="36">Patient-ID</td>
<td>Name</td>

<td>Disease</td>
<td>DOB</td>
<td>Age</td>
<td>Gender</td>
<td>Zipcode</td>
<td>Reason</td>
<td>Prescription</td>

</tr>
<%  
 ArrayList list1 = new ArrayList();

	Connection con1 = null;
	Statement st1 = null;
	ResultSet rs1 = null;
	String pid=null, name=null, pass=null, email=null,des=null,dob=null, sal=null, gender=null, zip=null,reason=null,prescription=null;

	try{
		con1=databasecon.getconnection();
	    st1=con1.createStatement();
		String sql1="select a.pid,a.name,a.pass,a.email,a.des,a.dob,a.sal,a.gender,a.zip,b.reason,b.prescription from public a,prescription b where a.pid=b.pid and a.dstatus='Visit' and a.pstatus='Yes' order by sal";
		rs1=st1.executeQuery(sql1);
		list1.add(sql1);
		
		 while(rs1.next())
		
       {
	   
			pid=rs1.getString(1);
		    name=rs1.getString(2);
		    
			des=rs1.getString(5);
		    dob=rs1.getString(6);
		    sal=rs1.getString(7);
		    gender=rs1.getString(8);
			zip=rs1.getString(9);
			reason = rs1.getString(10);
			prescription = rs1.getString(11);
			
			String s1 = dob;
			String s3 = gender;
			String s4 = zip;
			dob="";gender="";zip="";
			           
		   char[] cc = s1.toCharArray();
		   char[] c2 = s3.toCharArray();
		   char[] c3 = s4.toCharArray();
		   
		   for(int i = 0; i< cc.length; i++)
		   {		  
		   if( i <= 7)
		   {
		   dob = dob + cc[i];
		   }
		   else
		   {
		   dob = dob + "@";
		   }		   
		   }
		   for(int k = 0; k< c2.length; k++)
		   {		  
		   if( k <= 0)
		   {
		   gender = gender + c2[k];
		   }
		   else
		   {
		   gender = gender + " ";
		   }		   
		   }
			 for(int l = 0; l< c3.length; l++)
		   {		  
		   if( l <= 2)
		   {
		   zip = zip + c3[l];
		   }
		   else
		   {
		   zip = zip + "&";
		   }		   
		   }
%>
  <tr style="font-family:verdana;font-size:12px;"> 
    <td> <font color="green"><%=pid%></font> </td>
	<td> <font color="green"><%=name%></font> </td>
	<td> <font color="#804040"><%=des%></font> </td>
	<td> <font color="red" ><%=dob%></font> </td>
    <td> <font color="blue" ><%=sal%></font> </td>
    <td align="left"> <font color="red" ><%=gender%></font> </td>
	<td> <font color="red" ><%=zip%></font> </td>
 	<td><%=reason%></td>
	<td><%=prescription%></td>
        <%
 dob=null;gender=null; zip=null;   
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
</table>   <br><br><br><br><br>
<table align="center" width="1020">
<tr>
<td>
<table align="left">
<tr>
<td width="24" height="44"><img src="img/monthForward_normal.gif"></td>
<td width="984">&nbsp;&nbsp;<a href="doctorpage.jsp">Home</a></td></tr>

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