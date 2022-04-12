<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <% 
        Connection connection =null;
    PreparedStatement psSelect=null;
    ResultSet result=null;
    
    Class.forName("com.mysql.cj.jdbc.Driver");
    connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/ejproj","root","Pradip@5656");
    psSelect=connection.prepareStatement("select * from adminlog where email=? and password=?");
    String user = request.getParameter("email");
    String pass= request.getParameter("password");
    psSelect.setString(1, user);
    psSelect.setString(2, pass);
    result = psSelect.executeQuery();
    if(result.next())
    	response.sendRedirect("viewStudents.jsp");
    else
    	{
    	
    %>
    <font color ='red'>you have failed to authenticate</font>
    <br>
    <jsp:include page="adminlogin.jsp"/>
    <%
    }
    %>
</body>
</html>