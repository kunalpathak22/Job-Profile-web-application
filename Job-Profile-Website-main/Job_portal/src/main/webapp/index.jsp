<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.DB.DBConnect" %>
<%@page import="java.sql.Connection" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_components/allCSS.jsp"%>
<style type="text/css">
.back-img {
background: url("img/bg2.jpg");
width: 100%;
height: 80vh;
backgroung-repeat: no-repeat;
backgroung-size: cover;
}
</style>

</head>
<body>
	<%@include file="all_components/Navbar.jsp"%>
	
	<div class="container-fluid back-img">
		<div class="text-center">
			<h1 class="text-white p-4">
				<i class="fa-solid fa-computer-speaker"></i> Online Job Portal
			</h1>
		</div>
	</div>
<%@include file="all_components/footer.jsp" %>

</body>
</html>