<%@page import="res.Pascal"%>
<%@page import="res.Data"%>
<%@ page import="java.sql.SQLException" %>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
        pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Insert title here</title>
    <link href="styleTwo.css" rel="stylesheet" type="text/css">
</head>
<body>
<strong>Edit</strong>
<br>
<%
    Pascal pascal= null;
    try {
        pascal = Data.getPascal(request.getParameter("qqq"));
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>
<form action="succesEdit.jsp" method="post">
    <input type="hidden" name="qqq" value=<%=pascal.getId()%>>
    NameAndParameters: <br><label>
    <input type="text" name="1" value=<%=pascal.getNameAndParameters() %>>
</label>
    <br>
    ProcedureOrFunction: <br><label>
    <input type="text" name="2" value=<%=pascal.getProcedureOrFunction() %>>
</label>
    <br>
    ParameterTypes: <br><label>
    <input type="text" name="3" value=<%=pascal.getParameterTypes() %>>
</label>
    <br>
    ReturnType: <br><label>
    <input type="text" name="4" value=<%=pascal.getReturnType() %>>
</label>
    <br>
    Act: <br><label>
    <input type="text" name="5" value=<%=pascal.getAct() %>>
</label>
    <br><br>
    <input type="submit" value="Edit"/>
</form>
</body>
</html>
