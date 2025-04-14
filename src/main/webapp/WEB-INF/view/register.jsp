<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <title>Add Employee</title>
      <style>
         body {
         font-family: Arial, sans-serif;
         background-color: #e8f5e9;
         margin: 0;
         padding: 0;
         color: #2e7d32;
         }
         /* Header Styles */
         header {
         background-color: #4CAF50;
         color: white;
         padding: 15px 30px;
         display: flex;
         justify-content: space-between;
         align-items: center;
         }
         header h1 {
         margin: 0;
         font-size: 1.8em;
         }
         nav {
         display: flex;
         align-items: center;
         }
         nav a, nav form button {
         color: white;
         text-decoration: none;
         margin-left: 20px;
         font-size: 1em;
         background: none;
         border: none;
         cursor: pointer;
         font-family: inherit;
         }
         nav a:hover, nav form button:hover {
         text-decoration: underline;
         }
         /* Form Container */
         .container {
         max-width: 600px;
         margin: 40px auto;
         background-color: #ffffff;
         padding: 30px 40px;
         border-radius: 10px;
         border: 2px solid #4CAF50;
         box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
         }
         h2 {
         text-align: center;
         margin-bottom: 25px;
         color: #388E3C;
         }
         label {
         display: block;
         margin-bottom: 5px;
         font-weight: bold;
         }
         input[type="text"],
         input[type="date"],
         input[type="password"],
         select,
         textarea {
         width: 100%;
         padding: 10px;
         margin-bottom: 15px;
         border: 1px solid #ccc;
         border-radius: 6px;
         box-sizing: border-box;
         font-size: 1em;
         }
         textarea {
         resize: vertical;
         min-height: 60px;
         }
         .btn {
         background-color: #4CAF50;
         color: white;
         padding: 12px;
         border: none;
         width: 100%;
         border-radius: 6px;
         cursor: pointer;
         font-size: 1em;
         }
         .btn:hover {
         background-color: #388E3C;
         }
      </style>
   </head>
   <body>
      <!-- Header -->
      <header>
         <h1>Employee Portal</h1>
         <nav>
            <a href="/home">Home</a>
            <form action="/logout" method="post" style="display:inline;">
               <button type="submit">Logout</button>
            </form>
         </nav>
      </header>
      <!-- Form Container -->
      <div class="container">
         <h2>Add New Employee</h2>
         <c:if test="${not empty msg}">
            <h3>${msg}</h3>
            <c:remove var="msg"/>
         </c:if>
         <form action="/createEmp" method="post">
            <label for="name">Name</label>
            <input type="text" id="name" name="name" required>
            <label for="dob">Date of Birth</label>
            <input type="date" id="dob" name="dob" required>
            <label for="gender">Gender</label>
            <select id="gender" name="gender" required>
               <option value="">-- Select Gender --</option>
               <option value="Male">Male</option>
               <option value="Female">Female</option>
               <option value="Other">Other</option>
            </select>
            <label for="address">Address</label>
            <textarea id="address" name="address" required></textarea>
            <label for="city">City</label>
            <input type="text" id="city" name="city" required>
            <label for="state">State</label>
            <input type="text" id="state" name="state" required>
            <label for="loginId">Login ID</label>
            <input type="text" id="loginId" name="loginId" required>
            <label for="password">Password</label>
            <input type="password" id="password" name="password" required>
            <button type="submit" class="btn">Register</button>
         </form>
      </div>
   </body>
</html>