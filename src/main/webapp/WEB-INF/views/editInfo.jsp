<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2022-02-09
  Time: 오후 9:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <script type="text/javascript" src="/script/validation.js"></script>
    <link rel="stylesheet" href="/css/editInfo.css" type="text/css">
    <title>editInfo</title>
</head>
<body>
    <div class="editInfoWrap">
        <span id="editInfoTitle">회원정보 수정</span>
        <form action="" class="editInfoForm">
            <table class="editInfo">
                <tr>
                    <td class="txt">
                        <span id="id">아이디</span>
                    </td>
                    <td class="userInfo">
                        <span class="idInfo">id</span>
                    </td>
                </tr>
                <tr>
                    <td class="txt">
                        <span id="pw">비밀번호</span>
                    </td>
                    <td class="userInfo">
                        <input type="password" name="pw" class="info" id="pw">
                    </td>
                </tr>
                <tr>
                    <td class="txt">
                        <span id="name">이름</span>
                    </td>
                    <td class="userInfo">
                        <span class="nameInfo">이름</span>
                    </td>
                </tr>
            </table>
            <div class="btns">
                <input type="button" value="회원탈퇴" id="deleteBtn">
                <input type="button" value="정보수정" id="editBtn">
            </div>
        </form>
    </div>
</body>
</html>
