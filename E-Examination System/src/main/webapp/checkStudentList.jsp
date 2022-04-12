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
	<jsp:include page="adminHeader.jsp"></jsp:include>
	<div class="content-wrapper">
		<div class="container">
			<div class="row pad-botm">
				<div class="col-md-12">
					<h4 class="header-line">Exam Result</h4>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<%
						try {
					%>
					<div class="col-md-12">
						<div class="panel panel-default">
							<div class="panel-heading">Student Test Results</div>
							<div class="panel-body">
								<div class="table-responsive">
									<table class="table">
										<thead>
											<tr>
												<th>Id</th>
												<th>Student Name</th>
												<th>Email Id</th>
												<th>Address</th>
												<th>Education</th>
												<th>Check Exam Results</th>
											</tr>
										</thead>
										<%
											ResultSet studentResultReport = DatabaseConnection
												.getResultFromSqlQuery("select distinct studentId from tblstudentresult");
										while (studentResultReport.next()) {
											ResultSet studentInfo = DatabaseConnection
											.getResultFromSqlQuery("select * from student where id='" + studentResultReport.getInt("studentId") + "'");
											while (studentInfo.next()) {
										%>
										<tbody>
											<tr class="success">
												<td><%=studentInfo.getInt(1)%></td>
												<td><a href="checkEveryStudentResult.jsp?id=<%=studentInfo.getInt(1)%>"><%=studentInfo.getString(2)%></a></td>
												<td><%=studentInfo.getString(3)%></td>
												<td><%=studentInfo.getString(4)%></td>
												<td><%=studentInfo.getString(5)%></td>
												<td><a href="checkEveryStudentResult.jsp?id=<%=studentInfo.getInt(1)%>">Check
														Exam Results</a></td>
											</tr>
										</tbody>
										<%
											}
										}
										%>
									</table>
									<%
										} catch (Exception e) {
									e.printStackTrace();
									}
									%>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- CONTENT-WRAPPER SECTION END-->
	<section class="footer-section">
		<div class="container">
			<div class="row">
				<div class="col-md-12">&copy; E-Examination System</div>

			</div>
		</div>
	</section>
	
	<script src="assets/js/jquery-1.10.2.js"></script>
	
	<script src="assets/js/bootstrap.js"></script>
	
	<script src="assets/js/custom.js"></script>
	<%-- 
	<%
		} else {
	response.sendRedirect("index.jsp");
	}
	%>
	--%>
</body>
</html>
