<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/3/10
  Time: 12:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8" isErrorPage="true" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>注册成功</title>

    <%--导入bootstrap.min.css--%>
    <link href="../../../../resources/css/bootstrap.css" rel="stylesheet"/>
    <script src="../../../../resources/js/jquery.min.js"></script>
    <script src="../../../../resources/js/bootstrap.min.js"></script>
</head>
<body>
    <h2>注册成功，欢迎用户${sessionScope.user.nickName},3秒后跳转到首页</h2>
    <script>
        setInterval(toHome,3000);
        function toHome() {
            window.location="${pageContext.request.contextPath}/toHome";
        }
    </script>

</body>
</html>
