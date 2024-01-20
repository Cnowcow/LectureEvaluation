<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>
<%@ page import="user.UserDTO" %>
<%@ page import="util.SHA256" %>
<%@ page import="java.io.PrintWriter" %>
<%
    request.setCharacterEncoding("UTF-8");
	String userID = null;
	if(session.getAttribute("userID") != null){
		userID = (String) session.getAttribute("userID");
	}
	if(userID != null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
	    script.println("alert('로그인 상태입니다')");
		script.println("location.href = 'index.jsp'");
		script.println("</script>");
		script.close();
		return;
	}
    String userPassword = null;
    String userEmail = null;

    // 사용자로부터 입력 받은 값들을 변수에 할당
    if(request.getParameter("userID") != null){
        userID = request.getParameter("userID");
    }
    if(request.getParameter("userPassword") != null){
        userPassword = request.getParameter("userPassword");
    }
    if(request.getParameter("userEmail") != null){
        userEmail = request.getParameter("userEmail");
    }

    // 입력 값이 null이면 오류 처리
    if(userID == null || userPassword == null || userEmail == null || userID.equals("") || userEmail.equals("") || userPassword.equals("")) {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('입력되지 않은 사항이 있습니다.')");
        script.println("history.back();");
        script.println("</script>");
        script.close();
        return;
    } 
   
    // UserDAO를 사용하여 회원가입 처리
	UserDAO userDAO = new UserDAO();
	int result = userDAO.join(new UserDTO(userID, userPassword, userEmail, SHA256.getSHA256(userEmail), false));

	// 회원가입 결과에 따라 다른 처리
	if (result == -1){
	// 이미 존재하는 아이디인 경우
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('이미 존재하는 아이디입니다.')");
		script.println("history.back();");
		script.println("</script>");
		script.close();
		return;
	} else {
	// 회원가입 성공한 경우 세션에 사용자 아이디 저장 후 이메일 확인 페이지로 이동
		session.setAttribute("userID", userID);
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("location.href = 'emailSendAction.jsp'");
		script.println("</script>");
		script.close();
		return;
	}
    
%>