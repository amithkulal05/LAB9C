<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Verify Session</title>
</head>
<body>
    <%
        // Retrieve the name from the session
        String sessionUser = (String) session.getAttribute("user");

        if (sessionUser != null) {
    %>
            <h2 style="color: green;">Session Active!</h2>
            <p>Welcome back, <b><%= sessionUser %></b>. Your session is still valid.</p>
            <a href="index.jsp">Restart Test</a>
    <%
        } else {
    %>
            <h2 style="color: red;">Session Expired!</h2>
            <p>The session time has run out or was never set.</p>
            <a href="index.jsp">Try Again</a>
    <%
        }
    %>
</body>
</html>
