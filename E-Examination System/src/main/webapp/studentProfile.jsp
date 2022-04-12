<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<meta name="description" content="" />
<meta name="author" content="" />

<title>E-Examination System</title>

<link href="assets/css/bootstrap.css" rel="stylesheet" />

<link href="assets/css/font-awesome.css" rel="stylesheet" />

<link href="assets/css/style.css" rel="stylesheet" />

<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	
	<div class="navbar navbar-inverse set-radius-zero">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				
				 <div class="left-div">
              <h3><b>E-Examination System<b></h3>
              </div>
              
			</div>
			                           
			<div class="right-div">
				<a href="logout" class="btn btn-info pull-right">LOG OUT</a>
			</div>
		</div>
	</div>
	<jsp:include page="studentSideHeader.jsp"></jsp:include>
	<div class="content-wrapper">
		<div class="container">
			<div class="row pad-botm">
				<div class="col-md-12">
					<h4 class="header-line">Student Profile</h4>

				</div>
			</div>
			<div class="row">
				<%
					Connection connection = DatabaseConnection.getConnection();
						Statement statement = connection.createStatement();
						ResultSet resultSet = statement.executeQuery("select * from student where uname='" + session.getAttribute("uname") + "'");
						while (resultSet.next()) {
				%>
				<div class="col-md-8 col-sm-8 col-xs-12">
					<div class="panel panel-danger">
						<div class="panel-heading">My Profile</div>
						<div class="panel-body">
							<form action="" method="">

								<div class="form-group">
									<label>Student Id.:</label> <input type="text" name="id"
										class="form-control" value="<%=resultSet.getInt(1)%>" readonly>
								</div>
								<div class="form-group">
									<label>Student Name.:</label> <input type="text" name="studentName"
										class="form-control" value="<%=resultSet.getString(2)%>">
								</div>

								<div class="form-group">
									<label>Email Id.:</label> <input type="text" name="email"
										class="form-control" value="<%=resultSet.getString(3)%>"
										readonly>
								</div>
								<div class="form-group">
									<label>Education.:</label> <input type="text" name="education"
										class="form-control" value="<%=resultSet.getString(5)%>">
								</div>
								<div class="form-group">
									<label>User Name.:</label> <input type="text" name="uname"
										class="form-control" value="<%=resultSet.getString(6)%>"
										readonly>
								</div>
								<div class="form-group">
									<label>Password.:</label> <input type="password" name="upass"
										class="form-control" value="<%=resultSet.getString(7)%>">
								</div>
							</form>
						</div>
					</div>
				</div>
				<%
					}
				%>
			</div>
		</div>
	</div>

	<section class="footer-section">
		<div class="container">
			<div class="row">
				<div class="col-md-11">&copy; E-Examination System</div>

			</div>
		</div>
	</section>
	
	<script src="assets/js/jquery-1.10.2.js"></script>

	<script src="assets/js/bootstrap.js"></script>

	<script src="assets/js/custom.js"></script>
	
</body>
</html>
