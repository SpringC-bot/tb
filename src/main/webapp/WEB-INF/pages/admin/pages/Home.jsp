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
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>欢迎访问贴吧</title>
    <%--导入bootstrap.min.css--%>
    <link href="../../../../resources/css/some.css" rel="stylesheet"/>
    <link href="../../../../resources/css/bootstrap.css" rel="stylesheet"/>
    <script type="text/javascript" src="../../../../resources/js/jquery.min.js"></script>
    <script src="../../../../resources/js/bootstrap.min.js"></script>
    <script>
        function showArticle() {
            $.ajax({
                type:"GET",
                url:"${pageContext.request.contextPath}/article/showArticle",
                data:{},
                dataType:"json",
                success:function () {
                    alert("success");
                },
                error:function () {
                    alert("error");
                },
                type:"text"
            })

        }
    </script>
</head>
<body  onload="showArticle()">
    <%--顶部导航--%>
    <div>
        <%@include file="../Navigation.jsp"%>
    </div>
    <%--主体--%>
    <div class="container" id="div_table">
        <%--右侧导航栏--%>
        <%@include file="../RightNavigation.jsp"%>
        <%--内容--%>
        <%@include file="Content.jsp"%>
    </div>

    <div>
        <%--页脚--%>
        <%@include file="../Footer.jsp"%>
    </div>

</body>