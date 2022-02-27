<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2022-02-09
  Time: 오후 7:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <link rel="stylesheet" href="/css/myPage.css" type="text/css">
    <title>myPage</title>
</head>
<body>
<%
    if(session.getAttribute("log") == null){
        request.getRequestDispatcher("/?center=login").forward(request,response);
    }
%>
    <c:set var="log" value="${sessionScope.log}" scope="session"/>
    <div class="myPageWrap">
        <span class="myPageTitle">마이페이지</span>
        <div class="myPage">
            <div class="profile">
                <img src="/media/defaultProfile.png" class="profilePic">
                <span class="id">${log}님</span>
            </div>
            <button class="editInfo" onclick="location.href='/?center=editInfo'">정보수정</button>
            <button class="myReview">MY REVIEW</button>
        </div>
    </div>
</body>
</html>
