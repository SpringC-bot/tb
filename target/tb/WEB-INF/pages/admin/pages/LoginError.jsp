<%--
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
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title>Error</title>
    <%--导入bootstrap.min.css--%>
    <link href="../../../../resources/css/bootstrap.css" rel="stylesheet"/>
    <script src="../../../../resources/js/jquery.min.js"></script>
    <script src="../../../../resources/js/bootstrap.min.js"></script>
</head>
<body>
    <h1>${sessionScope.get("loginError")}</h1>

</body>
</html>
