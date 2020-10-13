<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="cnt" scope="application" class="Monica.Counter" />

<%
	int count = 0;
	session = request.getSession();
	session.setMaxInactiveInterval(1);
	String first = (String)session.getValue("checkfirst");
	
	if(first != null){
		count = cnt.getCount();
	} else {
		cnt.setCount();
		count = cnt.getCount();
		session.putValue("checkfirst", "first");
	}
	out.print("현재까지 방문자 수 : " + count);
%>