<%@ page language="java" import="java.sql.*,databaseconnection.*" errorPage="Error.jsp"%>
<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page  import="java.awt.*" %>
<%@ page  import="java.io.*" %>
<%@ page  import="org.jfree.chart.*" %>
<%@ page  import="org.jfree.chart.entity.*" %>
<%@ page  import ="org.jfree.data.general.*"%>
<%
  final DefaultPieDataset data = new DefaultPieDataset();
  data.setValue("Original", new Double(8.2));
  data.setValue("Level 1", new Double(1.0));
  data.setValue("Level 2", new Double(7.5));
  data.setValue("Level 3", new Double(3.5));
  data.setValue("Level 4", new Double(5.0));
  //data.setValue("Level 5", new Double(7.0));

  JFreeChart chart = ChartFactory.createPieChart
  ("Pie Chart ", data, true, true, false);

 try {
 final ChartRenderingInfo info = new 
  ChartRenderingInfo(new StandardEntityCollection());

//  final File file1 = new File("C:\\apache-tomcat-7.0.20\\webapps\\Patient Selfcontrollable\\barChart.gif");

final File file1 = new File("E:\\apache-tomcat-6.0.18\\webapps\\Patient Selfcontrollable\\barChart.gif");
  ChartUtilities.saveChartAsPNG(
   file1, chart, 600, 400, info);
  } catch (Exception e) {
  out.println(e);
  }
%>
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
<img src="img/chart1.gif" style="border-radius:15px;" width="298" height="185">
</td>
</tr>
</table>
</td>
<td width="639" valign="top">
<table align="center" width="336">
<tr>
<td><IMG SRC="barChart.gif" WIDTH="600" HEIGHT="400" 
   BORDER="0" USEMAP="#chart"></td>
</tr>
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