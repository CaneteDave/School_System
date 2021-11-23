<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql. *"%>
<%
try
{
	String studentNo=request.getParameter("studentNo");
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select *from student inner join result where student.studentNo=result.studentNo and student.studentNo='"+studentNo+"'");
	if(rs.next()){
%>

<img src="images/hau8.png"  align="left"width="150" height="150">
<center><img src="10.png" width="150" height="150">
<img src="images/hau9.png" align="right"  width="150" height="150"></center>
    <a href="Student.html"><button>Back</button></a> 
  <hr class="new1">
<style>
table{
  width:100%;
  table-layout: fixed;
}
th{
  padding: 20px 15px;
  text-align: left;
  font-weight: 500;
  font-size: 12px;
  color: #fff;
  text-transform: uppercase;
 border: 2px solid rgba(255,255,255,0.3);
}


/* demo styles */

@import url(https://fonts.googleapis.com/css?family=Roboto:400,500,300,700);
body{
  background-image: url("images/white.jpg");
  background-color: #cccccc;
  height: 100%;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  font-family: 'Roboto', sans-serif;
}

</style>
  <!--for demo wrap-->
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>institution Name: Holy Angel University</th>
          <th>Surname: <%=rs.getString(1)%></th>
          <th>First Name: <%=rs.getString(2)%></th>
          <th><center>Student Number: <%=rs.getString(3)%></center></th>
        </tr>
      </thead>
      <thead>
        <tr>
          <th>Gender: <%=rs.getString(4)%></th>
          <th>Student Email: <%=rs.getString(5)%></th>
          <th>Course: <%=rs.getString(6)%></th>
          <th><a titlt="print screen" alt="print screen" onclick="window.print();" target="_blank" style="cursor:pointer;"><center><img src="images/print.png"></center></a></th>
        </tr>
      </thead>
    </table>
  </div>
<style>
html {
  font-family:arial;
  font-size: 25px;
}

td {
  border: 2px solid #726E6D;
  padding: 15px;
  color:black;
  text-align:center;
}

thead{
  font-weight:bold;
  text-align:center;
  background: #625D5D;
  color:white;
}

table {
  border-collapse: collapse;
}

.footer {
  text-align:right;
  font-weight:bold;
}

tbody >tr:nth-child(odd) {
  background: #D1D0CE;
}

</style>
<head>
  <hr class="new1">
</head>
<body>
  <table>
    <thead>
      <tr>
        <td colspan="3">Course</td>
        <td rowspan="2">Type</td>
        <td rowspan="2">Full Marks</td>
        <td rowspan="2">Passing Marks</td>
        <td rowspan="2">Obtained Marks</td>
        
      </tr>
      <tr>
        <td>Code </td>
        <td colspan="2"> Name </td>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Cpe-101</td>
        <td colspan="2">Calculus </td>
        <td>Lecture</td>
        <td>100</td>
        <td> 30 </td>
        <td><%=rs.getString(8)%></td>
      </tr>
      <tr>
        <td>Cpe-102</td>
        <td colspan="2">Physics Laboratory</td>
        <td>Laboratory</td>
        <td>100</td>
        <td>30</td>
        <td><%=rs.getString(9)%></td>
      </tr>
      <tr>
        <td>Cpe-103</td>
        <td colspan="2">Chemistry Laboratory</td>
        <td>Laboratory</td>
        <td>100</td>
        <td> 30 </td>
        <td><%=rs.getString(10)%></td>
      </tr>
      <tr>
        <td>Cpe-104</td>
        <td colspan="2">Software Development</td>
        <td>Lecture</td>
        <td>100</td>
        <td> 30 </td>
        <td><%=rs.getString(11)%></td>
      </tr>
      <tr>
        <td>Cpe-105</td>
        <td colspan="2">Circuits Laboratory</td>
        <td>Laboratory</td>
        <td>100</td>
        <td> 30 </td>
        <td><%=rs.getString(12)%> </td>
      </tr>
      <tr>
        <td>Cpe-106</td>
        <td colspan="2">SignalPro Laboratory</td>
        <td>Laboratory</td>
        <td>100</td>
        <td>30</td>
        <td> <%=rs.getString(13)%> </td>
      </tr>
      <tr>
        <td>Cpe-107</td>
        <td colspan="2">CpELaws</td>
        <td>Practical</td>
        <td>100</td>
        <td>30</td>
        <td> <%=rs.getString(14)%> </td>
      </tr>
    </tbody>
    <tfoot>
      <tr>
        <td colspan="4" class="footer">Total Marks</td>
        <td>700</td>
        <td>180</td>
        <td><%int sum=rs.getInt(8)+rs.getInt(9)+rs.getInt(10)+rs.getInt(11)+rs.getInt(12)+rs.getInt(13)+rs.getInt(14); out.println(sum);%> </td>
      </tr>
      <tr>
        <td colspan="4" class="footer">Percentage</td>
        <td colspan="3"><% out.println((sum*100)/700);%>%</td>
      </tr>
  </table>
    <hr class="new1">
  <center><h6>  
  </h6></center>
  <hr class="new1">
<center><h6>  </h6></center> 
  <hr class="new1">
</body>

<%
	}
else
{
	response.sendRedirect("errorStudent.html");
}
}
catch(Exception e)
{}%>