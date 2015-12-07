<%@page import="com.hanains.guestbook.dao.GuestBookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	int no = Integer.parseInt(request.getParameter("no"));
	String password = request.getParameter("password");
	GuestBookDao dao = new GuestBookDao();
	int result = dao.delete(no, password);
	
	if(result>0){
		%>
			<script>
			alert("삭제되었습니다.");
			</script>
		<%		
		response.sendRedirect("/guestbook");
	}else{
		%>                                                        
		<script>
		alert("비밀번호가 틀렸습니다.");
		history.go(-1);
		</script>
	<%
	}
	
%>