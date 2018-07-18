<%--
  Created by IntelliJ IDEA.
  User: Chen
  Date: 2018/7/10
  Time: 19:43
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
</head>
<body>
<table style="border:1px solid green"><tr><td>orderid<td>proid<td>pronum<td>action
    <s:iterator value="orderinfolist" var="row">
    <tr>
        <td><s:property value="#row.orderid"/>
        <td><s:property value="#row.proid"/>
        <td><s:property value="#row.pronum"/>
        <td>
            <s:url var="delUrl" action="userdelpro">
                <s:param name="orderInfo.id" value="#row.id"/>
            </s:url>
            <a href="${delUrl}" onClick="return readyDel();">删除</a>
            </s:iterator>
</table>
<h2>订单总额为${totalprice} </h2>
<a href="userlist.action">返回主页面</a>
<a href="showshow.jsp">样品简单展示</a>
</body>
</html>
