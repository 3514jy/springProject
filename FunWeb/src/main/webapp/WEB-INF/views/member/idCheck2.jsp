<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String uID=request.getParameter("uID");
// 디비작업
//MemberDAO 객체생성
MemberDAO memberDAO=new MemberDAO();
//MemberDTO memberDTO = getMember(String id)메서드 호출 
MemberDTO memberDTO=memberDAO.getMember(uID);
// 아이디 없으면 null   => 아이디 중복아님  아이디 사용가능
// 아이디 있으면 null아님 => 아이디 중복  아이디 사용못함
if(memberDTO==null){
	%>아이디 사용가능<%
}else{
	%>아이디 중복<%
}
%>
</body>
</html>