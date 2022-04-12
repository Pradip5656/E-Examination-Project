
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">

<title>EES | Register</title>

<link rel="stylesheet" type="text/css" href="register.css">
</head>
<script type="text/javascript">
    function Validate() {
        var password = document.getElementById("inputPassword").value;
        var confirmPassword = document.getElementById("confrmpassword").value;
        if (password != confirmPassword) {
            alert("Passwords do not match.");
            return false;
        }
        return true;
    }
</script>

<body>
	<div id="logreg-forms">
	<div class="bg-img">
		<form  onSubmit="if(!confirm('Is the form filled out correctly?')){return false;}"class="form-signin" action="register">
			<h1 class="h3 mb-3 font-weight-normal" style="text-align: center">Student
				Sign Up</h1>
			<hr>
 <input type="text" id="inputEmail" class="form-control" placeholder="Student Name" required="" autofocus="" name="name" /></br>
            <input type="text" id="inputEmail" class="form-control" placeholder="Username" required="" autofocus="" name="uname" /></br>
            <input type="password" id="inputPassword" class="form-control" placeholder="Password" required="" name="upass" /></br>
            <input type="password" id="confrmpassword" class="form-control" placeholder="Confirm Password" required="" name="confmpass" /></br>
             <input type="email" id="inputEmail" class="form-control" placeholder="Email" required="" autofocus="" name="email" /></br>
            <input type="text" id="inputEmail" class="form-control" placeholder="City" required="" autofocus="" name="address" /></br>
            <input type="text" id="inputEmail" class="form-control" placeholder="Education" required="" autofocus="" name="education" />
            
            
			<input class="btn btn-success btn-block" type="submit" onclick="return Validate()" value="Register" style="color:white;"><br/>
            <a href="login.jsp" id="forgot_pswd">Already have an account? Sign In</a><br/>
			
			<h5 style="color: red; text-align: center;">${ermsg}</h5>
			<hr>
		</form>
	<div>
	</div>
</body>
</html>

