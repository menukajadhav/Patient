<%@ page import="java.sql.*,databaseconnection.*"%>
<%@page import="java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*"  errorPage="Error.jsp"%>

<html>
<head>
<%

java.util.Date now = new java.util.Date();
String DATE_FORMAT1 = "dd/MM/yyyy hh:mm:ss a";
SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
String strDateNew1 = sdf1.format(now);
	Connection con = null;

	ResultSet rs = null;

	PreparedStatement ps = null;

	String a = request.getParameter("pid");
	System.out.println("reason iiiiiiiisssssssssssss" +a);
	String b = request.getParameter("name");
	String c = request.getParameter("des");
	String d = request.getParameter("reason");
	
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/patient", "root", "admin");
		ps = con.prepareStatement("INSERT INTO reason(pid,name,des,reason,pstatus,dstatus,date)VALUES(?,?,?,?,?,?,'"+strDateNew1+"')");

		ps.setString(1, a);
		ps.setString(2, b);
		ps.setString(3, c);
		ps.setString(4, d);
		ps.setString(5,"Yes");
		ps.setString(6,"Notvisit");
		
		int s = ps.executeUpdate();
		//response.sendRedirect("update.jsp?message=successfully Submited");

		con.close();
		ps.close();

	} catch (Exception ex) {

		out.println("Error in connection : " + ex);

	}
%>

<%

	String fid1=request.getParameter("pid");
    String serverstatus ="Yes";
		
										
				try{
				Connection	conn=databasecon.getconnection();
				PreparedStatement ps1=conn.prepareStatement("Update public set pstatus=? where pid='"+fid1+"'");
				ps1.setString(1,serverstatus);
				int x=ps1.executeUpdate();
				
				response.sendRedirect("physicianpage.jsp?message=success");
				}
				catch (Exception ex) 
				{
					out.println(ex.getMessage());
				}
		
	
		
	
 %>
