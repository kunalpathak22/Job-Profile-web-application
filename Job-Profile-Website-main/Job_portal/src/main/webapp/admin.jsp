<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>
<style type="text/css">
.back-img {
	background: url("img/admin.jpg");
	width: 100%;
	height: 100vh;
	backgroung-repeat: no-repeat;
	backgroung-size: cover;
}
</style>
<%@include file="all_components/allCSS.jsp"%>
</head>
<body>
	<c:if test="${ userobj.role ne 'admin'}">
		<c:redirect url="Login.jsp"></c:redirect>

	</c:if>

	<%@include file="all_components/Navbar.jsp"%>
	<div class="container-fluid back-img">
		<div class="text-center">
			<h1 class="text-white p-4">Welcome Admin</h1>
		</div>
	</div>

</body>
</html>