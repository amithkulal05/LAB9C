<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Session Status</title>
</head>
<body>
    <%
        // 1. Retrieve data from the form
        String name = request.getParameter("username");
        String expiryStr = request.getParameter("expiryTime");

        if (name != null && expiryStr != null) {
            int expiryMinutes = Integer.parseInt(expiryStr);
            
            // 2. Store name in session and set the timeout (in seconds)
            session.setAttribute("user", name);
            session.setMaxInactiveInterval(expiryMinutes * 60); 
    %>
            <h2>Hello, <%= name %>!</h2>
            <p>Your session has been set to expire in <b><%= expiryStr %></b> minute(s).</p>
            
            <hr>
            <p>Click the link below to check your session status:</p>
            <a href="checkSession.jsp">Check Session Status</a>
            
            <p><i>If you wait more than <%= expiryStr %> minute(s) before clicking, 
            the session will expire.</i></p>
    <%
        } else {
            out.println("Please provide valid input. <a href='index.jsp'>Go Back</a>");
        }
    %>
</body>
</html>
