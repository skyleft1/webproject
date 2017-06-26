<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String userID = null;
    if (session.getAttribute("userID") != null) {
    userID = (String) session.getAttribute("userID");
}
%>

  <div class= "nav_back">
  
    <div class= "nav_login">
    <div class="logo"><a href ="index.jsp"></a> </div>
		<div class="nav">
			<ul class="menu">
				<li>munu11
					<ul>
						<li>menu1</li>
						<li>menu1</li>
						<li>menu1</li>
						<li>menu1</li>
					</ul>
				</li>
				<li>menu22
					<ul>
						<li>menu1</li>
						<li>menu1</li>
						<li>menu1</li>
						<li>menu1</li>
					</ul>
				</li>
				<li>menu11
					<ul>
						<li>menu1</li>
						<li>menu1</li>
						<li>menu1</li>
						<li>menu1</li>
					</ul>
				</li>
				<li>menu11
					<ul>
						<li>menu1</li>
						<li>menu1</li>
						<li>menu1</li>
						<li>menu1</li>
					</ul>
				</li>
				<li class="menu5">menu5
					<ul>
						<li><a href='BBS.jsp'>게시판</a></li>
						<li>menu1</li>
						<li>menu1</li>
						<li>menu1</li>
					</ul>
				</li>
					
			</ul>
			</div>


		<%
			if (userID == null) {
		%>

      <div id="login">
        <ul>
          <li class="sign_in"><a href="login.jsp">로그인</a></li>
          <li class="sign_up"><a href="join.jsp">회원가입</a></li>
        </ul>
      </div>
      <%
      } else {
     %>
      
      <div id="logout">
          
        <ul>
            <li>반갑습니다.</li>
            <li class="account_setting"><a href="#">회원관리</a></li>
            <li class="sign_out"><a href="logoutAction.jsp">로그아웃</a></li>
        </ul>
      </div>
      <%
      }
      %>
      
    </div>
  </div>
		</div>
  
