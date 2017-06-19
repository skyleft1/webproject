<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/index.css">
<script src="js/jquery-3.1.0.min.js"></script>
<script src="js/common.js"></script>

<title>jsp 게시판 웹 사이트 + 회원가입</title>
</head>
<body>

<div id ="header"></div>

<div class="content">
    <div class="header">join
        <form method ='post' action = 'joinAction.jsp'>
            <div class="input_userid">아이디
                <input type="text" class="" placeholder="아이디" name="userID"/>
            </div>
            <div class="input_password">비밀번호
                <input type="password" class="" placeholder="비밀번호" name="userPassword"/>
            </div>
            <div class="input_name">이름
                <input type="text" class="" placeholder="" name="userName"/>
            </div>
            <div class="input_gender">성별
                <input type="radio" class="" autocomplete="off" name="userGender" value="여자" checked/> 여자
                <input type="radio" class="" autocomplete="off" name="userGender" value="남자" checked/> 남자
            </div>
            <div class="input_email">이메일
                <input type="email" class="" placeholder="예) aaa@naver.com" name="userEmail"/>
            </div>
            
            
            <div class="join_confirm">
                <input type="submit" class="" value="회원가입"/>
            </div>

        </form>
    </div>

</div>

<div id ="footer"></div>

</body>
</html>