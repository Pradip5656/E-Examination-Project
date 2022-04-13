<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
              <h3><b>E-Examination System<b>></h3>
              </div>
              

			</div>
			
            
			<div class="right-div">
				<a href="logout" class="btn btn-info pull-right">LOG OUT</a>
			</div>
		</div>
	</div>
	<jsp:include page="adminHeader.jsp"></jsp:include>
	<!-- MENU SECTION END-->
	<div class="content-wrapper">
		<div class="container">
			<div class="row pad-botm">
				<div class="col-md-12">
					<h4 class="header-line">Add Exam Questions</h4>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<form action="AddQuestion" method="post">
						<div class="form-group">
							<label>Select Topic.:</label> 
							<select name="selectTopic" class="form-control">
								<option>Select Topic</option>
								<option>Java Programming</option>
								<option>Programming and Data Structures</option>
								<option>Design and Implementation</option>
								<option>Operating Systems</option>
								<option>Computer Communication Networks</option>
								<option>Software Engineering</option>
								<option>Database Management Systems</option>
								
							</select>
						</div>
						<div class="form-group">
							<label>Question:</label> 
							<input type="text" name="question" class="form-control">
						</div>
						<div class="form-group">
							<label>Options-1</label> 
							<input type="text" name="option1" class="form-control">
						</div>
						<div class="form-group">
							<label>Options-2 </label>
							 <input type="text" name="option2" class="form-control">
						</div>
						<div class="form-group">
							<label>Options-3</label> <input type="text" name="option3"
								class="form-control">
						</div>
						<div class="form-group">
							<label>Options-4</label> <input type="text" name="option4"
								class="form-control">
						</div>
						<div class="form-group">
							<label>Correct Answer:</label> <input type="text"
								name="correctAnswer" class="form-control">
						</div>
						<input type="submit" value="Add Question" class="btn btn-primary">
						<input type="reset" value="Clear" class="btn btn-danger">
						<h5 style="color: red; text-align: center;">${ermsg}</h5>
					</form>
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
	
	
</body>
</html>
