<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<%@include file="all_components/allCSS.jsp"%>
<style type="text/css">
.bck-img {
background: url("img/bg1.jpg");
width: 100%;
height: 80vh;
backgroung-repeat: no-repeat;
backgroung-size: cover;
}
</style>
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
								<h5>Login Page</h5>
						</div>
						<%-- <c:if test="${not empty succMsg}">
							<h4 class="text-center text-danger">${succMsg }</h4>
							<c:remove var="succMsg" />
						</c:if> --%>
						<form action="Login" method="Post">
							<div class="form-group">
								<label>Username</label> <input type="email"
									required="required" class="form-control"
									id="exampleInputEmail1" aria-describedly="email-help" name="email">
							</div>
							<div class="form-group">
								<label for="exampleInpuPassword1">Enter Password</label> <input
									required="required" type="password" class="form-control"
									id="exampleInputPassword1"  name="password">
							</div>
							<button type="Submit" 
								class="btn btn-primary badge-pill btn-block">Login</button>

							</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="all_components/footer.jsp" %>
</body>
</html>