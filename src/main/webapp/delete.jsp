 <%@page import="java.sql.*"%>
 <%@page import="Project.ConnectionProvider"%>
 
 
 <% 
 String surname=request.getParameter("surname");
 try
 {
 Connection con=ConnectionProvider.getCon();
 Statement st=con.createStatement();
 st.executeUpdate("delete from student where surname='"+surname+"'");
 response.sendRedirect("adminHome.jsp");
 	
 }
 catch(Exception e)
 {
	 System.out.println(e);
 }
 %>

