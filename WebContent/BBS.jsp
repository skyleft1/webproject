<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%@ page import="bbs.DaoBbs" %>
<%@ page import="bbs.Bbs" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="css/BBS.css">
<title>jsp 게시판 웹 사이트 + 게시판</title>
</head>
<body>

<% int pageNumber = 1;
if(request.getParameter("pageNumber") != null){
	pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
}
%>

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
            <tbody>
            	<%
            	DaoBbs daobbs = new DaoBbs(); 
            	ArrayList<Bbs> list = daobbs.getList(pageNumber);
            	for(int i=0; i<list.size(); i++){
            	%>
				<tr>
                    <td><%= list.get(i).getBbsID() %></td> 
                    <td><a href="BBS_view.jsp?bbsID=<%= list.get(i).getBbsID() %>"><%= list.get(i).getBbsTitle() %></a></td>
                    <td><%= list.get(i).getUserID() %></td>
                    <td><%= list.get(i).getBbsDate().substring(0, 11)+list.get(i).getBbsDate().substring(11, 13)+"시"+ list.get(i).getBbsDate().substring(14, 16)+"분" %></td>
                </tr>
            	<%
            	}
            	%>
            </tbody>
        </table>
	        <%
	        if(pageNumber != 1){
			%>	
				<a href="BBS.jsp?pageNumber=<%=pageNumber - 1 %>" class="#">이전</a>
	        <%
	        } if(daobbs.nextPage(pageNumber + 1)){
	        %>
	        	<a href="BBS.jsp?pageNumber=<%=pageNumber + 1 %>" class="#">다음</a>
	        <%
	        }
	        %>	
			
        <input type="button" value="글쓰기" onclick="location.href ='write.jsp'"/>
        
    </div>
</div>



</body>
</html>