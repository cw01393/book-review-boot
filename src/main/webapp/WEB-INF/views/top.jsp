<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2022-02-04
  Time: 오후 7:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="/css/top.css" type="text/css">
    <title>Title</title>
</head>
<body>
    <div class="header">
        <div class="headerWrap">
            <a class="logo" href="/">LOGO</a>
<%--            <img class="logo" src="../media/logo.png" onclick="location.href='/'">--%>
            <div class="memberMenu">
                <c:choose>
                    <c:when test="${empty sessionScope.log}">
                        <a class="menu" href="/?center=login">로그인</a>
                        <a class="menu" href="/?center=join">회원가입</a>
                    </c:when>
                    <c:otherwise>
                        <a class="menu" href="/logout">로그아웃</a>
                    </c:otherwise>
                </c:choose>
                <a class="menu" href="">마이페이지</a>
            </div>
        </div>
    </div>
</body>
</html>
