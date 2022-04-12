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
	<jsp:include page="studentSideHeader.jsp"></jsp:include>
	
	<div class="content-wrapper">
		<div class="container">
			<div class="row pad-botm">
				<div class="col-md-12">
					<h4 class="header-line">Exam Instructions</h4>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="panel panel-default">
						<div class="panel-heading">Exam Instructions</div>
						<div class="panel-body">
							<ul>
								<li>Quiz contains Multiple Choice Questions.</li>
								<li>Total time for the Quiz is 2 Minutes.</li>
								<li>You can finish the exam at any time.</li>
								<li>Read the question carefully before answering.</li>
								<li>You can change your answers before submitting.</li>
								<li>Good luck for the test.</li>
								<br>
								<a href="examTest.jsp" class="btn btn-primary">Start Exam</a>
							</ul>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<section class="footer-section">
		<div class="container">
			<div class="row">
				<div class="col-md-11">&copy; E-Examination System </div>

			</div>
		</div>
	</section>

	<script src="assets/js/jquery-1.10.2.js"></script>

	<script src="assets/js/bootstrap.js"></script>

	<script src="assets/js/custom.js"></script>
	
</body>

</html>
