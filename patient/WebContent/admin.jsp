






<%@ page import="java.sql.*,databaseconnection.*"%>

<html>

    <head>

	<title>Patient Self-controllable and
Multi-level Privacy-preserving Cooperative
Authentication</title>
  <link rel="stylesheet" href='stylegreen.css' type="text/css" />
     <script type="text/javascript">
<!--
function delayer(){
    window.location = "adminlog.jsp"
}
//-->
</script>
    </head>

    <body onLoad="setTimeout('delayer()', 1000)">
<h2 style="color:red;font-size:15px;width:400px;font-family:verdana;">Prepare to be redirected!This page is a time delay redirect!</h2><br>
	<form>
		<p align="center" style="color:white;font-family:verdana;font-size:15px;font-weight:bold;">
	<% 

         String name=request.getParameter("name");

	String pass=request.getParameter("pass");		

	Connection con=null;

	Statement st=null;

	ResultSet rs=null;

	String sql="select * from admin where name='"+name+"' AND pass='"+pass+"'";

	try

	{

	   con=databasecon.getconnection();

	    st=con.createStatement();

	    rs=st.executeQuery(sql);

	    if(rs.next())

	     {

		session.setAttribute("name",name);

		 %>	

		<jsp:forward page="adminpage.jsp"/>

	    	<%

	             		    

	    }

	  out.println("OOP's!You are not authenticated person");

	}

	catch(SQLException e1)

	{

		

		System.out.println(e1);

	

	 }



	finally

	{

	     st.close();

	      con.close();

	}

            %>

             </form>
			 </p><br>
			 <p class="paragraping" align="center"><a href="adminlog.jsp" class="paragrapin1g">Go Home</a></p>

       </body> 	

</html>