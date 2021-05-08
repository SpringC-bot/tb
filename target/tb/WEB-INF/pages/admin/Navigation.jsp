<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/3/8
  Time: 9:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8"  isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

    <!-- Fixed navbar -->
    <nav class="navbar navbar-default">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed"
                        data-toggle="collapse" data-target="#navbar"
                        aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!--定义品牌-->
                <a class="navbar-brand" href="#">贴吧</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <!--定义首页-->
                    <li class="active"><a href="${pageContext.request.contextPath}/toHome">首页</a></li>
                    <li><a href="#about">新闻</a></li>
                    <li><a href="#contact">下载APP</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"
                           role="button" aria-haspopup="true"
                           aria-expanded="false">其他 <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">关于</a></li>
                            <li><a href="#">联系</a></li>
                            <li><a href="#">工作人员</a></li>
                            <li role="separator" class="divider"></li>
                            <li class="dropdown-header">更多</li>
                            <li><a href="#">问题反馈</a></li>
                            <li><a href="#">服务中心</a></li>
                        </ul>
                    </li>
                </ul>
                <!--搜索框-->
                <div class="navbar-form navbar-left">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search for...">
                        <span class="input-group-btn">
                     <button class="btn btn-default" type="button">Go!</button>
                  </span>
                    </div><!-- /input-group -->
                </div><!-- /.col-lg-6 -->

                <ul class="nav navbar-nav navbar-right">
                    <c:if test="${sessionScope.user != null}">
                        <li><a>欢迎用户：${sessionScope.user.nickName}</a></li>
                        <%--如果登录了就有退出按钮--%>
                        <li onclick="exit()"><a href="#">退出</a></li>
                        <%--弹出提示框，确认退出清除所有session信息--%>
                        <script>
                            function exit() {
                                let r = confirm("你确定要退出吗");
                                if (r == true){
                                    location.href="${pageContext.request.contextPath}/userExit";
                                }
                            }
                        </script>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"
                               role="button" aria-haspopup="true"
                               aria-expanded="false">个人中心 <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">关注</a></li>
                                <li><a href="#">收藏</a></li>
                                <li><a href="#">历史</a></li>
                                <li role="separator" class="divider"></li>
                                <li class="dropdown-header">消息</li>
                                <li><a href="#">账号设置</a></li>
                                <li><a href="#">@我的</a></li>
                                <li><a href="#">私信</a></li>
                                <li><a href="#">回复</a></li>
                                <li><a href="#">好友申请</a></li>
                                <li><a href="#">我的通知</a></li>
                            </ul>
                        </li>
                    </c:if>
                    <c:if test="${sessionScope.user == null}">
                        <li><a href="${pageContext.request.contextPath}/Login">登录</a></li>
                        <li><a href="${pageContext.request.contextPath}/Register">注册</a></li>
                    </c:if>
                </ul>
            </div><!--/.nav-collapse -->
        </div>
    </nav>

