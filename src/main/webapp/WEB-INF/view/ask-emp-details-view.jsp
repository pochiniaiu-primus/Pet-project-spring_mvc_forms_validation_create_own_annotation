<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!Doctype html PUBLIC "Transitional//EN">
<html>
<head>
    <title>Hi</title>
</head>
<body>
<h2>Dear Employee, Please enter your details</h2>
<br>
<br>
<%--<form action="showDetails" method="get">--%>
<%--    <input type="text" name="employeeName"--%>
<%--    placeholder="Write your name"/>--%>

<%--    <input type="submit" value="Submit" accesskey="s"><!--Alt+s-->--%>
<form:form action="showDetails" modelAttribute="employee">
    Name <form:input path="name"/>
    <form:errors path="name"/>
    <br><br>
    Surname <form:input path="surname"/>
    <form:errors path="surname"/>
    <br><br>
    Salary <form:input path="salary"/>
    <form:errors path="salary"/>
    <br><br>
    Department <form:select path="department">
    <form:options items="${employee.departments}"/>
    <%--    </form:options>--%>
    <%--    <form:option value="Information Technology" label="IT"/>--%>
    <%--    <form:option value="Human Resources" label="HR"/>--%>
    <%--    <form:option value="Sales" label="Sales"/>--%>
</form:select>
    <br><br>
    Which car do you want?
    <br>
    <%--    BMW<form:radiobutton path="carBrand" value="BMW"/>--%>
    <%--    Mercedes-Benz<form:radiobutton path="carBrand" value="Mercedes-Benz"/>--%>
    <%--    Audi<form:radiobutton path="carBrand" value="Audi"/>--%>
    <form:radiobuttons path="carBrand" items="${employee.carBrands}"/>
    <br>
    <br>
    Which language(s) do you know?
    <%--    EN<form:checkbox path="languages" value="English"/>--%>
    <%--    DE<form:checkbox path="languages" value="German"/>--%>
    <%--    FR<form:checkbox path="languages" value="French"/>--%>

    <form:checkboxes path="languages" items="${employee.languageList}"/>
    <br><br>
    Phone number <form:input path="phoneNumber"/>
    <form:errors path="phoneNumber"/>
    <br><br>
    E-mail <form:input path="email"/>
    <form:errors path="email"/>
    <br><br>
    <input type="submit" value="OK">
</form:form>
</form>
</body>
</html>
