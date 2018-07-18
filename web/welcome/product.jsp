<%@ page language="java" pageEncoding="utf-8" contentType="text/html;charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
<title>Lighting A Ecommerce Category Flat Bootstarp Resposive Website Template | Products :: </title>
<link href='../static/to_show/bootstrap.css' rel='stylesheet' type='text/css' media='all' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src='../static/to_show/js/jquery.min.js'></script>

<!-- Custom Theme files -->
<!--theme style-->
<link href='../static/to_show/style.css' rel='stylesheet' type='text/css' media='all' />
<!--//theme style-->
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<meta http-equiv='Content-Type' content='text/html; charset=utf-8' />
<meta name='keywords' content='Wedding Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design' />
<script type='application/x-javascript'> addEventListener('load', function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- start menu -->
<script src='../static/to_show/js/simpleCart.min.js'> </script>
<!-- start menu -->
<link href='../static/to_show/memenu.css' rel='stylesheet' type='text/css' media='all' />
<script type='text/javascript' src='../static/to_show/js/memenu.js'></script>
<script>$(document).ready(function(){$('.memenu').memenu();});</script>	
<!-- /start menu -->
<link href='../static/to_show/form.css' rel='stylesheet' type='text/css' media='all' />
<!-- the jScrollPane script -->
<script type='text/javascript' src='../static/to_show/js/jquery.jscrollpane.min.js'></script>

<!-- //the jScrollPane script -->
</head>
<body>
<!--header//-->
<div class='product-model'>	 
	 <div class='container'>
			<ol class='breadcrumb'>
		  <li><a href='/welcome.jsp'>Home</a></li>
		  <li class='active'>Products</li>


		 </ol>
			<h2>Our Products</h2>			
	<div id="show1">
					</div>	
				<div id="show2">

					</div>
					<div id="show3">

					</div>
					<div id="show4">

					</div>
					<div id="show5">

					</div>
					<div id="show6">

					</div>


		 <script type="text/javascript">
             var userrole = "<%=session.getAttribute("number")%>";
             var testdiv = document.getElementById("show1");
             alert(userrole)
             if (userrole>0) {
                 testdiv.innerHTML = "<div class='col-md-9 product-model-sec'>\n" +
                     "\t\t\t\t\t <a href='single.html'><div class='product-grid'>\n" +
                     "\t\t\t\t\t\t<div class='more-product'><span> </span></div>\t\t\t\t\t\t\n" +
                     "\t\t\t\t\t\t<div class='product-img b-link-stripe b-animate-go  thickbox'>\n" +
                     "\t\t\t\t\t\t\t<img src='../static/to_show/images/p1.jpg' class='img-responsive' alt=''>\n" +
                     "\t\t\t\t\t\t\t<div class='b-wrapper'>\n" +
                     "\t\t\t\t\t\t\t<h4 class='b-animate b-from-left  b-delay03'>\t\t\t\t\t\t\t\n" +
                     "\t\t\t\t\t\t\t<button><span class='glyphicon glyphicon-zoom-in' aria-hidden='true'></span>Quick View</button>\n" +
                     "\t\t\t\t\t\t\t</h4>\n" +
                     "\t\t\t\t\t\t\t</div>\n" +
                     "\t\t\t\t\t\t</div></a>\n" +
                     "\n" +
                     "\t\t\t\t\t\t<div class='product-info simpleCart_shelfItem'>\n" +
                     "\t\t\t\t\t\t\t<div class='product-info-cust prt_name'>\n" +
                     "\t\t\t\t\t\t\t\t<h4>Lights #1</h4>\t\t\t\t\t\t\t\t\n" +
                     "\t\t\t\t\t\t\t\t<span class='item_price'>$187.95</span>\n" +
                     "\t\t\t\t\t\t\t\t<div class='ofr'>\n" +
                     "\t\t\t\t\t\t\t\t  <p class='pric1'><del>Rs 280</del></p>\n" +
                     "\t\t\t\t\t\t          <p class='disc'>[12% Off]</p>\n" +
                     "\t\t\t\t\t\t\t\t</div>\n" +
                     "\t\t\t\t\t\t\t\t<input type='text' class='item_quantity' value='1' id='1'/>\n" +
                     "\t\t\t\t\t\t\t\t<input type='button' class='item_add items' value='ADD' onclick='sendvaluea()'>\n" +
                     "\t\t\t\t\t\t\t\t<div class='clearfix'> </div>\n" +
                     "\t\t\t\t\t\t\t</div>\t\t\t\t\t\t\t\t\t\t\t\t\n" +
                     "\t\t\t\t\t\t\t\n" +
                     "\t\t\t\t\t\t</div>\n" +
                     "\t\t\t\t\t </div>"
             }
		 </script>
		 <script type="text/javascript">
             var userrole = "<%=session.getAttribute("number")%>";
             var testdiv1 = document.getElementById("show2");
             if (userrole>1) {
                 testdiv1.innerHTML = "<div class='col-md-9 product-model-sec'>\n" +
                     "\t\t\t\t\t <a href='single.html'><div class='product-grid'>\n" +
                     "\t\t\t\t\t\t<div class='more-product'><span> </span></div>\t\t\t\t\t\t\n" +
                     "\t\t\t\t\t\t<div class='product-img b-link-stripe b-animate-go  thickbox'>\n" +
                     "\t\t\t\t\t\t\t<img src='../static/to_show/images/p2.jpg' class='img-responsive' alt=''>\n" +
                     "\t\t\t\t\t\t\t<div class='b-wrapper'>\n" +
                     "\t\t\t\t\t\t\t<h4 class='b-animate b-from-left  b-delay03'>\t\t\t\t\t\t\t\n" +
                     "\t\t\t\t\t\t\t<button><span class='glyphicon glyphicon-zoom-in' aria-hidden='true'></span>Quick View</button>\n" +
                     "\t\t\t\t\t\t\t</h4>\n" +
                     "\t\t\t\t\t\t\t</div>\n" +
                     "\t\t\t\t\t\t</div></a>\n" +
                     "\n" +
                     "\t\t\t\t\t\t<div class='product-info simpleCart_shelfItem'>\n" +
                     "\t\t\t\t\t\t\t<div class='product-info-cust prt_name'>\n" +
                     "\t\t\t\t\t\t\t\t<h4>Lights #1</h4>\t\t\t\t\t\t\t\t\n" +
                     "\t\t\t\t\t\t\t\t<span class='item_price'>$387.95</span>\n" +
                     "\t\t\t\t\t\t\t\t<div class='ofr'>\n" +
                     "\t\t\t\t\t\t\t\t  <p class='pric1'><del>Rs 280</del></p>\n" +
                     "\t\t\t\t\t\t          <p class='disc'>[12% Off]</p>\n" +
                     "\t\t\t\t\t\t\t\t</div>\n" +
                     "\t\t\t\t\t\t\t\t<input type='text' class='item_quantity' value='1' id='1'/>\n" +
                     "\t\t\t\t\t\t\t\t<input type='button' class='item_add items' value='ADD' onclick='sendvaluea()'>\n" +
                     "\t\t\t\t\t\t\t\t<div class='clearfix'> </div>\n" +
                     "\t\t\t\t\t\t\t</div>\t\t\t\t\t\t\t\t\t\t\t\t\n" +
                     "\t\t\t\t\t\t\t\n" +
                     "\t\t\t\t\t\t</div>\n" +
                     "\t\t\t\t\t </div>"
             }
		 </script>
		 <script type="text/javascript">
             var userrole = "<%=session.getAttribute("number")%>";
             var testdiv2 = document.getElementById("show3");
             if (userrole>2) {
                 testdiv2.innerHTML = "<div class='col-md-9 product-model-sec'>\n" +
                     "\t\t\t\t\t <a href='single.html'><div class='product-grid'>\n" +
                     "\t\t\t\t\t\t<div class='more-product'><span> </span></div>\t\t\t\t\t\t\n" +
                     "\t\t\t\t\t\t<div class='product-img b-link-stripe b-animate-go  thickbox'>\n" +
                     "\t\t\t\t\t\t\t<img src='../static/to_show/images/p3.jpg' class='img-responsive' alt=''>\n" +
                     "\t\t\t\t\t\t\t<div class='b-wrapper'>\n" +
                     "\t\t\t\t\t\t\t<h4 class='b-animate b-from-left  b-delay03'>\t\t\t\t\t\t\t\n" +
                     "\t\t\t\t\t\t\t<button><span class='glyphicon glyphicon-zoom-in' aria-hidden='true'></span>Quick View</button>\n" +
                     "\t\t\t\t\t\t\t</h4>\n" +
                     "\t\t\t\t\t\t\t</div>\n" +
                     "\t\t\t\t\t\t</div></a>\n" +
                     "\n" +
                     "\t\t\t\t\t\t<div class='product-info simpleCart_shelfItem'>\n" +
                     "\t\t\t\t\t\t\t<div class='product-info-cust prt_name'>\n" +
                     "\t\t\t\t\t\t\t\t<h4>Lights #1</h4>\t\t\t\t\t\t\t\t\n" +
                     "\t\t\t\t\t\t\t\t<span class='item_price'>$357.95</span>\n" +
                     "\t\t\t\t\t\t\t\t<div class='ofr'>\n" +
                     "\t\t\t\t\t\t\t\t  <p class='pric1'><del>Rs 280</del></p>\n" +
                     "\t\t\t\t\t\t          <p class='disc'>[12% Off]</p>\n" +
                     "\t\t\t\t\t\t\t\t</div>\n" +
                     "\t\t\t\t\t\t\t\t<input type='text' class='item_quantity' value='1' id='1'/>\n" +
                     "\t\t\t\t\t\t\t\t<input type='button' class='item_add items' value='ADD' onclick='sendvaluea()'>\n" +
                     "\t\t\t\t\t\t\t\t<div class='clearfix'> </div>\n" +
                     "\t\t\t\t\t\t\t</div>\t\t\t\t\t\t\t\t\t\t\t\t\n" +
                     "\t\t\t\t\t\t\t\n" +
                     "\t\t\t\t\t\t</div>\n" +
                     "\t\t\t\t\t </div>"
             }
		 </script>
		 <script type="text/javascript">
             var userrole = "<%=session.getAttribute("number")%>";
             var testdiv4 = document.getElementById("show4");
             if (userrole>3) {
                 testdiv4.innerHTML = "<div class='col-md-9 product-model-sec'>\n" +
                     "\t\t\t\t\t <a href='single.html'><div class='product-grid'>\n" +
                     "\t\t\t\t\t\t<div class='more-product'><span> </span></div>\t\t\t\t\t\t\n" +
                     "\t\t\t\t\t\t<div class='product-img b-link-stripe b-animate-go  thickbox'>\n" +
                     "\t\t\t\t\t\t\t<img src='../static/to_show/images/p4.jpg' class='img-responsive' alt=''>\n" +
                     "\t\t\t\t\t\t\t<div class='b-wrapper'>\n" +
                     "\t\t\t\t\t\t\t<h4 class='b-animate b-from-left  b-delay03'>\t\t\t\t\t\t\t\n" +
                     "\t\t\t\t\t\t\t<button><span class='glyphicon glyphicon-zoom-in' aria-hidden='true'></span>Quick View</button>\n" +
                     "\t\t\t\t\t\t\t</h4>\n" +
                     "\t\t\t\t\t\t\t</div>\n" +
                     "\t\t\t\t\t\t</div></a>\n" +
                     "\n" +
                     "\t\t\t\t\t\t<div class='product-info simpleCart_shelfItem'>\n" +
                     "\t\t\t\t\t\t\t<div class='product-info-cust prt_name'>\n" +
                     "\t\t\t\t\t\t\t\t<h4>Lights #1</h4>\t\t\t\t\t\t\t\t\n" +
                     "\t\t\t\t\t\t\t\t<span class='item_price'>$327.35</span>\n" +
                     "\t\t\t\t\t\t\t\t<div class='ofr'>\n" +
                     "\t\t\t\t\t\t\t\t  <p class='pric1'><del>Rs 280</del></p>\n" +
                     "\t\t\t\t\t\t          <p class='disc'>[12% Off]</p>\n" +
                     "\t\t\t\t\t\t\t\t</div>\n" +
                     "\t\t\t\t\t\t\t\t<input type='text' class='item_quantity' value='1' id='1'/>\n" +
                     "\t\t\t\t\t\t\t\t<input type='button' class='item_add items' value='ADD' onclick='sendvaluea()'>\n" +
                     "\t\t\t\t\t\t\t\t<div class='clearfix'> </div>\n" +
                     "\t\t\t\t\t\t\t</div>\t\t\t\t\t\t\t\t\t\t\t\t\n" +
                     "\t\t\t\t\t\t\t\n" +
                     "\t\t\t\t\t\t</div>\n" +
                     "\t\t\t\t\t </div>"
             }
		 </script>
		 <script type="text/javascript">
             var userrole = "<%=session.getAttribute("number")%>";
             var testdiv5 = document.getElementById("show5");
             if (userrole>4) {
                 testdiv5.innerHTML = "<div class='col-md-9 product-model-sec'>\n" +
                     "\t\t\t\t\t <a href='single.html'><div class='product-grid'>\n" +
                     "\t\t\t\t\t\t<div class='more-product'><span> </span></div>\t\t\t\t\t\t\n" +
                     "\t\t\t\t\t\t<div class='product-img b-link-stripe b-animate-go  thickbox'>\n" +
                     "\t\t\t\t\t\t\t<img src='../static/to_show/images/p5.jpg' class='img-responsive' alt=''>\n" +
                     "\t\t\t\t\t\t\t<div class='b-wrapper'>\n" +
                     "\t\t\t\t\t\t\t<h4 class='b-animate b-from-left  b-delay03'>\t\t\t\t\t\t\t\n" +
                     "\t\t\t\t\t\t\t<button><span class='glyphicon glyphicon-zoom-in' aria-hidden='true'></span>Quick View</button>\n" +
                     "\t\t\t\t\t\t\t</h4>\n" +
                     "\t\t\t\t\t\t\t</div>\n" +
                     "\t\t\t\t\t\t</div></a>\n" +
                     "\n" +
                     "\t\t\t\t\t\t<div class='product-info simpleCart_shelfItem'>\n" +
                     "\t\t\t\t\t\t\t<div class='product-info-cust prt_name'>\n" +
                     "\t\t\t\t\t\t\t\t<h4>Lights #1</h4>\t\t\t\t\t\t\t\t\n" +
                     "\t\t\t\t\t\t\t\t<span class='item_price'>$37.95</span>\n" +
                     "\t\t\t\t\t\t\t\t<div class='ofr'>\n" +
                     "\t\t\t\t\t\t\t\t  <p class='pric1'><del>Rs 220</del></p>\n" +
                     "\t\t\t\t\t\t          <p class='disc'>[12% Off]</p>\n" +
                     "\t\t\t\t\t\t\t\t</div>\n" +
                     "\t\t\t\t\t\t\t\t<input type='text' class='item_quantity' value='1' id='1'/>\n" +
                     "\t\t\t\t\t\t\t\t<input type='button' class='item_add items' value='ADD' onclick='sendvaluea()'>\n" +
                     "\t\t\t\t\t\t\t\t<div class='clearfix'> </div>\n" +
                     "\t\t\t\t\t\t\t</div>\t\t\t\t\t\t\t\t\t\t\t\t\n" +
                     "\t\t\t\t\t\t\t\n" +
                     "\t\t\t\t\t\t</div>\n" +
                     "\t\t\t\t\t </div>"
             }
		 </script>
		 <script type="text/javascript">
             var userrole = "<%=session.getAttribute("number")%>";
             var testdiv6 = document.getElementById("show6");
             if (userrole>5) {
                 testdiv6.innerHTML = "<div class='col-md-9 product-model-sec'>\n" +
                     "\t\t\t\t\t <a href='single.html'><div class='product-grid'>\n" +
                     "\t\t\t\t\t\t<div class='more-product'><span> </span></div>\t\t\t\t\t\t\n" +
                     "\t\t\t\t\t\t<div class='product-img b-link-stripe b-animate-go  thickbox'>\n" +
                     "\t\t\t\t\t\t\t<img src='../static/to_show/images/p6.jpg' class='img-responsive' alt=''>\n" +
                     "\t\t\t\t\t\t\t<div class='b-wrapper'>\n" +
                     "\t\t\t\t\t\t\t<h4 class='b-animate b-from-left  b-delay03'>\t\t\t\t\t\t\t\n" +
                     "\t\t\t\t\t\t\t<button><span class='glyphicon glyphicon-zoom-in' aria-hidden='true'></span>Quick View</button>\n" +
                     "\t\t\t\t\t\t\t</h4>\n" +
                     "\t\t\t\t\t\t\t</div>\n" +
                     "\t\t\t\t\t\t</div></a>\n" +
                     "\n" +
                     "\t\t\t\t\t\t<div class='product-info simpleCart_shelfItem'>\n" +
                     "\t\t\t\t\t\t\t<div class='product-info-cust prt_name'>\n" +
                     "\t\t\t\t\t\t\t\t<h4>Lights #1</h4>\t\t\t\t\t\t\t\t\n" +
                     "\t\t\t\t\t\t\t\t<span class='item_price'>$237.5</span>\n" +
                     "\t\t\t\t\t\t\t\t<div class='ofr'>\n" +
                     "\t\t\t\t\t\t\t\t  <p class='pric1'><del>Rs 280</del></p>\n" +
                     "\t\t\t\t\t\t          <p class='disc'>[12% Off]</p>\n" +
                     "\t\t\t\t\t\t\t\t</div>\n" +
                     "\t\t\t\t\t\t\t\t<input type='text' class='item_quantity' value='1' id='1'/>\n" +
                     "\t\t\t\t\t\t\t\t<input type='button' class='item_add items' value='ADD' onclick='sendvaluea()'>\n" +
                     "\t\t\t\t\t\t\t\t<div class='clearfix'> </div>\n" +
                     "\t\t\t\t\t\t\t</div>\t\t\t\t\t\t\t\t\t\t\t\t\n" +
                     "\t\t\t\t\t\t\t\n" +
                     "\t\t\t\t\t\t</div>\n" +
                     "\t\t\t\t\t </div>"
             }
		 </script>





		 <script>
function sendvaluea(){
	var a=document.getElementById('1').value;
	var dataa={'materiala':'1','materiala_number':a};
                $.ajax({
                    type: 'POST',
                    url:'/get_shopcart',
                    data:JSON.stringify(dataa),  //转化字符串
                    contentType: 'application/json; charset=UTF-8',

                });
                }
</script>


<script>
function sendvalueb(){
	var a=document.getElementById('2').value;
	var datab={'materialb':'2','materialb_number':a};
                $.ajax({
                    type: 'POST',
                    url:'/get_shopcart',
                    data:JSON.stringify(datab),  //转化字符串
                    contentType: 'application/json; charset=UTF-8',

                });
                }
</script>

<script>
function sendvaluec(){

	var a=document.getElementById('3').value;
	var datac={'materialc':'3','materialc_number':a};
                $.ajax({
                    type: 'POST',
                    url:'/get_shopcart',
                    data:JSON.stringify(datac),  //转化字符串
                    contentType: 'application/json; charset=UTF-8',

                });
                }
</script>

<script>
function sendvalued(){

	var a=document.getElementById('4').value;
	var datad={'materiald':'4','materiald_number':a};
                $.ajax({
                    type: 'POST',
                    url:'/get_shopcart',
                    data:JSON.stringify(datad),  //转化字符串
                    contentType: 'application/json; charset=UTF-8',

                });
                }
</script>

<script>
function sendvaluee(){
	var datae={'materiale':'5','materiale_number':a};
                $.ajax({
                    type: 'POST',
                    url:'/get_shopcart',
                    data:JSON.stringify(datae),  //转化字符串
                    contentType: 'application/json; charset=UTF-8',

                });
                }
</script>


<script>
function sendvaluef(){

	var a=document.getElementById('6').value;
	var dataf={'materialf':'6','materialf_number':a};
                $.ajax({
                    type: 'POST',
                    url:'/get_shopcart',
                    data:JSON.stringify(dataf),  //转化字符串
                    contentType: 'application/json; charset=UTF-8',

                });
                }
</script>


<script>
function sendvalueg(){
	var a=document.getElementById('7').value;
	var datag={'materialg':'7','materialg_number':a};
                $.ajax({
                    type: 'POST',
                    url:'/get_shopcart',
                    data:JSON.stringify(datag),  //转化字符串
                    contentType: 'application/json; charset=UTF-8',

                });
                }
</script>

<script>
function sendvalueh(){
	var a=document.getElementById('8').value;
	var datah={'materialh':'8','materialh_number':a};
                $.ajax({
                    type: 'POST',
                    url:'/get_shopcart',
                    data:JSON.stringify(datah),  //转化字符串
                    contentType: 'application/json; charset=UTF-8',

                });
                }
</script>

<script>
function sendvaluei(){
	var a=document.getElementById('9').value;
	var datai={'materiali':'9','materiali_number':a};
                $.ajax({
                    type: 'POST',
                    url:'/get_shopcart',
                    data:JSON.stringify(datai),  //转化字符串
                    contentType: 'application/json; charset=UTF-8',

                });
                }
</script>

<script>
function sendvaluej(){
	var a=document.getElementById('10').value;
	var dataj={'materialj':'10','materialj_number':a};
                $.ajax({
                    type: 'POST',
                    url:'/get_shopcart',
                    data:JSON.stringify(dataj),  //转化字符串
                    contentType: 'application/json; charset=UTF-8',

                });
                }
</script>

<script>
function sendvaluek(){
	var a=document.getElementById('11').value;
	var datak={'materialk':'11','materialk_number':a};
                $.ajax({
                    type: 'POST',
                    url:'/get_shopcart',
                    data:JSON.stringify(datak),  //转化字符串
                    contentType: 'application/json; charset=UTF-8',

                });
                }
</script>


<script>
function sendvaluel(){
	var a=document.getElementById('12').value;
	var datal={'materiall':'12','materiall_number':a};
                $.ajax({
                    type: 'POST',
                    url:'/get_shopcart',
                    data:JSON.stringify(datal),  //转化字符串
                    contentType: 'application/json; charset=UTF-8',
                });
                }
</script>





			<!--<div class='rsidebar span_1_of_left'>-->
				 <!--<section  class='sky-form'>-->
					 <!--<div class='product_right'>-->
						 <!--<h4 class='m_2'><span class='glyphicon glyphicon-minus' aria-hidden='true'></span>Categories</h4>-->
						 <!--<div class='tab1'>-->
							 <!--<ul class='place'>								-->
								 <!--<li class='sort'>Home Decorates</li>-->
								 <!--<li class='by'><img src='images/do.png' alt=''></li>-->
									<!--<div class='clearfix'> </div>-->
							  <!--</ul>-->
							 <!--<div class='single-bottom'>						-->
									<!--<a href='#'><p>Lanterns</p></a>-->
									<!--<a href='#'><p>Wall Lamps</p></a>-->
									<!--<a href='#'><p>Table Lamps</p></a>-->
									<!--<a href='#'><p>Selling Lamps</p></a>-->
						     <!--</div>-->
					      <!--</div>						  -->
						  <!--<div class='tab2'>-->
							 <!--<ul class='place'>								-->
								 <!--<li class='sort'>Festive Needs</li>-->
								 <!--<li class='by'><img src='../static/to_show/images/do.png' alt=''></li>-->
									<!--<div class='clearfix'> </div>-->
							  <!--</ul>-->
							 <!--<div class='single-bottom'>						-->
									<!--<a href='#'><p>Lanterns</p></a>-->
									<!--<a href='#'><p>Disco Lights</p></a>									-->
						     <!--</div>-->
					      <!--</div>-->
						  <!--<div class='tab3'>-->
							 <!--<ul class='place'>								-->
								 <!--<li class='sort'>Kitchen & Dining</li>-->
								 <!--<li class='by'><img src='../static/to_show/images/do.png' alt=''></li>-->
									<!--<div class='clearfix'> </div>-->
							  <!--</ul>-->
							 <!--<div class='single-bottom'>						-->
									<!--<a href='#'><p>Lights & Lamps</p></a>-->
						     <!--</div>-->
					      <!--</div>-->
						  <!--<div class='tab4'>-->
							 <!--<ul class='place'>								-->
								 <!--<li class='sort'>Books</li>-->
								 <!--<li class='by'><img src='../static/to_show/images/do.png' alt=''></li>-->
									<!--<div class='clearfix'> </div>-->
							  <!--</ul>-->
							 <!--<div class='single-bottom'>						-->
									<!--<a href='#'><p>Standing Lamps</p></a>-->
									<!--<a href='#'><p>Lamps</p></a>-->
									<!--<a href='#'><p>Led Lamps</p></a>-->
						     <!--</div>-->
					      <!--</div>-->
						  <!--<div class='tab5'>-->
							 <!--<ul class='place'>								-->
								 <!--<li class='sort'>Automotive</li>-->
								 <!--<li class='by'><img src='../static/to_show/images/do.png' alt=''></li>-->
									<!--<div class='clearfix'> </div>-->
							  <!--</ul>-->
							 <!--<div class='single-bottom'>						-->
									<!--<a href='#'><p>Car Lights</p></a>-->
									<!--<a href='#'><p>Stick Lights</p></a>-->
									<!--<a href='#'><p>Thread Lights</p></a>-->
						     <!--</div>-->
					      <!--</div>-->
						  <!---->
						  <!--&lt;!&ndash;script&ndash;&gt;-->
						<!--<script>-->
							<!--$(document).ready(function(){-->
								<!--$('.tab1 .single-bottom').hide();-->
								<!--$('.tab2 .single-bottom').hide();-->
								<!--$('.tab3 .single-bottom').hide();-->
								<!--$('.tab4 .single-bottom').hide();-->
								<!--$('.tab5 .single-bottom').hide();-->
								<!---->
								<!--$('.tab1 ul').click(function(){-->
									<!--$('.tab1 .single-bottom').slideToggle(300);-->
									<!--$('.tab2 .single-bottom').hide();-->
									<!--$('.tab3 .single-bottom').hide();-->
									<!--$('.tab4 .single-bottom').hide();-->
									<!--$('.tab5 .single-bottom').hide();-->
								<!--})-->
								<!--$('.tab2 ul').click(function(){-->
									<!--$('.tab2 .single-bottom').slideToggle(300);-->
									<!--$('.tab1 .single-bottom').hide();-->
									<!--$('.tab3 .single-bottom').hide();-->
									<!--$('.tab4 .single-bottom').hide();-->
									<!--$('.tab5 .single-bottom').hide();-->
								<!--})-->
								<!--$('.tab3 ul').click(function(){-->
									<!--$('.tab3 .single-bottom').slideToggle(300);-->
									<!--$('.tab4 .single-bottom').hide();-->
									<!--$('.tab5 .single-bottom').hide();-->
									<!--$('.tab2 .single-bottom').hide();-->
									<!--$('.tab1 .single-bottom').hide();-->
								<!--})-->
								<!--$('.tab4 ul').click(function(){-->
									<!--$('.tab4 .single-bottom').slideToggle(300);-->
									<!--$('.tab5 .single-bottom').hide();-->
									<!--$('.tab3 .single-bottom').hide();-->
									<!--$('.tab2 .single-bottom').hide();-->
									<!--$('.tab1 .single-bottom').hide();-->
								<!--})	-->
								<!--$('.tab5 ul').click(function(){-->
									<!--$('.tab5 .single-bottom').slideToggle(300);-->
									<!--$('.tab4 .single-bottom').hide();-->
									<!--$('.tab3 .single-bottom').hide();-->
									<!--$('.tab2 .single-bottom').hide();-->
									<!--$('.tab1 .single-bottom').hide();-->
								<!--})	-->
							<!--});-->
						<!--</script>-->
						<!--&lt;!&ndash; script &ndash;&gt;					 -->
				 <!--</section>-->
				 <!---->
				 <!--<section  class='sky-form'>-->
					 <!--<h4><span class='glyphicon glyphicon-minus' aria-hidden='true'></span>DISCOUNTS</h4>-->
					 <!--<div class='row row1 scroll-pane'>-->
						 <!--<div class='col col-4'>-->
								<!--<label class='checkbox'><input type='checkbox' name='checkbox' checked=''><i></i>Upto - 10% (20)</label>-->
						 <!--</div>-->
						 <!--<div class='col col-4'>-->
								<!--<label class='checkbox'><input type='checkbox' name='checkbox'><i></i>40% - 50% (5)</label>-->
								<!--<label class='checkbox'><input type='checkbox' name='checkbox'><i></i>30% - 20% (7)</label>-->
								<!--<label class='checkbox'><input type='checkbox' name='checkbox'><i></i>10% - 5% (2)</label>-->
								<!--<label class='checkbox'><input type='checkbox' name='checkbox'><i></i>Other(50)</label>-->
						 <!--</div>-->
					 <!--</div>-->
				 <!--</section>  				 -->
				   <!---->
				 <!--<section  class='sky-form'>-->
						<!--<h4><span class='glyphicon glyphicon-minus' aria-hidden='true'></span>Price</h4>-->
							<!--<ul class='dropdown-menu1'>-->
								 <!--<li><a href=''>								               -->
								<!--<div id='slider-range'></div>							-->
								<!--<input type='text' id='amount' style='border: 0; font-weight: NORMAL;   font-family: 'Dosis-Regular';' />-->
							 <!--</a></li>			-->
						  <!--</ul>-->
				   <!--</section>-->
				   <!--&lt;!&ndash;&ndash;&gt;-->
					 <!--<script type='text/javascript' src='../static/to_show/js/jquery-ui.min.js'></script>-->
					 <!--<link rel='stylesheet' type='text/css' href='../static/css/jquery-ui.css'>-->
					<!--<script type='text/javascript'>//<![CDATA[ -->
					<!--$(window).load(function(){-->
					 <!--$( '#slider-range' ).slider({-->
								<!--range: true,-->
								<!--min: 0,-->
								<!--max: 100000,-->
								<!--values: [ 500, 100000 ],-->
								<!--slide: function( event, ui ) {  $( '#amount' ).val( '$' + ui.values[ 0 ] + ' - $' + ui.values[ 1 ] );-->
								<!--}-->
					 <!--});-->
					<!--$( '#amount' ).val( '$' + $( '#slider-range' ).slider( 'values', 0 ) + ' - $' + $( '#slider-range' ).slider( 'values', 1 ) );-->

					<!--});//]]> -->
					<!--</script>-->
					 <!--&lt;!&ndash;&ndash;&gt;-->
  <!---->
				   <!---->
				 <!--<section  class='sky-form'>-->
						<!--<h4><span class='glyphicon glyphicon-minus' aria-hidden='true'></span>Type</h4>-->
							<!--<div class='row row1 scroll-pane'>-->
								<!--<div class='col col-4'>-->
									<!--<label class='checkbox'><input type='checkbox' name='checkbox' checked=''><i></i>Lights (30)</label>-->
								<!--</div>-->
								<!--<div class='col col-4'>-->
									<!--<label class='checkbox'><input type='checkbox' name='checkbox'><i></i>Diwali Lights   (30)</label>-->
									<!--<label class='checkbox'><input type='checkbox' name='checkbox'><i></i>Tube Lights      (30)</label>-->
									<!--<label class='checkbox'><input type='checkbox' name='checkbox'><i></i>LED Lights        (30)</label>-->
									<!--<label class='checkbox'><input type='checkbox' name='checkbox'><i></i>Bulbs  (30)</label>-->
									<!--<label class='checkbox'><input type='checkbox' name='checkbox'><i></i>Ceiling Lights  (30)</label>-->
								<!--</div>-->
							<!--</div>-->
				   <!--</section>-->
				   <!--<section  class='sky-form'>-->
						<!--<h4><span class='glyphicon glyphicon-minus' aria-hidden='true'></span>Brand</h4>-->
							<!--<div class='row row1 scroll-pane'>-->
								<!--<div class='col col-4'>-->
									<!--<label class='checkbox'><input type='checkbox' name='checkbox' checked=''><i></i>Everyday</label>-->
								<!--</div>-->
								<!--<div class='col col-4'>-->
									<!--<label class='checkbox'><input type='checkbox' name='checkbox'><i></i>Anchor</label>-->
									<!--<label class='checkbox'><input type='checkbox' name='checkbox'><i></i>Philips</label>-->
									<!--<label class='checkbox'><input type='checkbox' name='checkbox'><i></i>Wipro</label>-->
									<!--<label class='checkbox'><input type='checkbox' name='checkbox'><i></i>Havells</label>-->
									<!--<label class='checkbox'><input type='checkbox' name='checkbox' ><i></i>Ferolex</label>-->
									<!--<label class='checkbox'><input type='checkbox' name='checkbox'><i></i>Gold Medal</label>-->
								<!--</div>-->
							<!--</div>-->
				   <!--</section>				   -->
			 <!--</div>-->
</body>
</html>