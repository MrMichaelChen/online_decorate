<%--
  Created by IntelliJ IDEA.
  User: Chen
  Date: 2018/7/10
  Time: 11:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" pageEncoding="utf-8" contentType="text/html;charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>

<head>
    <title>Title</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <script>
    function showproduct() {
        var testdiv = document.getElementById("showspace");
        testdiv.innerHTML = "<table style='border:1px solid green'><tr><td>id<td>name<td>price<td>type<td>repertory<td>vender<td>action\n" +
            "    <s:iterator value='productlist' var='row2'>\n" +
            "    <tr>\n" +
            "        <td><s:property value='#row2.id'/>\n" +
            "        <td><s:property value='#row2.name'/>\n" +
            "        <td><s:property value='#row2.price'/>\n" +
            "        <td><s:property value='#row2.type'/>\n" +
            "        <td><s:property value='#row2.repertory'/>\n" +
            "        <td><s:property value='#row2.vender'/>\n" +
            "        <td>\n" +
            "        <s:url var='addorder' action='addorder'>\n" +
            "            <s:param name='product.id' value='#row2.id'/>\n" +
            "        </s:url>\n" +
            "        <a href='${addorder}' onClick='return readyadd();'>加入订单</a>\n" +
            "    </s:iterator>\n" +
            "</table>"
    }

    function showtemplate() {
        var testdiv = document.getElementById("showspace");
        testdiv.innerHTML = "<table style='border:1px solid green'><tr><td>id<td>authorid<td>type<td>filepath<td>price<td>action\n" +
            "    <s:iterator value='templatelist' var='row2'>\n" +
            "    <tr>\n" +
            "        <td><s:property value='#row2.id'/>\n" +
            "        <td><s:property value='#row2.authorid'/>\n" +
            "        <td><s:property value='#row2.type'/>\n" +
            "        <td><s:property value='#row2.filepath'/>\n" +
            "        <td><s:property value='#row2.price'/>\n" +
            "        <td>\n" +
            "        <s:url var='looktemplate' action='looktemplate'>\n" +
            "            <s:param name='template.id' value='#row2.id'/>\n" +
            "        </s:url>\n" +
            "        <a href='${looktemplate}'>查看模板信息</a>\n" +
            "        <s:url var='userbuy' action='userbuytem'>\n" +
            "            <s:param name='template.id' value='#row2.id'/>\n" +
            "        </s:url>\n" +
            "        <a href='${userbuy}' onClick='return readyadd();'>一键订购</a>\n" +
            "    </s:iterator>\n" +
            "</table>"

    }

    function showorder() {
        var testdiv = document.getElementById("showspace");
        testdiv.innerHTML = "<table style='border:1px solid green'><tr><td>id<td>userid<td>orderdate<td>action\n" +
            "    <s:iterator value='orderlist' var='row2'>\n" +
            "    <tr>\n" +
            "        <td><s:property value='#row2.id'/>\n" +
            "        <td><s:property value='#row2.userid'/>\n" +
            "        <td><s:property value='#row2.orderdate'/>\n" +
            "        <td>\n" +
            "        <s:url var='lookorder' action='lookorder'>\n" +
            "            <s:param name='orderList.id' value='#row2.id'/>\n" +
            "        </s:url>\n" +
            "        <a href='${lookorder}'>查看订单信息</a>\n" +
            "        <s:url var='delUrl' action='userdelorder'>\n" +
            "            <s:param name='orderList.id' value='#row2.id'/>\n" +
            "        </s:url>\n" +
            "        <a href='${delUrl}' onClick='return readyDel();'>删除</a>\n" +
            "    </s:iterator>\n" +
            "</table>"

    }

    function showdiary() {
        var testdiv = document.getElementById("showspace");
        testdiv.innerHTML = "<a href='user_diary.jsp'>装修日记</a><br>" +
            "<table style='border:1px solid green'><tr><td>id<td>userid<td>time<td>title<td>content<td>action\n" +
            "    <s:iterator value='diarylist' var='row2'>\n" +
            "    <tr>\n" +
            "        <td><s:property value='#row2.id'/>\n" +
            "        <td><s:property value='#row2.userid'/>\n" +
            "        <td><s:property value='#row2.time'/>\n" +
            "        <td><s:property value='#row2.title'/>\n" +
            "        <td><s:property value='#row2.content'/>\n" +
            "        <td>\n" +
            "        <s:url var='updateUrl' action='lookdiary'>\n" +
            "            <s:param name='diary.id' value='#row2.id'/>\n" +
            "        </s:url>\n" +
            "        <a href='${updateUrl}'>续写</a>\n" +
            "        <s:url var='delUrl' action='userdiarydel'>\n" +
            "            <s:param name='diary.id' value='#row2.id'/>\n" +
            "        </s:url>\n" +
            "        <a href='${delUrl}' onClick='return readyDel();'>删除</a>\n" +
            "    </s:iterator>\n" +
            "</table>"

    }
</script>
    <script>
        function readyDel(){
            return confirm("是否真的删除?");
        }
        function readyadd(){
            return confirm("添加成功！");
        }
    </script>
</head>
<body>
<input type="button" value="浏览商品" onclick="showproduct();"/>
<input type="button" value="浏览模板" onclick="showtemplate();"/>
<input type="button" value="我的订单" onclick="showorder();"/>
<input type="button" value="我的日记" onclick="showdiary();"/>
<script type="text/javascript">
    var userrole = "<%=session.getAttribute("role")%>";
    if ("admin" == userrole) {
        document.write("| <a href=" + "adminlist.action" + ">Admin View</a>");
    }
</script>
<a href="index.jsp">安全退出</a>
<div id="showspace">
</div>
<br>
</body>
</html>