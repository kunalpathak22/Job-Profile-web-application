<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign up Page</title>
<style type="text/css">
.bck-img {
background: url("img/bg.jpg");
width: 100%;
height: 100vh;
backgroung-repeat: no-repeat;
backgroung-size: cover;
}
</style>
<%@include file="all_components/allCSS.jsp"%>
</head>
<body>
	<%@include file="all_components/Navbar.jsp"%>
	<div class="container-fluid bck-img">
		<div class="row p-5">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<div class="text-center">
							<i class="fa-solid fa-user-check"></i>
								<h5>Registration</h5>
						</div>
						<c:if test="${not empty succMsg}">
							<h4 class="text-center text-danger">${succMsg }</h4>
							<c:remove var="succMsg" />
						</c:if> 
						<form action="add_user" method="post">
							<div class="form-group">
								<label>Enter Full Name</label> <input type="text"
									required="required" class="form-control"
									id="exampleInputEmail1" aria-describedly="email-help" name="name">
							</div>
							<div class="form-group">
								<label>Enter Qualification</label> <input type="text"
									required="required" class="form-control"
									id="exampleInputEmail1"  aria-describedly="email-help" name="qua">
							</div>
							<div class="form-group">
								<label>Enter Email</label> <input type="email"
									required="required" class="form-control"
									id="exampleInputEmail1"  aria-describedly="email-help" name="email">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Enter Password</label> <input
									required="required" type="password" class="form-control"
									id="exampleInputPassword1" name="ps">
							</div>
							<button type="Submit" 
								class="btn btn-primary badge-pill btn-block">Register</button>

							</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="all_components/footer.jsp" %>
</body>
</html>