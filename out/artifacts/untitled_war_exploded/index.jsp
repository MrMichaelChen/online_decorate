<%--
  Created by IntelliJ IDEA.
  User: Chen
  Date: 2018/7/11
  Time: 18:25
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
<s:form action="userlogin" method="post">
    <s:textfield name="user.name"  label="用户名" requiredLabel="true" requiredPosition="left"/>
    <s:password name="user.password" label="密码" errorPosition="bottom"/>
    <s:submit value="Sign In"/>
</s:form>
<a href="reg.jsp">我要注册</a>
</body>
</html>
