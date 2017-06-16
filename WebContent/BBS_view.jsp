<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.io.*" %>
<%@ page import = "bbs.Bbs" %>
<%@ page import = "bbs.DaoBbs" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="css/BBS_view.css">
<title>jsp 게시판 웹 사이트 + 게시판</title>
</head>
<body>

<script src='http://code.jquery.com/jquery-3.1.1.min.js'></script>

<%

    int bbsID = 0;
    if(request.getParameter("bbsID") != null){
        bbsID = Integer.parseInt(request.getParameter("bbsID"));
    }
    
    if(bbsID == 0){
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('유효하지 않는 게시글 입니다.')");
        script.println("location.href = 'BBS.jsp'");
        script.println("</script>");
    }
    
    Bbs bbs = new DaoBbs().getBbs(bbsID);

%>

    <div class="container">
        <div class="bbs_view_bbsid">
        <%= bbs.getBbsID() %>
        </div>

        <div class="bbs_view_title">
        <%= bbs.getBbsTitle() %>
        </div>

        <div class="bbs_view_userid">
        <%= bbs.getUserID() %>
        </div>

        <div class="bbs_view_date">

        </div>

        <div class="bbs_view_content">
        <%= bbs.getBbsContent() %>
        </div>
        
        
        <div>
        </div>
    </div>


</body>
</html>