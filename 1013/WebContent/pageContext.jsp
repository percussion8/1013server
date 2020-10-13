<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

out.print("out.print도 내장메서드");
pageContext.getOut().print("pageContext.getOut()를 통해 출력");
//pageContext.getOut()으로 반환한 객체가 곧 out이다.

%>