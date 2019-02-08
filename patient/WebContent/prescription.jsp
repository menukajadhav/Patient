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
<%
						String aa = request.getParameter("as");
						System.out.println(aa);
						//String bb=request.getParameter("bs");
						String name = (String) session.getAttribute("pname");
						Connection con1 = null;
						Statement st1 = null;
						ResultSet rs1 = null;
						String sql1 = "select a.pid,a.name,a.pass,a.email,a.des,a.dob,a.sal,a.gender,a.zip,b.reason,b.pstatus from public a,reason b where a.pid=b.pid and a.pid='" + aa + "' ";
						try {
							con1 = databasecon.getconnection();
							st1 = con1.createStatement();
							rs1 = st1.executeQuery(sql1);
							while (rs1.next()) {

								//String s1 = rs1.getString(2);
					%>
<form action="prescript.jsp" method="post" onSubmit="return validate()" >
<table align="center" width="1000" height="87" style="font-family:verdana;font-size:12px;">


<tr  >
<td height="23">Patient-ID</td>
 <td> <font color="green"> <%out.println(rs1.getString(1));%></font> </td>
</tr>
<tr>
<td>Name</td>
<td> <font color="green"><%out.println(rs1.getString(2));%></font> </td>
</tr>
<tr>
<td>Disease</td>
<td> <font color="green"><%out.println(rs1.getString(5));%></font> </td>
</tr>
<tr>
<td>Reason</td>
<td> <font color="green"><%out.println(rs1.getString(10));%></font> </td>
</tr>
<tr>
<td>Phy Status</td>
<td> <font color="green"><%out.println(rs1.getString(11));%></font> </td>
</tr>

<tr>
								<td height="30"></td>
								<td><a									href="prescript.jsp?as=<%=rs1.getString(1)%>&&cs=<%=rs1.getString(2)%>"><font
										size="2" >Prescription</font></a></td>
							</tr>

</table>   <br><br><br><br><br>
</form>
<%
						}

						} catch (SQLException e1) {
							out.println("Your given didn't match to our database");
							System.out.println(e1);

						}

						finally {
							st1.close();
							con1.close();
						}
					%>
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