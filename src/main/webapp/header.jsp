<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header>
    <nav>
        <ul>
            <li ${param.actual eq "Home"?"id = \"actual\"":""}><a href="Controller?command=Home">Home</a></li>
            <li ${param.actual eq "CV"?"id = \"actual\"":""}><a href="Controller?command=CV">CV</a></li>
            <li ${param.actual eq "Competenties"?"id = \"actual\"":""}><a href="Controller?command=Competenties">Competenties</a></li>
            <li ${param.actual eq "Projecten"?"id = \"actual\"":""}><a href="Controller?command=Projecten">Projecten</a></li>
            <li ${param.actual eq "Contact"?"id = \"actual\"":""}><a href="Controller?command=Contact">Contact</a></li>
        </ul>
    </nav>
    <h1 class="weg"><span>${param.actual}</span></h1>
</header>

