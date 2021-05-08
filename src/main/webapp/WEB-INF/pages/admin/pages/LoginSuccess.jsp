<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/3/9
  Time: 17:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8" isErrorPage="true" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
<head>
    <title>Title</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>LoginSuccess</title>
    <%--导入bootstrap.min.css--%>
    <link href="../../../../resources/css/bootstrap.css" rel="stylesheet"/>
    <script src="../../../../resources/js/jquery.min.js"></script>
    <script src="../../../../resources/js/bootstrap.min.js"></script>
</head>
<body>

    <div class="container">
        <div class="jumbotron">
            <h2>欢迎<a>用户id：${sessionScope.user.nickName}</a>访问</h2>
            <a>登录时间为</a>
            <%
                Date date = new Date();
                request.setAttribute("date",date);
            %>
            <c:out value="${date}"/>

            <p>${sessionScope.get("userMessage")}</p>
            <p><a class="btn btn-primary btn-lg" href="${pageContext.request.contextPath}/toHome" role="button">欢迎访问！稍后跳转首页</a></p>

            <script>
                /*设计定时跳转*/
                setInterval(app,3000);
                function app() {
                    location.href="${pageContext.request.contextPath}/toHome";
                }
            </script>
        </div>
    </div>


</body>
</html>
