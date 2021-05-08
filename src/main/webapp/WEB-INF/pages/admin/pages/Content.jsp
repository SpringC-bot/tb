<%@page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <!--内容-->
    <table id="table_one" class="table-hover">
        <tr>
            <td class="td1">
                <button class="btn btn-default">技术</button>
                <button class="btn btn-default">创意</button>
                <button class="btn btn-default">好玩</button>
                <button class="btn btn-default">城市</button>
                <button class="btn btn-default">最热</button>
                <button class="btn btn-default">新闻</button>
            </td>
        </tr>
        <tr>
            <td>
                <a>程序员&nbsp</a>
                <a>Java&nbsp</a>
                <a>MySql&nbsp</a>
                <a>Git&nbsp</a>
                <a>JavaScript&nbsp</a>
                <a>Maven&nbsp</a>
                <a>Vue&nbsp</a>
                <a>spring&nbsp</a>
            </td>
        </tr>
        <tr>
            <td>
                <h4>
                    <a href="#">${requestScope.articles.get(0).title}</a><br/>  <%--标题--%>
                    <a class="small ">${requestScope.articles.get(0).aid}</a>   <%--作者--%>
                    <a class="small">${requestScope.articles.get(0).createTime}</a>       <%--发布时间--%>
                    <a class="small">${requestScope.articles.get(0).updateTime}</a>       <%--更新时间--%>
                </h4>
                <p>
                    ${requestScope.articles.get(0).summary}
                </p>
            </td>
        </tr>
        <tr>
            <td>
                <h4 >
                    <a href="#">我想要找好工作，大伙们怎么看</a>
                    <span class="badge pull-right">14</span><br/>
                    <a class="small ">author:123456</a>
                    <a class="small">发布时间：2021/01/01 23:55:06</a>
                    <a class="small">更新时间：2021/03/03 04:08:16</a>
                </h4>
                <h5><!--word-wrap:break-word; word-break:break-all; 解决文本溢出-->
                    文章内容
                    zhealhlajfghjklhjklfghkljafhgklajfhgjkahfgjasdjkahgahga;skajgaksfghaklsdflaksgahkslf
                    均符合国家拉黑法国军事对抗疗法规划建设了士大夫来个火山大佬四点零分供货实力的回复乐山大佛和工具栏上的回复
                    塑料袋封口估计是考虑对方进攻岁的法国就是考虑对方进攻受到法国佳士得付款了几个
                </h5>
            </td>
        </tr>
        <tr>
            <td>
                <h4 >
                    <a href="#">我想要找好工作，大伙们怎么看</a>
                    <span class="badge pull-right">14</span><br/>
                    <a class="small ">author:123456</a>
                    <a class="small">发布时间：2021/01/01 23:55:06</a>
                    <a class="small">更新时间：2021/03/03 04:08:16</a>
                </h4>
                <h5><!--word-wrap:break-word; word-break:break-all; 解决文本溢出-->
                    文章内容
                    zhealhlajfghjklhjklfghkljafhgklajfhgjkahfgjasdjkahgahga;skajgaksfghaklsdflaksgahkslf
                    均符合国家拉黑法国军事对抗疗法规划建设了士大夫来个火山大佬四点零分供货实力的回复乐山大佛和工具栏上的回复
                    塑料袋封口估计是考虑对方进攻岁的法国就是考虑对方进攻受到法国佳士得付款了几个
                </h5>
            </td>
        </tr>
        <tr>
            <td>
                <h4 >
                    <a href="#">我想要找好工作，大伙们怎么看</a>
                    <span class="badge pull-right">14</span><br/>
                    <a class="small ">author:123456</a>
                    <a class="small">发布时间：2021/01/01 23:55:06</a>
                    <a class="small">更新时间：2021/03/03 04:08:16</a>
                </h4>
                <h5><!--word-wrap:break-word; word-break:break-all; 解决文本溢出-->
                    文章内容
                    zhealhlajfghjklhjklfghkljafhgklajfhgjkahfgjasdjkahgahga;skajgaksfghaklsdflaksgahkslf
                    均符合国家拉黑法国军事对抗疗法规划建设了士大夫来个火山大佬四点零分供货实力的回复乐山大佛和工具栏上的回复
                    塑料袋封口估计是考虑对方进攻岁的法国就是考虑对方进攻受到法国佳士得付款了几个
                </h5>
            </td>
        </tr>
        <tr>
            <td>
                <h4 >
                    <a href="#">我想要找好工作，大伙们怎么看</a>
                    <span class="badge pull-right">14</span><br/>
                    <a class="small ">author:123456</a>
                    <a class="small">发布时间：2021/01/01 23:55:06</a>
                    <a class="small">更新时间：2021/03/03 04:08:16</a>
                </h4>
                <h5><!--word-wrap:break-word; word-break:break-all; 解决文本溢出-->
                    文章内容
                    zhealhlajfghjklhjklfghkljafhgklajfhgjkahfgjasdjkahgahga;skajgaksfghaklsdflaksgahkslf
                    均符合国家拉黑法国军事对抗疗法规划建设了士大夫来个火山大佬四点零分供货实力的回复乐山大佛和工具栏上的回复
                    塑料袋封口估计是考虑对方进攻岁的法国就是考虑对方进攻受到法国佳士得付款了几个
                </h5>
            </td>
        </tr>
        <tr>
            <td>
                <h4 >
                    <a href="#">我想要找好工作，大伙们怎么看</a>
                    <span class="badge pull-right">14</span><br/>
                    <a class="small ">author:123456</a>
                    <a class="small">发布时间：2021/01/01 23:55:06</a>
                    <a class="small">更新时间：2021/03/03 04:08:16</a>
                </h4>
                <h5><!--word-wrap:break-word; word-break:break-all; 解决文本溢出-->
                    文章内容
                    zhealhlajfghjklhjklfghkljafhgklajfhgjkahfgjasdjkahgahga;skajgaksfghaklsdflaksgahkslf
                    均符合国家拉黑法国军事对抗疗法规划建设了士大夫来个火山大佬四点零分供货实力的回复乐山大佛和工具栏上的回复
                    塑料袋封口估计是考虑对方进攻岁的法国就是考虑对方进攻受到法国佳士得付款了几个
                </h5>
            </td>
        </tr>
        <tr>
            <td>
                <h4 >
                    <a href="#">我想要找好工作，大伙们怎么看</a>
                    <span class="badge pull-right">14</span><br/>
                    <a class="small ">author:123456</a>
                    <a class="small">发布时间：2021/01/01 23:55:06</a>
                    <a class="small">更新时间：2021/03/03 04:08:16</a>
                </h4>
                <h5><!--word-wrap:break-word; word-break:break-all; 解决文本溢出-->
                    文章内容
                    zhealhlajfghjklhjklfghkljafhgklajfhgjkahfgjasdjkahgahga;skajgaksfghaklsdflaksgahkslf
                    均符合国家拉黑法国军事对抗疗法规划建设了士大夫来个火山大佬四点零分供货实力的回复乐山大佛和工具栏上的回复
                    塑料袋封口估计是考虑对方进攻岁的法国就是考虑对方进攻受到法国佳士得付款了几个
                </h5>
            </td>
        </tr>
    </table>

    <nav aria-label="Page navigation"  >
        <ul class="pagination ">
            <li>
                <a href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                </a>
            </li>
            <li><a href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">4</a></li>
            <li><a href="#">5</a></li>
            <li>
                <a href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                </a>
            </li>
        </ul>
    </nav>

