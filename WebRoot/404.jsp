﻿<!doctype html public "-//w3c//dtd xhtml 1.0 transitional//en" "http://www.w3.org/tr/xhtml1/dtd/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta http-equiv=refresh content=2;url=http://www.lianteam.org/>
<title>404</title>
<style type="text/css">
<!--
body {
	font-size: 13px;
	filter: progid:dximagetransform.microsoft.gradient(gradienttype=0,startcolorstr=#dbebfa,endcolorstr=#f9fcfd);
	margin: 0px;
}
-->
</style>
</head>

<body>
<table border=0 cellpadding=0 cellspacing=0 width="100%" height="100%">
<tr>
	<td align="center" style="padding-top:60px;">
    <img src="img/404.jpg" />    </td>
</tr>
<tr>
<form name=loading>
<td align=center>
<p><font color=gray>你找的页面不见了，正在载入首页，请稍候.......</font></p>
<p>
<input type=text name=chart size=46 style="font-family:arial;
font-weight:bolder; color:gray;
background-color:white; padding:0px; border-style:none;">
<br>
<input type=text name=percent size=46 style="font-family:arial;
color:gray; text-align:center;
border-width:medium; border-style:none;">
<script>var bar = 0
var line = "||"
var amount ="||"
count()
function count(){
bar= bar+2
amount =amount + line
document.loading.chart.value=amount
document.loading.percent.value=bar+"%"
if (bar<99)
{settimeout("count()",25);}//这里修改载入时间
else
{window.location = "http://www.lianteam.org";}//这里改成你的网站地址
}
</script>
</p>
</td>
</form>
</tr>
</table>
<img src="http://www.baidu.com/search/img/logo.gif" width="0" height="0" onload="openWin();" /></body>
</html>
