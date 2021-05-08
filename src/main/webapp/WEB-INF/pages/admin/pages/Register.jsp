<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/3/8
  Time: 9:52
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

    <title>注册</title>
    <%--导入bootstrap.min.css--%>
    <link href="../../../../resources/css/bootstrap.css" rel="stylesheet"/>
    <script src="../../../../resources/js/jquery.min.js"></script>
    <script src="../../../../resources/js/bootstrap.js"></script>

    <style type="text/css">
        td{
            padding: 3%;
            text-align: right;
            font-max-size: x-large;
        }
        #background-set{
            background-image: url("../../../../resources/images/16x9良辰美景不问天2233.jpg");
            background-repeat: repeat;
            background-size: 100% ;
        }
        .one{
            border: #d5d5d5 1px solid;
            border-radius: 3%;
            margin: 7% 20% 6% 20%;
            background-color:rgba(255,255,255,0.5);
        }
        .two{
            padding-left: 35%;
            padding-bottom: 1%;
        }
        p{
            font-size: 20px;
        }
        #register-right{
            padding-right: 5%;
        }
        #register-left{
            padding-left: 5%;
            color: chocolate;
        }
    </style>
</head>
<body id="background-set">
    <div class="one">
        <div id="register-left" class="pull-left" >
            <p style="color: black">新用户注册</p>
            <p style="color: black">USER REGISTER</p>
        </div>
        <div id="register-right" class="pull-right">
            <p>已有账号？<a href="${pageContext.request.contextPath}/Login">立即登录</a></p>
        </div>
        <div class="two">
            <form action="${pageContext.request.contextPath}/user/userRegister" method="post">
                <table class="text-right two-table" >
                    <tr>
                        <td class="control-label">
                            邮箱:
                        </td>
                        <td>
                            <input class="form-control" name="email" type="text" >
                        </td>
                    </tr>
                    <tr>
                        <td>
                            用户名:
                        </td>
                        <td>
                            <input class="form-control" name="userName" type="text" >
                        </td>
                    </tr>
                    <tr>
                        <td>
                            昵称:
                        </td>
                        <td>
                            <input class="form-control" name="nickName" type="text" >
                        </td>
                    </tr>
                    <tr>
                        <td>
                            密码:
                        </td>
                        <td>
                            <input class="form-control" name="password" type="text" >
                        </td>
                    </tr>
                    <tr>
                        <td>
                            确认密码:
                        </td>
                        <td>
                            <input class="form-control" name="check_password" type="text" >
                        </td>
                    </tr>
                    <%--<tr>
                        <td>
                            姓名:
                        </td>
                        <td>
                            <input class="form-control" name="realName" type="text" >
                        </td>
                    </tr>--%>
                    <tr>
                        <td>
                            电话号码:
                        </td>
                        <td>
                            <input class="form-control" name="phone" type="text" >
                        </td>
                    </tr>
                    <tr>
                        <td>性别:</td>
                        <td>
                            <input class="check-box" type="radio"  name="gender" value="男" checked> 男
                            <input class="check-box" type="radio"  name="gender" value="女"> 女
                        </td>
                    </tr>
                    <%--<tr>
                        <td class="control-label">
                            出生日期:
                        </td>
                        <td >
                            <input class="form-control" type="date" id="birthday" name="birthday" placeholder="年/月/日">
                        </td>
                    </tr>--%>
                    <tr class="text-center">
                        <td colspan="2" rowspan="2">
                           <%-- <img src="#" width="30%" class="img-thumbnail">--%>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                    </tr>
                    <tr >
                        <td>验证码:</td>
                        <td>
                            <input class="form-control" type="text" name="checkCode" placeholder="请输入验证码">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="text-center">
                            <input class="form-control" type="checkbox">接受用户协议
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td  class="text-center">
                            <input type="submit" class="btn btn-lg btn-primary btn-block" value="注册"/>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</body>
</html>
