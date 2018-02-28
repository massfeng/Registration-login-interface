<%--
  Created by IntelliJ IDEA.
  User: 94545
  Date: 2018/1/30
  Time: 14:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1 style="text-align: center ">欢迎来到注册界面</h1>
<p align="center" style="color:red;font-weight: 800">${message}</p>
<form action="<c:url value='/RegisterServlet'/>" method="post">
    <input type="hidden" name="method" value="register">
    <table align="center" width="40%" >
        <tr>
            <td>
                用户名:
            </td>
            <td>
                <input type="text" name="username"
                       value="${user.username}"/>${errors.username }
            </td>
        </tr>
        <tr>
            <td>
                密  码:
            </td>
            <td>
                <input type="password" name="password"
                       value="${user.password}"/>${errors.password}
            </td>
        </tr>
        <tr>
            <td>
                手机号码:
            </td>
            <td>
                <input type="text" name="phone"
                       value="${user.phone}"/>${errors.phone}
            </td>
        </tr>
        <tr>
            <td>
                邮箱:
            </td>
            <td>
                <input type="text" name="email"
                       value="${user.email}"/>${errors.email}
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <input style="text-align: center" type="submit" value="注册">
                <input style="text-align: center" type="reset" value="重置">
            </td>
        </tr>
    </table>
</form>
</body>
</html>