<%@ page import="com.bookreviewboot.bookreviewboot.domain.Review" %>
<%@ page import="java.util.List" %>
<%@ page import="com.bookreviewboot.bookreviewboot.service.ReviewService" %>
<%@ page import="lombok.RequiredArgsConstructor" %>
<%@ page import="com.bookreviewboot.bookreviewboot.domain.ReviewRepository" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2022-02-08
  Time: 오후 4:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <script type="text/javascript" src="/script/review.js"></script>
    <link rel="stylesheet" href="/css/review.css" type="text/css">
    <title>review</title>
</head>
<body>

    <div class="reviewWrap">

        <div class="comment">
            <span class="commentTitle">리뷰 등록</span>
            <c:choose>
                <c:when test="${not empty sessionScope.log}">
                    <c:set var="log" value="${sessionScope.log}"/>
                    <div class="inputArea">
                        <textarea name="comment" id="comment" cols="80" rows="5"></textarea>
                        <input type="button" class="saveBtn" value="등록하기" onclick="saveReview()">
                        <input type="hidden" name="log" class="log" value="${log}">
                    </div>
                </c:when>
                <c:otherwise>
                    <span class="alertTxt">로그인 후 리뷰 작성이 가능합니다</span>
                </c:otherwise>
            </c:choose>

        </div>
        <div class="reviewArea">
            <span class="reviewTitle">작성된 리뷰</span>
            <div class="reviews">

            </div>
        </div>
    </div>
</body>
</html>
