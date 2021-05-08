<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/3/8
  Time: 9:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8"  isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
<head>
    <title>Title</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="啊P">
    <link rel="icon" href="#">

    <title>欢迎访问贴吧</title>
    <%--导入bootstrap.min.css--%>
    <link href="../../../resources/css/bootstrap.css" rel="stylesheet"/>
    <script src="../../../resources/js/jquery.min.js"></script>
    <script src="../../../resources/js/bootstrap.min.js"></script>
</head>
<body>

    <div class="container">
        <div class="jumbotron">
            <h2>欢迎<a>用户id：123456</a>访问</h2>
            <a>登录时间为2021：03：08 / 09：42：00</a>

            <p>${sessionScope.get("userMessage")}</p>
            <p><a class="btn btn-primary btn-lg" href="#" role="button">请登录</a></p>
        </div>
    </div>


</body>
</html>
