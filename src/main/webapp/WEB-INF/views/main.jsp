<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2022-02-04
  Time: 오후 5:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="/css/main.css" type="text/css">
    <title>Main</title>
</head>
<body>
<%--    <%--%>
<%--    String centerTxt = request.getParameter("center");--%>

<%--    if(centerTxt == null){--%>
<%--        centerTxt = "center";--%>
<%--    }--%>
<%--    String center = "/" + centerTxt;--%>
<%--    %>--%>
    <header>
        <jsp:include page="/top"></jsp:include>
    </header>
    <main>
        <c:set var="center" value="${param.center}" scope="request"/>
        <c:choose>
            <c:when test="${empty center}">
                <jsp:include page="/center"></jsp:include>
            </c:when>
            <c:otherwise>
                <jsp:include page="/${center}"></jsp:include>
            </c:otherwise>
        </c:choose>
    </main>
    <footer>
        <jsp:include page="/bottom"></jsp:include>
    </footer>
</body>
</html>
