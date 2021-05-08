<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8" isErrorPage="true" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>注册错误</title>
    <%--导入bootstrap.min.css--%>
    <link href="../../../../resources/css/bootstrap.css" rel="stylesheet"/>
    <script src="../../../../resources/js/jquery.min.js"></script>
    <script src="../../../../resources/js/bootstrap.min.js"></script>
</head>
<body>
<h1>${sessionScope.get("RegisterError")}</h1>

</body>
</html>
