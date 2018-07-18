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
<table style="border:1px solid green"><tr><td>temid<td>proid<td>pronum
    <s:iterator value="templatedetailinfo" var="row">
    <tr>
        <td><s:property value="#row.temid"/>
        <td><s:property value="#row.proid"/>
        <td><s:property value="#row.pronum"/>
    </s:iterator>
</table>
<a href="userlist.action">返回主页面</a>
<a href="/welcome/template.html">样品简单展示</a>
</body>
</html>