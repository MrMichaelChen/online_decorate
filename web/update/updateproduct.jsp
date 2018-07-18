<%--
  Created by IntelliJ IDEA.
  User: Chen
  Date: 2018/7/11
  Time: 19:01
  To change this template use File | Settings | File Templates.
--%>
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
<s:form action='toupdateproduct' method='post'>
    <s:textfield name='product.id' label='商品ID' requiredLabel='true' requiredPosition='left'/>
    <s:textfield name='product.name' label='商品' requiredLabel='true' requiredPosition='left'/>
    <s:textfield name='product.price' label='价格' errorPosition='bottom' requiredPosition='left'/>
    <s:textfield name='product.type' label='类型' requiredLabel='true' requiredPosition='left'/>
    <s:textfield name='product.repertory' label='库存' requiredLabel='true' requiredPosition='left'/>
    <s:textfield name='product.vender' label='厂商' requiredLabel='true' requiredPosition='left'/>
    <s:submit value="更新"/>
</s:form>
</body>
</html>
