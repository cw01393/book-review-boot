<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2022-02-06
  Time: 오전 3:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <script type="text/javascript" src="/script/validation.js"></script>
    <link rel="stylesheet" href="/css/join.css" type="text/css">
    <title>join</title>
</head>
<body>
    <div class="join">
        <div class="joinWrap">
            <span id="joinTitle">회원가입</span>
            <form action="/main" method="post" class="joinForm">
                <table class="join">
                    <tr>
                        <td class="txt">
                            <span class="id">아이디</span>
                        </td>
                        <td class="joinInfo">
                            <input type="text" name="id" class="info" id="id">
                        </td>
                    </tr>
                    <tr>
                        <td class="txt">
                            <span class="pw">비밀번호</span>
                        </td>
                        <td class="joinInfo">
                            <input type="password" name="pw" class="info" id="pw">
                        </td>
                    </tr>
                    <tr>
                        <td class="txt">
                            <span class="pwCheck">비밀번호 확인</span>
                        </td>
                        <td class="joinInfo">
                            <input type="password" name="pwCheck" class="info" id="pwCheck">
                        </td>
                    </tr>
                    <tr>
                        <td class="txt">
                            <span class="name">이름</span>
                        </td>
                        <td class="loginInfo">
                            <input type="text" name="name" class="info" id="name">
                        </td>
                    </tr>
                    <tr class="info">
                        <td class="info" colspan="2">
                            <div class="line">
                                <hr color="grey" size="1">
                            </div>
                            <div class="checkboxes">
                                <p>
                                    <input type="checkbox" name="required"><span>&#9;(필수) 이용약관 동의</span><br>
                                </p>
                                <p>
                                    <input type="checkbox" name="required"><span>&#9;(필수) 개인정보 수집 및 이용내역에 대한 동의</span><br>
                                </p>
                                <p>
                                    <input type="checkbox" name="optionAll" onclick="allCheck(form)"><span>&#9;(선택) 마케팅 수신 정보 동의</span><br>
                                </p>
                                <div class="option">
                                    <input type="checkbox" name="option"><span>&#9;이메일</span>
                                    <input type="checkbox" name="option"><span>&#9;문자</span>
                                    <input type="checkbox" name="option"><span>&#9;카카오톡</span>
                                </div>
                            </div>
                        </td>
                    </tr>
                </table>
                <div class="btns">
                    <input type="button" value="취소" id="cancelBtn">
                    <input type="button" value="회원가입" id="joinBtn" onclick="joinUser(form)">
                </div>
            </form>
        </div>
    </div>
</body>
</html>
