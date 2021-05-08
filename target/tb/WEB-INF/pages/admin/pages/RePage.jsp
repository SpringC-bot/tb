<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/3/10
  Time: 18:55
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html; ISO-8859-1;charset=UTF-8" language="java" %>--%>
<html>
<head>
    <title>Title</title>
   <%-- <link href="../../../../resources/css/bootstrap.css">
    <script src="../../../../resources/js/jquery.min.js"></script>
    <script src="../../../../resources/js/bootstrap.js"></script>--%>
</head>
<body>
    <form action="${pageContext.request.contextPath}/user/userRegister" method="post">
        <input type="text" name="userName"/>
        <input type="password" name="userName"/>
        <input type="submit" value="注册">
    </form>

</body>
</html>
