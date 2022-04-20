<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Custom login page</title>
</head>
<body>
<h1>Custom login page</h1>

<form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="POST">

    <c:if test="${param.error != null}">
        <i style="color: red">Sorry, you entered invalid username/password</i>
    </c:if>

    <p>
        Username: <input type="text" name="username"/>
    </p>
    <p>
        Password: <input type="password" name="password"/>
    </p>
    <input type="submit" value="Login"/>
</form:form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>
