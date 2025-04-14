<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Login Form</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: #f0f2f5;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .login-container {
      background: white;
      padding: 30px 40px;
      border-radius: 12px;
      box-shadow: 0 4px 20px rgba(0,0,0,0.1);
      width: 100%;
      max-width: 400px;
    }

    .login-container h2 {
      margin-bottom: 20px;
      text-align: center;
      color: #333;
    }

    .form-group {
      margin-bottom: 15px;
    }

    .form-group label {
      display: block;
      margin-bottom: 6px;
      font-weight: bold;
      color: #555;
    }

    .form-group input {
      width: 100%;
      padding: 10px 12px;
      border: 1px solid #ccc;
      border-radius: 8px;
      font-size: 14px;
    }

    .form-group input:focus {
      border-color: #007bff;
      outline: none;
    }

    .btn {
      width: 100%;
      padding: 10px;
      background-color: #4CAF50;
      color: white;
      border: none;
      border-radius: 8px;
      font-size: 16px;
      cursor: pointer;
      margin-top: 10px;
    }

    .btn:hover {
      background-color: #45a049;
    }

    .register-link {
      display: block;
      text-align: center;
      margin-top: 15px;
      color: #007bff;
      text-decoration: none;
    }

    .register-link:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>

  <div class="login-container">
    <h2>Login</h2>
    <c:if test="${not empty msg}">
            <h3>${msg}</h3>
            <c:remove var="msg"/>
            </c:if>
    <form action="/loginUser" method="post">
      <div class="form-group">
        <label for="loginId">Login ID</label>
        <input type="text" id="loginId" name="loginId" required />
      </div>
      <div class="form-group">
        <label for="password">Password</label>
        <input type="password" id="password" name="password" required />
      </div>
      <button type="submit" class="btn">Login</button>
      <a href="/register" class="register-link">Don't have an account? Register</a>
    </form>
  </div>

</body>
</html>
