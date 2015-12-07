<%@page import="com.hanains.guestbook.vo.GuestBookVo"%>
<%@page import="com.hanains.guestbook.dao.GuestBookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	GuestBookDao dao = new GuestBookDao();
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String message = request.getParameter("message");
	GuestBookVo vo = new GuestBookVo(); 
	vo.setName(name);
	vo.setPassword(password);
	vo.setMessage(message);
	dao.add(vo);
	
	response.sendRedirect("/guestbook");
%>
