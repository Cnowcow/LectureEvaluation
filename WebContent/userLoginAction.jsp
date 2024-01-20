<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>
<%@ page import="user.UserDTO" %>
<%@ page import="util.SHA256" %>
<%@ page import="java.io.PrintWriter" %>
<%
    request.setCharacterEncoding("UTF-8");
    String userID = null;
    String userPassword = null;

    // 사용자로부터 입력 받은 값들을 변수에 할당
    if(request.getParameter("userID") != null){
        userID = request.getParameter("userID");
    }
    if(request.getParameter("userPassword") != null){
        userPassword = request.getParameter("userPassword");
    }

    // 입력 값이 null이면 오류 처리
    if(userID == null || userPassword == null || userID.equals("") || userPassword.equals("")) {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('입력되지 않은 사항이 있습니다.')");
        script.println("history.back();");
        script.println("</script>");
        script.close();
        return;
    } 
   
	UserDAO userDAO = new UserDAO();
	int result = userDAO.login(userID, userPassword);
	if (result == 1){
		session.setAttribute("userID", userID);
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("location.href = 'index.jsp'");
		script.println("</script>");
		script.close();
		return;
	} else if (result == 0){
		PrintWriter script = response.getWriter();
		script.println("<script>");
        script.println("alert('아이디 혹은 비밀번호가 틀렸습니다')");
        script.println("history.back();");
		script.println("</script>");
		script.close();
		return;
	} else if (result == -1){
		PrintWriter script = response.getWriter();
		script.println("<script>");
        script.println("alert('아이디 혹은 비밀번호가 틀렸습니다')");
        script.println("history.back();");
		script.println("</script>");
		script.close();
		return;
	} else if (result == -2){
		PrintWriter script = response.getWriter();
		script.println("<script>");
        script.println("alert('데이터베이스 오류가 발생했습니다.')");
        script.println("history.back();");
		script.println("</script>");
		script.close();
		return;
	}
    
%>