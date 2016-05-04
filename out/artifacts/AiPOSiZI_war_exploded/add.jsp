<%@ page import="res.Data"%>
<%@ page import="res.Pascal"%>
<%@ page import="java.sql.SQLException" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Insert title here</title>
</head>
<body>
<%if (request.getParameter("1").length()<45 &&request.getParameter("2").length()<45 &&request.getParameter("3").length()<45 &&request.getParameter("4").length()<45
        &&request.getParameter("5").length()<45){ %>
<% Pascal pascal = new Pascal("0",request.getParameter("1"),request.getParameter("2"),request.getParameter("3"),
        request.getParameter("4"),request.getParameter("5")); %>
<%
    try {
        Data.addPascal(pascal);
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>
<%=request.getParameter("1")+" "+request.getParameter("2") +" is added"%>
<%} else { %>
Cant add
<%} %>
<br>
<a href="index.jsp">Go to menu</a>
</body>
</html>
