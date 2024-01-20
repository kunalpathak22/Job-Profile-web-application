<%@ page import="com.DB.DBConnect"%>
<%@page import="com.dao.*"%>
<%@ page import="com.entity.Jobs"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit</title>
<%@include file="all_components/allCSS.jsp"%>
<style type="text/css">
.back-img {
	background: url("img/postjob.jpg");
	width: 100%;
	height: 100vh;
	backgroung-repeat: no-repeat;
	backgroung-size: cover;
}
</style>
</head>
<body>

	<c:if test="${ userobj.role ne 'admin}">
		<c:redirect url="Login.jsp"></c:redirect>

	</c:if>
	<%@include file="all_components/Navbar.jsp"%>
	<div class="container p-2">
		<div class="col-md-10 offset-md-1">
			<div class="card">
				<div class="card-body">
					<div class="text-center text-succes">
						<i class="fa-solid fa-people-line"></i>
						<%
						int id = Integer.parseInt(request.getParameter("id"));
						JobDAO dao = new JobDAO(DBConnect.getConn());
						Jobs j = dao.getJobById(id);
						%>

						<h5>Edit Jobs</h5>
					</div>
					<form action="update" method="Post">
						<input type="hidden" value="<%=j.getId()%>" name="id">
						<div class="form-group">
							<label>Enter Title</label> <input type="text" name="title"
								required class="form-control" value="<%=j.getTitle()%>">
						</div>
						<div class="form-row">
							<div class="form-group col-md-4">
								<label>Location</label> <select name="location"
									class="custom-select" id="inlineFormCustomSelectPref">
									<option value="<%=j.getLocation()%>"><%=j.getLocation()%></option>
									<option value="Delhi">Delhi</option>
									<option value="Banglore">Banglore</option>
									<option value="Noida">Noida</option>
									<option value="Mumbai">Mumbai</option>
									<option value="Dehradun">Dehradun</option>
									<option value="Gujurat">Gujuart</option>
									<option value="Hyderabad">Hyderabad</option>
								</select>
							</div>
							<div class="form-group col-md-4">
								<label>Category</label> <select class="custom-select"
									id="inlineFormCustomSelectPref" name="category">
									<option value="<%=j.getCategory()%>"><%=j.getCategory()%></option>
									<option value="IT">IT</option>
									<option value="Developer">Developer</option>
									<option value="Teacher">Teacher</option>
									<option value="Banking">Banking</option>
									<option value="Engineer">Engineer</option>


								</select>
							</div>
							<div class="form-group col-md-4">
								<label>Status</label> <select class="form-control" name="status">
									<option class="Active" value="<%=j.getStatus()%>"><%=j.getStatus()%></option>
									<option class="Active" value="Active">Active</option>
									<option class="Inactive" value="Inactive">Inactive</option>

								</select>
							</div>
						</div>
						<div class="form-group">
							<label>Enter Description</label>
							<textarea required rows="6" cols="" name="desc"
								class="form-control"><%=j.getDescription()%></textarea>
						</div>
						<button class="btn btn-success">Update Job</button>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>