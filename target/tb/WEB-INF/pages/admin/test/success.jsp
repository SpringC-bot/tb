<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/2/27
  Time: 3:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <p>看到这个就算成功</p>
    ${pageContext.request.contextPath}
    <a href="${pageContext.request.contextPath}/toHome">去首页</a>

    ${requestScope.users}
<%--
    ${requestScope.articles}
--%>
    ${requestScope.tags}
    ${requestScope.allLike}
    ${requestScope.allComment}

</body>
</html>
