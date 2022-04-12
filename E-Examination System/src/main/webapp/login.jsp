<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet"href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

<title>EES | Login</title>
<link rel="stylesheet" type="text/css" href="login.css">
</head>
<body>
	<div id="logreg-forms" >
	<div class="bg-img">
		<form class="form-signin" action="login" method="post">
			<h1 class="h3 mb-3 font-weight-normal" style="text-align: center">Login</h1>
			<hr />
			<input type="text" class="form-control" placeholder="Username"required="" autofocus="" name="username"/></br>
		    <input type="password" class="form-control" placeholder="Password" required="" name="pass" /><br>

			<input class="btn btn-secondary btn-block" type="submit" value="Login"style="color: white"><br />
			 <a href="register.jsp" id="forgot_pswd" >Don't have an account? Sign Up</a><br />
			<h5 style="color: red; text-align: center;">${err}</h5>
			<hr />
		</form>
		</div>

	</div>
</body>
</html>
