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

<title>E Examination System</title>

<link href="assets/css/bootstrap.css" rel="stylesheet" />

<link href="assets/css/font-awesome.css" rel="stylesheet" />

<link href="assets/js/dataTables/dataTables.bootstrap.css"
	rel="stylesheet" />

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
			
				<a href="#" class="btn btn-info pull-right">LOG OUT</a>
			</div>
		</div>
	</div>
	
	<jsp:include page="adminHeader.jsp"></jsp:include>
	
	<div class="content-wrapper">
		<div class="container">
			<div class="row pad-botm">
				<div class="col-md-12">
					<h4 class="header-line">All Students</h4>

				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					
					<div class="panel panel-default">
						<div class="panel-heading">All Students</div>
						<div class="panel-body">
							<div class="table-responsive">
								<table class="table table-striped table-bordered table-hover" id="dataTables-example">
									<thead>
										<tr>
											<th>Student Id</th>
											<th>Student Name</th>
											<th>Email</th>
											<th>Address</th>
											<th>Education</th>
										</tr>
									</thead>
									<%
										try {
										ResultSet allStudentData = DatabaseConnection.getResultFromSqlQuery("select * from student");
										while (allStudentData.next()) {
									%>
									<tbody>
										<tr class="odd gradeX">
											<td><%=allStudentData.getInt(1)%></td>
											<td><%=allStudentData.getString(2)%></td>
											<td><%=allStudentData.getString(3)%></td>
											<td><%=allStudentData.getString(4)%></td>
											<td><%=allStudentData.getString(5)%></td>
										</tr>
									</tbody>
									<%
										}
									} catch (Exception e) {
									e.printStackTrace();
									}
									%>
								</table>
							</div>

						</div>
					</div>
				
				</div>
			</div>
			
		</div>
	</div>
	
	
	<script src="assets/js/jquery-1.10.2.js"></script>
	
	<script src="assets/js/bootstrap.js"></script>

	<script src="assets/js/dataTables/jquery.dataTables.js"></script>
	<script src="assets/js/dataTables/dataTables.bootstrap.js"></script>
	<!-- CUSTOM SCRIPTS  -->
	<script src="assets/js/custom.js"></script>
	
	<section class="footer-section">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					&copy; E-Examination System </a>
				</div>

			</div>
		</div>
	</section>

</html>
