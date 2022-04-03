<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Relationship</title>


<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<script src="<c:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

<style>
h2 {
	text-align: center;
}
</style>

</head>
<body>
	<div class="container">
		<div class="col-md-offset-2 col-md-7">

			<div class="col-md-offset-1 col-md-10">
				<h2>Customer Relationship Management</h2>
				<hr />

				<div class="panel panel-success">
					<div class="panel-heading">
						<div class="panel-title">Save Customer</div>
					</div>

					<div class="panel-body">
						<form:form action="saveCustomer" cssClass="form-horizontal"
							method="post" modelAttribute="customer">

							<!-- need to associate this data with customer id -->
							<form:hidden path="id" />

							<div class="form-group">
								<label for="firstname" class="col-md-3 control-label">First
									Name</label>
								<div class="col-md-9">
									<form:input path="firstName" cssClass="form-control" />
								</div>
							</div>
							<div class="form-group">
								<label for="lastname" class="col-md-3 control-label">Last
									Name</label>
								<div class="col-md-9">
									<form:input path="lastName" cssClass="form-control" />
								</div>
							</div>

							<div class="form-group">
								<label for="email" class="col-md-3 control-label">Email</label>
								<div class="col-md-9">
									<form:input path="email" cssClass="form-control" />
								</div>
							</div>

							<div class="form-group">
								<!-- Button -->
								<div class="col-md-offset-3 col-md-9">
									<form:button class="btn btn-success col-2">Save</form:button>
								</div>
							</div>
							<input type="button" value="Customer List"
								onclick="window.location.href='list'; return false;"
								class="btn btn-link" />
							<br />
							<br />
						</form:form>
					</div>
				</div>
			</div>
		</div>
</body>
</html>