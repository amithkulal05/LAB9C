<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Session Setup</title>
</head>
<body>
    <h2>Session Management Setup</h2>
    <form action="sessionHandler.jsp" method="POST">
        Enter your Name: <input type="text" name="username" required><br><br>
        Set Session Expiry (in minutes): <input type="number" name="expiryTime" required><br><br>
        <input type="submit" value="Start Session">
    </form>
</body>
</html>
