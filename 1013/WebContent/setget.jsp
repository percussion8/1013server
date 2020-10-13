<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="info" scope="page" class="Monica.User" />

현재값: 
<jsp:getProperty property="name" name="info"/>
<jsp:getProperty property="num" name="info"/>


<br>
Form으로부터 설정된 값
<jsp:setProperty property="name" name="info"/>
<jsp:setProperty property="num" name="info" param="id"/>
<jsp:getProperty property="name" name="info"/>
<jsp:getProperty property="num" name="info"/>
<br>

직접 설정한 값
<jsp:setProperty property="name" name="info" value="모짜르트"/>
<jsp:setProperty property="num" name="info" value="123456"/>
<jsp:getProperty property="name" name="info"/>
<jsp:getProperty property="num" name="info"/>