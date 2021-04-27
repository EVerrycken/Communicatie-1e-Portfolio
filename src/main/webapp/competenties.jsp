<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<jsp:include page="head.jsp">
    <jsp:param name="title" value="Competenties"/>
</jsp:include>
<body>
<div id="container">
    <jsp:include page="header.jsp">
        <jsp:param name="actual" value="Competenties"/>
    </jsp:include>
    <main>
        <h2>Competenties aan de hand van DLR's</h2>
        <iframe src="images/1d-DLR.pdf" height="800" width="70%"></iframe>
    </main>
    <jsp:include page="footer.jsp"/>
</div>
</body>
</html>
