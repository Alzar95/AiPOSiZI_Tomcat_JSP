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
<strong>Add</strong>
<br>
<form action="add.jsp" method="post">
    NameAndParameters: <br><label>
    <input type="text" name="1"/>
</label>
    <br>
    ProcedureOrFunction: <br><label>
    <input type="text" name="2"/>
</label>
    <br>
    ParameterTypes: <br><label>
    <input type="text" name="3"/>
</label>
    <br>
    ReturnType: <br><label>
    <input type="text" name="4"/>
</label>
    <br>
    Act: <br><label>
    <input type="text" name="5"/>
</label>
    <br><br>
    <input type="submit" name="press" value="Add"/>
</form>
</body>
</html>