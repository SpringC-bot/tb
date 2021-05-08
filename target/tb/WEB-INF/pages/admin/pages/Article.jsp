<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/3/8
  Time: 12:00
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

    <title>欢迎访问贴吧</title>
    <%--导入bootstrap.min.css--%>
    <link href="../../../../resources/css/bootstrap.css" rel="stylesheet"/>
    <script src="../../../../resources/js/jquery.min.js"></script>
    <script src="../../../../resources/js/bootstrap.min.js"></script>
    <style>
        .td_one{
            width: 100px;
        }
        .td_two{
            width: 600px;
        }
    </style>
</head>
<body>
    <div class="container">
        <table class="table-bordered">
            <tr class="">
                <td class="td_one">
                    <ul class="list-group">
                        <li class="list-group-item">
                            <img class="img-thumbnail" src="../../../../resources/images/头像01.jpg" width="80%" alt="#">
                            <p class="center-block">你微笑时很美</p>
                        </li>
                    </ul>
                </td>
                <td class="td_two">
                    <p>
                        contentcontentcontentcontentcontentcontentv
                    </p>
                </td>
            </tr>

            <tr class="">
                <td class="td_one">
                    <ul class="list-group">
                        <li class="list-group-item">
                            <img class="img-thumbnail" src="../../../../resources/images/头像01.jpg" width="80%" alt="#">
                            <p class="center-block">你微笑时很美</p>
                        </li>
                    </ul>
                </td>
                <td class="td_two">
                    <ul class="list-group">
                        <li class="list-group-item">
                            <p>
                                contentcontentcontentcontentcontentcontentv
                            </p>
                        </li>
                        <li class="list-group-item">
                            <p>comment:评论一</p>
                            <p>comment:评论二</p>
                        </li>
                    </ul>
                </td>
            </tr>

        </table>
    </div>

</body>
</html>
