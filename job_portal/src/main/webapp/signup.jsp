<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>signup page</title>
<%@include file="all_component/all_css.jsp"%>
</head>
<body style="background-color: grey">
	<%@include file="all_component/navbar.jsp"%>
	<div class="containner-fluid">
		<div class="row p-4">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<div class="text-center">
							<i class="fa fa-user-plus fa-2x" aria-hidden="true"></i>

							<h5>Registration</h5>
						</div>
						 <c:if test="${not empty succMsg }">
							<h4 class="text-center text-success">${succMsg}</h4>
							<c:remove var="succMsg" />
						 </c:if>

						<form action="add_user" method="post">
							<div class="form-group">
								<label>Enter full name</label><input type="text"
									required="required" class="form-control" id="exampleInputEmail"
									aria-describedy="emailhelp" name="name">
							</div>

							<div class="form-group">
								<label>Enter qualification</label><input type="text"
									required="required" class="form-control" id="exampleInputEmail"
									aria-describedy="emailhelp" name="qua">
							</div>

							<div class="form-group">
								<label>Enter email</label><input type="text" required="required"
									class="form-control" id="exampleInputEmail"
									aria-describedy="emailhelp" name="em">
							</div>

							<div class="form-group">
								<label for="exampleInputpassword1">Enter password</label><input
									type="password" required="required" class="form-control"
									id="exampleInputEmail" aria-describedy="emailhelp" name="psw">
							</div>

							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Register</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>