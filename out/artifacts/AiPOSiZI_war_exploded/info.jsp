<%@page import="res.Data"%>
<%@page import="res.Pascal"%>
<%@page import="java.util.List"%>
<%@ page import="java.sql.SQLException" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Insert title here</title>
    <link href="styleTwo.css" rel="stylesheet" type="text/css">
</head>
<body>
<strong>Information</strong>
<br>
<%
    List<Pascal> pascals= null;
    try {
        pascals = Data.getPascals();
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>
<%for (int i=0;i<pascals.size();i++){%>
Id: <%=pascals.get(i).getId() %>
<br>
<form action="edit.jsp" method="post">
    <input type="hidden" name="qqq" value=<%=pascals.get(i).getId()%>>
    <input type="submit" name="press" value="edit" />
</form>
<form action="delete.jsp" method="post">
    <input type="hidden" name="qqq" value=<%=pascals.get(i).getId()%>>
    <input type="submit" name="press1" value="delete" />
</form>
NameAndParameters: <%=pascals.get(i).getNameAndParameters() %>
<br>
ProcedureOrFunction: <%=pascals.get(i).getProcedureOrFunction() %>
<br>
ParameterTypes: <%=pascals.get(i).getParameterTypes() %>
<br>
ReturnType: <%=pascals.get(i).getReturnType() %>
<br>
Act: <%=pascals.get(i).getAct() %>
<br>
<br>
<%} %>
<a href="index.jsp">Go to menu</a>

</body>
</html>
