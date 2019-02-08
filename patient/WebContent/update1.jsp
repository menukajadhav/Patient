<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@page import="java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*"  errorPage="Error.jsp"%>
<%@page import=" java.security.MessageDigest"%>

<%

	String fid1=request.getParameter("pid");
    String serverstatus ="Yes";
		
										
				try{
				Connection	con=databasecon.getconnection();
				PreparedStatement ps=con.prepareStatement("Update public set pstatus=? where pid='"+fid1+"'");
				ps.setString(1,serverstatus);
				int x=ps.executeUpdate();
				
				response.sendRedirect("physicianpage.jsp?message=success");
				}
				catch (Exception ex) 
				{
					out.println(ex.getMessage());
				}
		
	
		
	
 %>
