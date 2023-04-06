<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 정보</title>
</head>
<body>
	<%
		String m_id = request.getParameter("p_id");
		String m_pw = request.getParameter("p_pw");
		String m_name = request.getParameter("p_name");
		String m_choice = request.getParameter("choice");
		String m_ph1 = request.getParameter("phone1");
		String m_ph2 = request.getParameter("phone2");
		String m_ph3 = request.getParameter("phone3");
		String m_gender = request.getParameter("gender");
		String[] m_hobby = request.getParameterValues("hobby");	//checkbox 배열로 받아야함(여러개 데이터)
		String m_intro = request.getParameter("Introduction");
	%>
	
	아이디 : <%= m_id %> <br><br>
	비밀번호 : <%= m_pw %> <br><br>
	이 름 : <%= m_name %> <br><br>
	연락처 : <%= m_choice %> <%= m_ph1 %> - <%= m_ph2 %> - <%= m_ph2 %> <br><br>
	성 별 : <%= m_gender %> <br><br>
	취 미 :  
	<%
		if(m_hobby != null) {
			for(int i=0; i<m_hobby.length; i++) {
				out.println(m_hobby[i] + " ");	
			}
		}else {
			out.println("취미없음");
		}
	%>	
	<br><br>
	본인소개 : <%= m_intro %> <br><br>
</body>
</html>