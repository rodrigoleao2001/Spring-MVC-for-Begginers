<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h1>Add an Item to your Todo List</h1>

		<form:form commandName="todo" action="/add-todo" method="post">
			<div class="form-group">
				<input type="text" name="desc" class="form-control"
					placeholder="Description" required>
					<form:errors path="desc" cssClass="text-warning" />
			</div>
			
			<button type="submit" class="btn btn-primary">Submit</button>
			
		</form:form>
	</div>

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
