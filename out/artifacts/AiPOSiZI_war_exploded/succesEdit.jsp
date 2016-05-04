<%@page import="res.Pascal"%>
<%@page import="res.Data"%>
<%@ page import="java.sql.SQLException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Insert title here</title>
</head>
<body>
<%Pascal pascal = new Pascal("0",request.getParameter("1"),request.getParameter("2"),request.getParameter("3"),request.getParameter("4")
        ,request.getParameter("5"));%>
<%
    try {
        Data.editPascal(pascal, request.getParameter("qqq"));
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>
<a href="index.jsp">Go to menu</a>
</body>
</html>
