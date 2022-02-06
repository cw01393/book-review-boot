<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2022-02-04
  Time: 오후 8:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <script type="text/javascript" src="/script/validation.js"></script>
    <link rel="stylesheet" href="/css/login.css" type="text/css">
    <title>Title</title>
</head>
<body>
    <div class="login">
        <div class="loginWrap">
            <span id="loginTitle">로그인</span>
            <form action="/login" method="post" class="loginForm">
                <table class="login">
                    <tr>
                        <td class="txt">
                            <span class="id">아이디</span>
                        </td>
                        <td class="loginInfo">
                            <input type="text" name="id" class="info" id="id">
                        </td>
                    </tr>
                    <tr>
                        <td class="txt">
                            <span class="pw">비밀번호</span>
                        </td>
                        <td class="loginInfo">
                            <input type="password" name="pw" class="info" id="pw">
                        </td>
                    </tr>
                </table>
                <div class="btns">
                    <input type="button" value="로그인" id="loginBtn" onclick="login(form)">
                    <input type="button" value="회원가입" id="joinBtn">
                </div>
            </form>
        </div>
    </div>
</body>
</html>
