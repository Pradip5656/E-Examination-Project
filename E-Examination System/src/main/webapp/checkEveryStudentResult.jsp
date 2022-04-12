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
				<a href="logout" class="btn btn-info pull-right">LOGOUT</a>
			</div>
		</div>
	</div>
	<jsp:include page="adminHeader.jsp"></jsp:include>
	<div class="content-wrapper">
		<div class="container">
			<div class="row pad-botm">
				<div class="col-md-12">
					<h4 class="header-line">Exam Result</h4>
					<strong>Each question have 2 marks.<strong>&nbsp;<a href="checkStudentList.jsp">Back</a>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<%
						try {
						int id = 0;
						String answer = null;
						String hitAnswer = null;
						String studentName = "";
						int resultCorrect = 0;
						int resultWrong = 0;
						int testMarks = 0;
						Timestamp timestamp = new Timestamp(System.currentTimeMillis());
						int tblresultreport = DatabaseConnection.insertUpdateFromSqlQuery("truncate tblresultreport");
						ResultSet resultSet = DatabaseConnection.getResultFromSqlQuery("select distinct subjectTopic,examdate from tblstudentresult where studentId='" + request.getParameter("id") + "'");
						while (resultSet.next()) {
							resultCorrect = 0;
							resultWrong = 0;
							id = Integer.parseInt(request.getParameter("id"));
							ResultSet rsStudentInfo = DatabaseConnection.getResultFromSqlQuery("select * from tblStudentResult where studentid='" + id + "' and examdate='"+ resultSet.getTimestamp("examdate") + "' and subjectTopic= '" + resultSet.getString("subjectTopic")+ "' ");
							while (rsStudentInfo.next()) {
						int questionID = rsStudentInfo.getInt("questionID");
						hitAnswer = rsStudentInfo.getString("hitAnswer");
						ResultSet rsActualAnswer = DatabaseConnection
								.getResultFromSqlQuery("select * from questions where questionID='" + questionID + "'");
						if (rsActualAnswer.next()) {
							answer = rsActualAnswer.getString("answer");
						}
						if (answer.equals(hitAnswer)) {
							resultCorrect++;
							testMarks = resultCorrect * 2;
						} else {
							resultWrong++;

						}
							}
							ResultSet rsStudentName = DatabaseConnection
							.getResultFromSqlQuery("select studentName from student where id='" + id + "'");
							if (rsStudentName.next()) {
						studentName = rsStudentName.getString("studentName");
							}
							int resultReport = DatabaseConnection.insertUpdateFromSqlQuery("insert into tblresultreport(student_id,student_name,correct_answer,wrong_answer,test_marks,examtime,subjectTopic)values('"+ id + "','" + studentName + "','" + resultCorrect + "','" + resultWrong + "','" + testMarks+ "','" + resultSet.getTimestamp("examdate") + "','" + resultSet.getString("subjectTopic") +"' ) ");
						}
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
												<th>Test Correct Answer</th>
												<th>Test Wrong Answer</th>
												<th>Test Marks</th>
												<th>Exam Date & Time</th>
												<th>subjectTopic</th>
											</tr>
										</thead>
										<%
											ResultSet studentResultReport = DatabaseConnection.getResultFromSqlQuery("select * from tblresultreport");
											while (studentResultReport.next()) {
										%>
										<tbody>
											<tr class="success">
												<td><%=studentResultReport.getInt(1)%></td>
												<td><%=studentResultReport.getString(2)%></td>
												<td><%=studentResultReport.getString(3)%></td>
												<td><%=studentResultReport.getString(4)%></td>
												<td><%=studentResultReport.getString(5)%></td>
												<td><%=studentResultReport.getString(6)%></td>
												<td><%=studentResultReport.getString(7)%></td>
											</tr>
										</tbody>
										<%
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
	
</body>
</html>
