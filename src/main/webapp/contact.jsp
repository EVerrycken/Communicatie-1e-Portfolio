<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<jsp:include page="head.jsp">
    <jsp:param name="title" value="Contact"/>
</jsp:include>
<body>
<div id="container">
    <jsp:include page="header.jsp">
        <jsp:param name="actual" value="Contact"/>
    </jsp:include>
    <main>
        <section>
            <h2>Contactgegevens</h2>
            <p>evert.verrycken@student.ucll.be</p>
            <p>www.linkedin.com/in/evert-verrycken</p>
        </section>
    </main>
    <jsp:include page="footer.jsp"/>
</div>
</body>
</html>
