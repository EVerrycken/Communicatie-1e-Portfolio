<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<jsp:include page="head.jsp">
    <jsp:param name="title" value="Home"/>
</jsp:include>
<body>
<div id="container">
    <jsp:include page="header.jsp">
        <jsp:param name="actual" value="Home"/>
    </jsp:include>
    <main>
        <video width="1024" height="576" controls="controls">
            <source src="images/1b-Voorstelling.mp4" type="video/mp4">
            Your browser does not support the video tag.
        </video>
    </main>
    <jsp:include page="footer.jsp"/>
</div>
</body>
</html>
