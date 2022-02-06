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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <script type="text/javascript" src="/script/validation.js"></script>
    <link rel="stylesheet" href="/css/center.css" type="text/css">
    <title>Title</title>
</head>
<body>
    <div class="searchMain">
        <div class="searchWrap">
            <span id="searchTitle">도서 검색</span>
            <form action="" class="searchForm">
                <input type="search" name="search" id="searchBar">
                <input type="button" id="searchBtn" value="검색" onclick="searchNext()">
            </form>
        </div>
    </div>
</body>
</html>
