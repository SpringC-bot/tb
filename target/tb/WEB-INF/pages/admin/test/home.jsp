<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/2/26
  Time: 5:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8"  isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
<head>
    <title>Title</title>
    <%--导入bootstrap.min.css--%>
    <link href="../../../../resources/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="../../../../resources/js/jquery.min.js"></script>
    <script src="../../../../resources/js/bootstrap.min.js"></script>
</head>
<body>
    <%@include file="../Navigation.jsp"%>

    <p>u can see something</p>
    <a href="findAll">findAllUsers</a>
    ${pageContext.request.contextPath}

    <p>this all article</p>
    <a href="article">findAllArticle</a>
    ${pageContext.request.getAttribute("articles")}

    <a href="findTag">findAllTag</a>

    <a href="findAllLike">findAllLike</a>
    <a href="findAllComment">findAllComment</a>

    <a href="toNavigation">toNavigation</a>

</body>
</html>
