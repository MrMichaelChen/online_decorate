<%@ page language="java" pageEncoding="utf-8" contentType="text/html;charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
<title>Home</title>
<link href="welcome/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<script src="jsjquery-1.11.0.js"></script>
<link href="welcome/css/style.css" rel="stylesheet" type="text/css" media="all"/>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script src="welcome/js/bootstrap.min.js"></script>
<script type="text/3javascript"src="welcome/js/index.js"></script>			
<link href="welcome/css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="welcome/js/wow.min.js"></script>
<script>
		 new WOW().init();
</script>
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
            testdiv.innerHTML =
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
                "</table>"+
                "<a href='user_diary.jsp'>书写装修日记</a><br>"
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
	<style>
		body{padding:0;margin:0;font:normal 12px/24px "\5FAE\8F6F\96C5\9ED1";color:#FFF;}
		table{width:500px;border:0;margin:100px auto 0;text-align:center;border-collapse:collapse;border-spacing:0;}
		table th{background:#FFF;font-weight:normal;line-height:30px;font-size:14px;color:#FFF;}
		table td:nth-child(even){color:#FFF;}
		table tr:nth-child(5){background:#73B1E0;color:#FFF;}
		table tr:hover{background:#73B1E0;color:#FFF;}
		table td,table th{border:1px solid #EEE;}
	</style>
</head>
<body>
<br><br>
<!--header-->
<div class="header" id="home">
<div class="container">
		<div class="head">
			<nav class="navbar navbar-default">
					<div class="navbar-header">
					  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">细酌方圆之艺</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					  </button>
						 <div class="navbar-brand logo wow fadeInLeft animated" data-wow-delay=".5s">
							<h1><a href="welcome.jsp">传<br>承<br>博<span>艺<br>装</span><br>饰<br></a></h1>
						</div>
					</div>
					<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
					 <ul class="nav navbar-nav wow fadeInDown animated" data-wow-delay=".5s">
						<li ><a href="#home" class=" scroll"><span data-hover="Home">首页</span></a> </li>
						 <li> <input style="background:transparent" type="button" value="浏览商品" onclick="showproduct();"/></li>
						 <li><input style="background:transparent" type="button" value="浏览模板" onclick="showtemplate();"/></li>
						 <li><input style="background:transparent" type="button" value="我的订单" onclick="showorder();"/></li>
						 <li><input style="background:transparent" type="button" value="我的日记" onclick="showdiary();"/></li>
						 <script type="text/javascript">
                             var userrole = "<%=session.getAttribute("role")%>";
                             if ("admin" == userrole) {
                                 document.write("<li ><a href='adminlist.action' class='scroll'><span data-hover='About'>管理员界面</span> </a> </li>");
                             }
                             if ("employee" == userrole) {
                                 document.write("<li ><a href='adminlist.action' class='scroll'><span data-hover='About'>内部员工界面</span> </a> </li>");
                             }
						 </script>
						 <li ><a href="index.jsp" class=" scroll"><span data-hover="Home">安全退出</span></a> </li>
					 </ul>
						<div id="showspace">
						</div>
					</div><!-- /.navbar-collapse -->
			</nav>
		</div>
		<div class="banner">
		<section class="wrapper wow fadeInUp animated" data-wow-delay=".5s">
		  <h2 >脱俗观念</h2>
		  <h3 class="sentence">缔造盛世之典
			<div class="popEffect">
			  <span> 简观</span>
			</div>
		  </h3>
		</section>
	<a href="welcome/product.jsp" class="hvr-rectangle-out wow fadeInDown animated" data-wow-delay=".5s">商品展示</a>
		</div>
	</div>
</div>
</body>
</html>