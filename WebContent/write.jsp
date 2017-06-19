<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/BBS.css">
<script src="js/jquery-3.1.0.min.js"></script>
<script src="js/common.js"></script>

<title>jsp 게시판 웹 사이트 + 게시판</title>
</head>
<body>


<div class="cotent">
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