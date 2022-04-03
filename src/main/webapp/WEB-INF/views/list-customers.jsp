<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>


<head><%@ page isELIgnored="false"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
		<div class="col-md-offset-1 col-md-10">
			<h2>Customer Relationship Management</h2>
			<hr />

			<input type="button" value="Add Customer"
				onclick="window.location.href='showForm'; return false;"
				class="btn btn-success" /> <br /> <br />
			<div class="panel panel-success">
				<div class="panel-heading">
					<div class="panel-title">Customer List</div>
				</div>
				<div class="panel-body">
					<table class="table table-striped table-bordered">
						<tr style="color: #fff; background:#2ECC71">
							<th style="text-align: center; vertical-align: middle;">First Name</th>
							<th style="text-align: center; vertical-align: middle;">Last Name</th>
							<th style="text-align: center; vertical-align: middle;">Email</th>
							<th style="text-align: center; vertical-align: middle;">Action</th>
						</tr>

						<!-- loop over and print our customers -->
						<c:forEach var="tempCustomer" items="${customer}">

							<!-- construct an "update" link with customer id -->
							<c:url var="updateLink" value="/customer/updateForm">
								<c:param name="customerId" value="${tempCustomer.id}" />
							</c:url>

							<!-- construct an "delete" link with customer id -->
							<c:url var="deleteLink" value="/customer/delete">
								<c:param name="customerId" value="${tempCustomer.id}" />
							</c:url>

							<tr >
								<td style="text-align: center; vertical-align: middle;">${tempCustomer.firstName}</td>
								<td style="text-align: center; vertical-align: middle;">${tempCustomer.lastName}</td>
								<td style="text-align: center; vertical-align: middle;">${tempCustomer.email}</td>
						
								<td style="text-align: center; vertical-align: middle;"><a
									href="/Customer_Relationship/customer/updateForm?customerId=${tempCustomer.id}"
									class="btn btn-success btn-sm"> Update</a> 
									
									<!-- Add "delete" button/link -->
									<a
									href="/Customer_Relationship/customer/delete?customerId=${tempCustomer.id}"
									class="btn btn-danger btn-sm"
									onclick="if (!(confirm('Are you sure you want to delete this Customer? -> ${tempCustomer.firstName}'))) return false">
										Delete </a></td>
							</tr>

						</c:forEach>

					</table>

				</div>
			</div>
		</div>

	</div>
</body>
</html>