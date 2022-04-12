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
	<%
		if (session.getAttribute("uname") != null && session.getAttribute("uname") != "") {
	%>
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
					<h4 class="header-line">Exam Result</h4>

				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="alert alert-default">
						<strong>Each question have 2 marks.<strong>
					</div>
				</div>
			</div>
			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-heading">Test Results</div>
					<div class="panel-body">
						<%
							try {
						%>
						<div class="table-responsive">
							<table class="table">
								<thead>
									<tr>
										<th>Total Questions</th>
										<th>Topic Name</th>
										<th>Test Correct Answer</th>
										<th>Test Wrong Answer</th>
										
										<th>UnAttempted Questions</th>
										<th>Test Marks</th>
										<th>Date & Time</th>
									</tr>
								</thead>
								<%
								int id = 0;
								String answer = null;
								String hitAnswer = null;
								String dateTime = null;
								ResultSet correctAnswer = null;
								int countAnswer = 0;
								int resultCorrect = 0;
								int resultWrong = 0;
								int marks = 0;
								int unattempt = 0;
                             
                                
								ResultSet resultTimestamp = DatabaseConnection.getResultFromSqlQuery("select distinct subjectTopic, examdate from tblstudentresult where studentId='"+ session.getAttribute("id") + "'");
								while (resultTimestamp.next()) {
									countAnswer = 0;
									resultCorrect = 0;
									resultWrong = 0;
									marks = 0;
									unattempt = 0;
									
									ResultSet resultCount = DatabaseConnection.getResultFromSqlQuery("select count(question) from questions where subjectTopic='"+ resultTimestamp.getString("subjectTopic") + "'");
									resultCount.next();
									int count = resultCount.getInt(1);
							
									ResultSet resultSet = DatabaseConnection.getResultFromSqlQuery("select * from questions where subjectTopic='" + resultTimestamp.getString("subjectTopic") + "'");
									while (resultSet.next()) {
										id = resultSet.getInt(1);
										answer = resultSet.getString(7);
										ResultSet rs = DatabaseConnection.getResultFromSqlQuery("select * from tblStudentResult where studentId='" + session.getAttribute("id") + "' and questionID='"+ id + "' and  examdate='" + resultTimestamp.getTimestamp("examdate") + "'");
										if (rs.next()) {
											hitAnswer = rs.getString("hitAnswer");
											dateTime = rs.getString("examdate");
										}
										
										
										if (hitAnswer.equals("null"))
										{
											unattempt++;
										}
										else{
										if (answer.equals(hitAnswer)) {
											resultCorrect++;
											marks = resultCorrect * 2;
											
										} 
										 
										
										else {
											resultWrong++;
										
										}
										
										}
										 
									}
								%>
								<tbody>
									<tr class="success">
										<td><%=count%></td>
										<td><%=resultTimestamp.getString("subjectTopic")%></td>
										<td><%=resultCorrect%></td>
										<td><%=resultWrong%></td>
										
										<td><%=unattempt%></td>
										<td><%=marks%></td>
										<td><%=dateTime%></td>
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
				<!--  end  Context Classes  -->
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
	
	<%
		} else {
	response.sendRedirect("index.jsp");
	}
	%>
</body>
</html>
