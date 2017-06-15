<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="css/BBS.css">
<title>jsp 게시판 웹 사이트 + 게시판</title>
</head>
<body>

<script src='http://code.jquery.com/jquery-3.1.1.min.js'></script>

<div class="container">
    <div class="row">
        <table class="table-striped">
            <thead>
                <tr>
                    <th style="background-color: yellow; text-align: center;">번호</th>
                    <th style="background-color: yellow; text-align: center;">제목</th>
                    <th style="background-color: yellow; text-align: center;">작성자</th>
                    <th style="background-color: yellow; text-align: center;">작성일</th>
                </tr>
            </thead>
        </table>

        <input type="button" value="글쓰기" onclick="location.href ='write.jsp'"/>
        
    </div>
</div>



</body>
</html>