<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>Custom login page</title>
</head>
<body>
<h1>Custom login page</h1>

<form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="POST">
    <p>
        Username: <input type="text" name="username"/>
    </p>
    <p>
        Password: <input type="password" name="password"/>
    </p>
    <input type="submit" value="Login"/>>
</form:form>
</body>
</html>
