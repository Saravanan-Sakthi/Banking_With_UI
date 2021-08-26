<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page import="java.util.*" %>
    <%@ page import="banking.details.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customers</title>
</head>
<body>


<%-- <h1>Customers</h1>
<% HashMap<Long, Customers> map = (HashMap<Long, Customers>) request.getAttribute("data");%>
<%=map.toString() %>
   for(Customers c: map.values()){%>
   <%=c.toString()%>
   <%}%> --%>
   
   
   <h2>Customers</h2>
        
        <form action="welcome" method="post">
        <table>
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Mobile</th>
                    <th>City</th>
                </tr>
            </thead>
            
            <tbody>
                <c:forEach items="${data}" var="cus">
                <tr>
                    <td><input type="checkbox" name="id" value=${cus.getCustomerID()} >${cus.getCustomerID()}</td>
                    <td>${cus.getName()}</td>
                    <td>${cus.getEmail()}</td>
                    <td>${cus.getMobile()}</td>
                    <td>${cus.getCity()}</td>
                </tr>
                </c:forEach>   
            </tbody>
        </table>
        <input type="submit" name="option" value="Delete">
        <button name="option" value="AddCustomer">Add new</button>
        <input type="reset" name="option" value="Reset">
            </form>
</body>
</html>