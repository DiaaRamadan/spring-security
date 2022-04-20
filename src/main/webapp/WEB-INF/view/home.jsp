<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<html>
<head>
<title>Demo Home Page</title>
</head>

<body>
	<h2>Demo Home Page</h2>
	<hr>
	Welcome to Demo home page!
	<hr>

	<p>
		User:
		<security:authentication property="principal.username" />
		<br> <br> Role(s):
		<security:authentication property="principal.authorities" />
	</p>

	<hr>

	<security:authorize access="hasRole('MANAGER')">
		<p>
			<a href="${pageContext.request.contextPath}/leaders">LeaderShip
				Meeting</a> (Only for manager peeps)
		</p>
	</security:authorize>

	<security:authorize access="hasRole('ADMIN')">
		<p>
			<a href="${pageContext.request.contextPath}/systems">IT System</a>
			(Only for Admin peeps)
		</p>
	</security:authorize>

	<form:form action="${pageContext.request.contextPath}/logout"
		method="POST">
		<input type="submit" value="Logout" />
	</form:form>
</body>

</html>