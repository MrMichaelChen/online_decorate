<%--
  Created by IntelliJ IDEA.
  User: Chen
  Date: 2018/7/10
  Time: 11:18
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
<s:form action="addtemplate" method="post">
    <s:textfield name="template.price" label="价格" errorPosition="bottom" requiredPosition="left"/>
    <s:textfield name="template.type" label="类型" requiredLabel="true" requiredPosition="left"/>
    <s:textfield name="template.filepath" label="文件路径" requiredLabel="true" requiredPosition="left"/>
    <s:submit/>
</s:form>
</body>
</html>
