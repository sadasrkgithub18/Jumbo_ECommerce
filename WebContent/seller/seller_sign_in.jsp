<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Sign In</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">

<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	crossorigin="anonymous" />

<!-- Bootstrap JS Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>

<style>
.container {
	width: 400px;
	background: #fff;
}

body {
	background-color: lightblue;
}

h2 {
	color: blue;
	text-align: center;
	height: 30%;
}

.ptext {
	text-align: center;
	height: 50%;
}

img {
	width: 100%;
	height: 50%;
}

a{
color:white;
}

button {
  background-color: #04AA6D;
  color: white;
  padding: 5px 5px;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

</style>
</head>


<body>

	<div class="container"width: 250px; >
		<h2>Jumbo E-commerce</h2>
		<p class="ptext">Where every need meets</p>
		<img src="${pageContext.request.contextPath}/img/Jumbo.jpg"
			class="img-rounded" alt="E-commerce logo">

	</div>


	<div class="container">

		<form method="post" action="seller_login.jsp">

			<div>
				<h2>SignIn Form</h2>
				<p class="ptext">Log in to your account</p>
			</div>

			<div class="row mt-4">
				<div class="input-group mb-3 col">
					<span class="input-group-text"> <i class="bi bi-person-fill"></i>
					</span> <input type="email" class="form-control" placeholder="email"
						name="email">
				</div>
			</div>



			<div class="row">
				<div class="input-group mb-3 col">
					<span class="input-group-text"> <i
						class="bi bi-file-lock-fill"></i>
					</span> <input type="password" class="form-control" placeholder="password"
						name="password">
				</div>
			</div>

			<div class="row">
				<div class="col-sm-6">
					<input type="submit" class="form-control btn btn-primary btn-sm"
						value="Log In">
				</div>
				<div class="col-sm-6">
						<button type="button" class="signupbtn"><a href='seller_sign_up.jsp'>Sign Up</a></button>
				</div>
			</div>

		</form>
	</div>

	</div>

</body>

</html>