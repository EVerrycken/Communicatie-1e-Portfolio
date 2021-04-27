<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<jsp:include page="head.jsp">
    <jsp:param name="title" value="CV"/>
</jsp:include>
<body>
<div id="container">
    <jsp:include page="header.jsp">
        <jsp:param name="actual" value="CV"/>
    </jsp:include>
    <main>
        <h2>Curriculum Vitae</h2>
        <iframe src="images/1c-CV.pdf" height="800" width="70%"></iframe>
    </main>
    <jsp:include page="footer.jsp"/>
</div>
</body>
</html>
