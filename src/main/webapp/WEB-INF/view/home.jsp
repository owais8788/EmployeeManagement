<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <title>Welcome Page</title>
      <style>
         body {
         margin: 0;
         background-color: #e8f5e9;
         font-family: Arial, sans-serif;
         color: #2e7d32;
         }
         /* Header Styling */
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
         /* Main Content */
         .welcome-box {
         background-color: #ffffff;
         border: 2px solid #4CAF50;
         border-radius: 10px;
         box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
         margin: 50px auto;
         padding: 30px 50px;
         max-width: 90%;
         text-align: center;
         }
         h2 {
         color: #388E3C;
         margin-top: 40px;
         }
         table {
         margin: 20px auto;
         border-collapse: collapse;
         width: 100%;
         }
         th, td {
         padding: 12px 15px;
         border: 1px solid #4CAF50;
         text-align: center;
         }
         th {
         background-color: #4CAF50;
         color: white;
         }
         tr:nth-child(even) {
         background-color: #f1f8e9;
         }
         tr:hover {
         background-color: #c8e6c9;
         }
         .highlight {
         font-weight: bold;
         background-color: #a5d6a7 !important;
         }
         .button {
         margin-top: 20px;
         padding: 10px 25px;
         background-color: #4CAF50;
         color: white;
         border: none;
         border-radius: 5px;
         font-size: 1em;
         cursor: pointer;
         }
         .button:hover {
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
      <!-- Main Content -->
      <div class="welcome-box">
         <h1>Welcome</h1>
         <p><strong>Welcome, ${name}!</strong></p>
         <h2>Registered Employees</h2>
         <table>
            <thead>
               <tr>
                  <th>Name</th>
                  <th>Date of Birth</th>
                  <th>Gender</th>
                  <th>Address</th>
                  <th>City</th>
                  <th>State</th>
               </tr>
            </thead>
            <tbody>
               <c:forEach var="emp" items="${employees}">
                  <tr>
                     <td>${emp.name}</td>
                     <td>${emp.dob}</td>
                     <td>${emp.gender}</td>
                     <td>${emp.address}</td>
                     <td>${emp.city}</td>
                     <td>${emp.state}</td>
                  </tr>
               </c:forEach>
            </tbody>
         </table>
      </div>
   </body>
</html>