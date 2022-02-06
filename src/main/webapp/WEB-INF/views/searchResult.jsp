<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2022-02-06
  Time: 오후 10:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <script type="text/javascript" src="/script/search.js"></script>
    <link rel="stylesheet" href="/css/searchResult.css" type="text/css">
    <title>result</title>
</head>
<body>
    <div class="searchMain">
        <div class="searchWrap">
            <form action="" class="searchForm">
                <input type="search" name="search" id="searchBar">
                <input type="button" id="searchBtn" value="검색">
            </form>
        </div>
        <div class="resultWrap">
            <div class="resultArray">
                <!-- <div class="result">
                    <img class="thumbnail" src="" alt="thumbnail">
                    <div class="txt"><span class="title">title</span></div>
                    <div class="txt"><span class="authors">authorsauthorsauthorsauthors</span></div>
                    <div class="txt"><span class="publisher">publisherpublisherpublisher</span></div>
                </div> -->
            </div>
            <span>페이징처리</span>
        </div>
    </div>
</body>
</html>
