<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isErrorPage="true" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta charset="UTF-8">
    <title>Error</title>
</head>
<body>
    <jsp:include page="header.jsp">
        <jsp:param name="actual" value="Error"/>
    </jsp:include>
    <main>
        <p><c:out value="${error}"/></p>
    </main>
    <jsp:include page="footer.jsp"/>
</body>
</html>
