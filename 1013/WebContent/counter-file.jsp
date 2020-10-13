<%@page import="java.io.IOException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.io.*" %>
<jsp:useBean id="cnt" scope="application" class="Monica.Counter" />

<%
	int count = 0;
	session = request.getSession();
	session.setMaxInactiveInterval(1);
	String first = (String)session.getValue("checkfirst");
	
	String count_file = "c:/MonicaJSP/count.txt"; // 저장할 내용의 파일 생성
	if(cnt.getCount() == 0){
		int j = 0;
		String old = null;
		File infile = new File(count_file);
		try{
			if(infile.exists()){
				BufferedReader input = new BufferedReader(new FileReader(infile));
				if((old = input.readLine()) != null){ //1줄씩 읽어들임
					int i = Integer.parseInt(old);
					for(j=0; j<i; j++){
						cnt.setCount();
					}
					input.close(); // 파일닫기
				}
				}
			} catch (IOException e){
				out.print(e.getMessage());
			}
		}
		if(first != null){
			count = cnt.getCount();
		} else {
			cnt.setCount();
			count=cnt.getCount();
			session.putValue("checkfirst", "first");
		}
		if(count%10 == 0){
			try {
				count_file = "c:/MonicaJSP/count.txt";
				PrintWriter pw = new PrintWriter(new FileWriter(count_file));
				pw.println(count);
				pw.close();
			} catch(IOException e){
				out.println(e.getMessage());
			}
		}
	
	
	if(first != null){
		count = cnt.getCount();
	} else {
		cnt.setCount();
		count = cnt.getCount();
		session.putValue("checkfirst", "first");
	}
	out.print("현재까지 방문자 수 : " + count);
%>