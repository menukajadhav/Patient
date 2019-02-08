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
						String cc = request.getParameter("cs");
						String name1 = (String) session.getAttribute("name");
						Connection con1 = null;
						Statement st1 = null;
						ResultSet rs1 = null;
						String sql1 = "select * from public where pid='" + aa + "' ";
						try {
							con1 = databasecon.getconnection();
							st1 = con1.createStatement();
							rs1 = st1.executeQuery(sql1);
							while (rs1.next()) {

								//String s1 = rs1.getString(2);
					%>
<form action="reason.jsp" method="post" onSubmit="return validate()" >
<table align="center" width="1000" height="87" style="font-family:verdana;font-size:12px;">


<tr  >
<td height="23">Patient-ID</td>
 <td> <input  name="pid" value="<%out.println(rs1.getString(1));%>"/> </td>
</tr>
<tr>
<td>Name</td>
<td><input  name="name" value="<%out.println(rs1.getString(2));%>"/> </td>
</tr>
<tr>
<td>Disease</td>
<td><input  name="des" value="<%out.println(rs1.getString(5));%>"/></td>
</tr>



	<tr>
								<td >Reason</td>
								<td><textarea name="reason" rows="4" cols="20"></textarea></td>
							</tr>

							<tr>
								<td height="30" ></td>
								<td><input type="submit" name="submit" value="Submit" <a href="update1.jsp?aa=<%=rs1.getString(1)%>"></a></input>
									<input type="reset" name="reset" value="Clear"></input></td>
							</tr>

						</table>


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