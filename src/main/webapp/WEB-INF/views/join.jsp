<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="context" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
    <title>join Page</title>
</head>
<body>
<form method="POST" action="${context}/join" accept-charset="UTF-8">
    <input type="text" name="id" placeholder="id">
    <input type="text" name="name" placeholder="name">
    <input type="password" name="password" placeholder="password">
    <input type="password" name="passwordCheck" placeholder="passwordCheck">
    <input type="submit" value="join">
</form>

</body>
</html>