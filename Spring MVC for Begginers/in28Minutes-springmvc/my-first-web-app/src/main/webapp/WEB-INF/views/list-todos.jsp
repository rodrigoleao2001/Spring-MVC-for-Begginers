<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<title>Todos for ${name}</title>
</head>
<body>
	<div class="container">
		<H1>Your Todos</H1>

		<table class="table table-striped" \s>
			<caption>Your Todos are</caption>

			<thead>
				<tr>
					<th>Description</th>
					<th>Date</th>
					<th>Completed</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${todos}" var="todo">
					<tr>
						<td>${todo.desc}</td>
						<td>${todo.targetDate}</td>
						<td>${todo.done}</td>
						<td><a href="/delete-todo?id=${todo.id}" class="btn btn-danger" type="button" >Delete</a></td>
						<td><a href="/update-todo?id=${todo.id}" class="btn btn-success" type="button" >Update</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>


		<a class="btn btn-success" href="/add-todo">Add</a>
	</div>
	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>
