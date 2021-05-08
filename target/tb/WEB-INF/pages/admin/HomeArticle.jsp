<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/3/8
  Time: 10:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8"  isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>



    <ul class="list-group container">
        <li class="list-group-item">
            <h4>
                <a href="#">${requestScope.articles[0].title}</a><br/>  <%--标题--%>
                <a class="small ">${requestScope.articles[0].aid}</a>   <%--作者--%>
                <a class="small">${requestScope.articles[0].createTime}</a>       <%--发布时间--%>
                <a class="small">${requestScope.articles[0].updateTime}</a>       <%--更新时间--%>
            </h4>
            <p>
                文章内容
                zhealhlajfghjklhjklfghkljafhgklajfhgjkahfgjasdjk
            </p>
        </li>
        <li class="list-group-item">
            <h4 >
                <a href="#">文章二的标题fgnlkdfghjl</a><br/>
                <a class="small ">author:123456</a>
                <a class="small">发布时间：2021/01/01 23:55:06</a>
                <a class="small">更新时间：2021/03/03 04:08:16</a>
            </h4>
            <p>
                zhealhlajfghjklhjklfghkljafhgklajfhgjkahfgjasdjk
            </p>
        </li>
        <li class="list-group-item">
            <h4 >
                <a href="#">文章一的标题fgnlkdfghjl</a><br/>
                <a class="small ">author:123456</a>
                <a class="small">发布时间：2021/01/01 23:55:06</a>
                <a class="small">更新时间：2021/03/03 04:08:16</a>
            </h4>
            <p>
                zhealhlajfghjklhjklfghkljafhgklajfhgjkahfgjasdjk
            </p>
        </li>
        <li class="list-group-item">
            <h4 >
                <a href="#">文章一的标题fgnlkdfghjl</a><br/>
                <a class="small ">author:123456</a>
                <a class="small">发布时间：2021/01/01 23:55:06</a>
                <a class="small">更新时间：2021/03/03 04:08:16</a>
            </h4>
            <p>
                zhealhlajfghjklhjklfghkljafhgklajfhgjkahfgjasdjk
            </p>
        </li>
    </ul>


