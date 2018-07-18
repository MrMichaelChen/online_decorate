<%--
  Created by IntelliJ IDEA.
  User: Chen
  Date: 2018/7/10
  Time: 11:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
            testdiv.innerHTML="<a href='/add/addproduct.jsp'>添加商品</a>" +
                "<table style='border:1px solid green'><tr><td>id<td>name<td>price<td>type<td>repertory<td>vender<td>action\n" +
                "    <s:iterator value='productlist' var='row2'>\n" +
                "    <tr>\n" +
                "        <td><s:property value='#row2.id'/>\n" +
                "        <td><s:property value='#row2.name'/>\n" +
                "        <td><s:property value='#row2.price'/>\n" +
                "        <td><s:property value='#row2.type'/>\n" +
                "        <td><s:property value='#row2.repertory'/>\n" +
                "        <td><s:property value='#row2.vender'/>\n" +
                "        <td>\n" +
                "        <s:url var='updateUrl' action='updateproduct'>\n" +
                "            <s:param name='product.id' value='#row2.id'/>\n" +
                "        </s:url>\n" +
                "        <a href='${updateUrl}'>修改</a>\n" +
                "        <s:url var='delUrl' action='productdel'>\n" +
                "            <s:param name='product.id' value='#row2.id'/>\n" +
                "        </s:url>\n" +
                "        <a href='${delUrl}' onClick='return readyDel();'>删除</a>\n" +
                "    </s:iterator>\n" +
                "</table>"

        }
        function showtemplate() {
            var testdiv = document.getElementById("showspace");
            testdiv.innerHTML="<a href='/add/addtemplate.jsp'>添加模板</a>" +
                "<table style='border:1px solid green'><tr><td>id<td>authorid<td>type<td>filepath<td>price<td>action\n" +
                "    <s:iterator value='templatelist' var='row2'>\n" +
                "    <tr>\n" +
                "        <td><s:property value='#row2.id'/>\n" +
                "        <td><s:property value='#row2.authorid'/>\n" +
                "        <td><s:property value='#row2.type'/>\n" +
                "        <td><s:property value='#row2.filepath'/>\n" +
                "        <td><s:property value='#row2.price'/>\n" +
                "        <td>\n" +
                "        <s:url var='addinfo' action='templateinfo'>\n" +
                "            <s:param name='template.id' value='#row2.id'/>\n" +
                "        </s:url>\n" +
                "        <a href='${addinfo}'>更新</a>\n" +
                "        <s:url var='delUrl' action='templatedel'>\n" +
                "            <s:param name='template.id' value='#row2.id'/>\n" +
                "        </s:url>\n" +
                "        <a href='${delUrl}' onClick='return readyDel();'>删除</a>\n" +
                "    </s:iterator>\n" +
                "</table>"

        }
        function showuser() {
            var testdiv = document.getElementById("showspace");
            testdiv.innerHTML= "<a href='/add/adduser.jsp'>添加用户</a>" +
                "<table style='border:1px solid green'><tr><td>id<td>name<td>address<td>phone<td>role<td>action\n" +
                "    <s:iterator value='userlist' var='row2'>\n" +
                "    <tr>\n" +
                "        <td><s:property value='#row2.id'/>\n" +
                "        <td><s:property value='#row2.name'/>\n" +
                "        <td><s:property value='#row2.address'/>\n" +
                "        <td><s:property value='#row2.phone'/>\n" +
                "        <td><s:property value='#row2.role'/>\n" +
                "        <td>\n" +
                "        <s:url var='update' action='updateuser'>\n" +
                "            <s:param name='user.id' value='#row2.id'/>\n" +
                "        </s:url>\n" +
                "        <a href='${update}'>修改</a>\n" +
                "        <s:url var='delUrl' action='userdel'>\n" +
                "            <s:param name='user.id' value='#row2.id'/>\n" +
                "        </s:url>\n" +
                "        <a href='${delUrl}' onClick='return readyDel();'>删除</a>\n" +
                "    </s:iterator>\n" +
                "</table>"

        }

        function showorder() {
            var testdiv = document.getElementById("showspace");
            testdiv.innerHTML= "<table style='border:1px solid green'><tr><td>id<td>userid<td>orderdate<td>action\n" +
                "    <s:iterator value='orderlist' var='row2'>\n" +
                "    <tr>\n" +
                "        <td><s:property value='#row2.id'/>\n" +
                "        <td><s:property value='#row2.userid'/>\n" +
                "        <td><s:property value='#row2.orderdate'/>\n" +
                "        <td>\n" +
                "        <s:url var='delUrl' action='orderdel'>\n" +
                "            <s:param name='orderList.id' value='#row2.id'/>\n" +
                "        </s:url>\n" +
                "        <a href='${delUrl}' onClick='return readyDel();'>删除</a>\n" +
                "    </s:iterator>\n" +
                "</table>"

        }

        function showdiary() {
            var testdiv = document.getElementById("showspace");
            testdiv.innerHTML= "<table style='border:1px solid green'><tr><td>id<td>userid<td>time<td>title<td>content<td>action\n" +
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
                "        <a href='${updateUrl}'>修改</a>\n" +
                "        <s:url var='delUrl' action='diarydel'>\n" +
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
    </script>
</head>

<body>
<input type="button" value="用户管理" onclick="showuser();" />
<input type="button" value="商品管理" onclick="showproduct();" />
<input type="button" value="模板管理" onclick="showtemplate();" />
<input type="button" value="订单管理" onclick="showorder();" />
<input type="button" value="日记管理" onclick="showdiary();" />
<a href="userlist.action">返回用户界面</a>
<div id="showspace">

</div>
<br>
<div id="addspace">

</div>
</body>
</html>