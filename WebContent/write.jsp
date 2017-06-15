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
    <form action ="writeAction.jsp" method = "post">
        <div class="bbs_title">
            <input type="text" name="bbsTitle"/> 
        </div>
            
        <div class="bbs_content">
            <input type="text" name="bbsContent"/>
        </div>
    
        <div class="bbs_submit">
            <input type="submit" name="bbs_submit1" value="완료"/>
        </div>
    </form>
</div>



</body>
</html>