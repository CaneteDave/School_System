 <%@page import="java.sql.*"%>
 <%@page import="Project.ConnectionProvider"%>
 
 
 <% 
 String studentNo=request.getParameter("studentNo");
 try
 {
 Connection con=ConnectionProvider.getCon();
 Statement st=con.createStatement();
 st.executeUpdate("delete from result where studentNo='"+studentNo+"'");
 response.sendRedirect("adminHome.jsp");
 	
 }
 catch(Exception e)
 {
	 System.out.println(e);
 }
 %>
