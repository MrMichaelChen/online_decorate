<%--
  Created by IntelliJ IDEA.
  User: Chen
  Date: 2018/7/9
  Time: 16:36
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
    <link rel="stylesheet" href="static/css/editormd.css"/>
    <script src="static/js/jquery.min.js"></script>
    <script src="static/editormd.js"></script>
</head>
<body>
<h2>装修日记</h2>
<s:textfield name='diary.id' label='日记ID'/>
<s:form action="editdiary">
<div style="margin-top: 50px;">
    <div id="editormd">
        <textarea style="display:none;" name="diary.content" >${diary.content} </textarea>
    </div>
</div>
    <div align="center"><s:submit value="submit" name="submit"/></div>
</s:form>
</body>
<script type="text/javascript">
    var testEditor;

    $(function () {

        editormd.emoji = {
            path: "http://www.emoji-cheat-sheet.com/graphics/emojis/",
            ext: ".png"
        };

        // Twitter Emoji (Twemoji)  graphics files url path
        editormd.twemoji = {
            path: "http://twemoji.maxcdn.com/72x72/",
            ext: ".png"
        };

        testEditor = editormd("editormd", {

            width: "70%",
            height: 450,

            toc: true,

            emoji: true,       // Support Github emoji, Twitter Emoji(Twemoji), fontAwesome, Editor.md logo emojis.

            taskList: true,
            saveHTMLToTextarea: true,
            path: 'static/lib/',
            onload: function () {
            }
        });
    });
</script>
</html>
