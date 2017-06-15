<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.io.PrintWriter" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="css/index.css">
<title>jsp 게시판 웹 사이트</title>
</head>
<body>

<%
String userID = null;
if (session.getAttribute("userID") != null) {
    userID = (String) session.getAttribute("userID");
}
%>


<div id= "header" >
  <div id= "nav_back">
    <div id= "nav_login">
      <div id="nav">nav
        <ul>
          <li class="menu1">menu1</li>
          <li class="menu2">menu2</li>
          <li class="menu3">menu3</li>
          <li class="menu4">menu4</li>
          <li class="menu5">게시판</li>
        </ul>
      </div>
      <div></div>
      
      <%
      if(userID == null){
      %>

      <div id="login">login
        <ul>
          <li class="sign_in"><a href="login.jsp">로그인</a></li>
          <li class="sign_up"><a href="join.jsp">회원가입</a></li>
        </ul>
      </div>
      <%
      } else {
      %>
      
      <div id="logout">
        <ui>  반갑습니다. </ui>      
        <ul>
          <li class="account_setting"><a href="#">회원관리</a></li>
          <li class="sign_out"><a href="logoutAction.jsp">로그아웃</a></li>
        </ul>
      </div>
      <%
      }
      %>
      
    </div>
  </div>

  <div id ="image_slide">
    <!-- <img src="css/header_main1.jpg" alt="slide 1" /> -->

  
  </div>
</div>

<div id="banner">
  <div id = "slide_banner1">slide_banner1
    <img src="css/banner/exer01.jpg" alt="slide 1" />
  </div>
  <div id = "slide_banner2"> slide_banner2
    <img src="css/banner/exer02.jpg" alt="slide 1" />
  </div>
  <div id = "slide_banner3"> slide_banner3
    <img src="css/banner/exer04.jpg" alt="slide 1" />
  </div>
</div>


<div id = "footer"> footer
</div>


</body>
</html>