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
<h2>请输入模板中包含的产品id以及数量</h2>
<s:form action="addtemplateinfo" method="post">
    <s:textfield name="template.id" label="模板ID" errorPosition="bottom" requiredPosition="left"/>
    <s:textfield name="templateInfo.proid" label="产品标号" errorPosition="bottom" requiredPosition="left"/>
    <s:textfield name="templateInfo.pronum" label="数量" requiredLabel="true" requiredPosition="left"/>
    <s:submit/>
</s:form>
</body>
</html>
