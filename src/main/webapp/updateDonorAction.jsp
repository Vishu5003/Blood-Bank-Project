<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<%
String id=request.getParameter("id");
String name=request.getParameter("name");
String father=request.getParameter("father");
String mother=request.getParameter("mother");
String mobilenumber=request.getParameter("mobilenumber");
String email=request.getParameter("email");
String bloodgroup=request.getParameter("bloodgroup");
String address=request.getParameter("address");
try{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("update donor set name=?, father=?, mother=?, mobilenumber=?, email=?, bloodgroup=?, address=? where id=?");
	ps.setString(1, name);
	ps.setString(2, father);
	ps.setString(3, mother);
	ps.setString(4, mobilenumber);
	ps.setString(5, email);
	ps.setString(6, bloodgroup);
	ps.setString(7, address);
	ps.setString(8, id);
	response.sendRedirect("editDeleteList.jsp?msg=valid");

}
catch(Exception e)
{
	response.sendRedirect("editDeleteList.jsp?msg=invalid");
}


%>