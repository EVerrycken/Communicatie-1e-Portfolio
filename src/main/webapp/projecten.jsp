<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<jsp:include page="head.jsp">
    <jsp:param name="title" value="Projecten"/>
</jsp:include>
<body>
<div id="container">
    <jsp:include page="header.jsp">
        <jsp:param name="actual" value="Projecten"/>
    </jsp:include>
    <main>
        <section>
            <h2>Gerealiseerde projecten</h2>
            <p>Voeg projecten toe die je gerealiseerd hebt, ook niet-schoolgerelateerd</p>
            <p>Beschrijf ook de projecten, hoe tot stand gekomen, welke technologie is er gebruikt, enz.</p>
        </section>
    </main>
    <jsp:include page="footer.jsp"/>
</div>
</body>
</html>
