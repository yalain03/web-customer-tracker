<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!doctype>
<html>
<head>
<meta charset="utf-8">
<title>Create Customer</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
<h3>CRM - Customer Relationship Manager</h3>
<div class="container">
	<h3>Save Customer</h3>
	<div class="container">
		<form:form action="saveCustomer" modelAttribute="customer" method="POST">
		<!-- need to associate this data with customer id -->
		<form:hidden path="id"/>
		
			<div class="form-group">
		      <label>First name:</label>
		      <form:input  path="firstName" class="form-control"/>
		    </div>
		    <div class="form-group">
		      <label>Last name:</label>
		      <form:input path="lastName" class="form-control"/>
		    </div>
		    <div class="form-group">
		      <label>Email:</label>
		      <form:input path="email" class="form-control"/>
		    </div>
		    <div class="form-group">
		      <input type="submit" value="save" class="btn btn-success"/>
		    </div>
		</form:form>
		
		<p><a href="${pageContext.request.contextPath}/customer/list">Back to list</a></p>
	</div>
</div>
</body>
</html>