<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page trimDirectiveWhitespaces="true" %><!-- 清除空白行 -->
<%  
    //定义路径，防止出现静态资源引用路径错误的问题
	String path = request.getContextPath();  
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
	    <base href="<%=basePath%>" /><!-- 加载绝对路径 -->
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="Keywords" content="${webinfo.keyWords}" /><!-- 网站关键字 -->
  		<meta name="description" content="${webinfo.description}" /><!-- 网站描述 -->
		<title>${webinfo.name}<!-- 网站标题 --></title>
		<link rel="stylesheet" type="text/css" href="css/main.css" />
		<script src="js/jquery-1.11.1.min.js" type="text/javascript"></script>
		<script src="js/index.js" type="text/javascript"></script>
	</head>

	<body>
		<div id="container">
			<!--
  	作者：cheeka@qq.com
  	时间：2015-02-12
  	描述：头部布局，包括logo,实验室名称，导航栏以及网站热点等
  -->
			<div id="header" class="center">
				<div id="lab_logo" class="left">
					<h1><a href="index.html" target="_blank"><img src="img/logo/logo.png" width="122" height="122" alt="新能源材料与综合利用技术实验室"></a></h1>
				</div>
				<div id="lab_name" class="left">
					<h1><a href="index.html" target="_blank"><img src="img/logo/name.gif" height="122" alt="新能源材料与综合利用技术实验室"></a></h1>
				</div>
				<div id="logo_right" class="right">
					<ul class="logo_right">
						<li>
							<a href="index.html" target="_blank" class="a_more">
								<img src="img/back_index.gif" alt="返回首页">返回首页</a>
						</li>
						<li>
							<a href="index.html" target="_blank" class="a_more">
								<img src="img/En_version.gif" alt="English">English</a>
						</li>
						<li>
							<a href="index.html" target="_blank" class="a_more">
								<img src="img/bookmark.gif" alt="加入收藏">加入收藏</a>
						</li>
					</ul>
				</div>
				<div class="clear"></div>
				<div id="head_nav_div">
					<div id="nav_left_bg" class="nav_left_bg">
						<img src="img/nav_left.gif">
					</div>
					<div class="head_nav">
						<ul>
							<li>
								<h2><a href="index.html" target="_blank">

  					<i class="head_nav1"></i>网站首页</a></h2>
							<c:set var="index" value="1"></c:set><!-- index自增 确定主类的个数 -->
							<c:forEach items="${navigateList}" var="category" varStatus="row">
								<c:if test="${category.pid==0}">
									<c:set var="index" value="${index+1}"></c:set>
									<c:set var="pid" value="${category.id}"></c:set><!-- 父类的id是子类的pid -->
									<li><h2><a href="#" target="_blank"><i class="head_nav${index}"></i>${category.name}</a></h2>
									<ul class="head_sub_nav">	
									<c:forEach items="${navigateList}" var="category2" varStatus="row2">
										<c:if test="${category2.pid==pid}">
													<li><a href="listview.action/${category2.id}" target="_blank">${category2.name}</a>
													</li>				
										</c:if>
									</c:forEach>
									</ul>
									</li>
								</c:if>
							</c:forEach>
							
					</ul>
				</div>
			</div>
			<!--
  	作者：cheeka@qq.com
  	时间：2015-02-12
  	描述：主题部门
  -->
			<div id="main" class="center">
				<div class="main_banner other_banner">
					<img src="img/banner/news_center_banner.jpg" alt="" />
				</div>
				<div id="main_content" class="page_content clearfix">
					<div class="bread_crumb">
						<ul>
							<li>当前位置：</li>
							<!-- 导航Bar -->
							    <li>&gt;<a href="">首页</a>&nbsp;&gt;&nbsp;</li>
								<li><a href="list/${FatherNavigateBar.id}/1">${FatherNavigateBar.name}</a>&nbsp;&gt;&nbsp;</li>
								<c:if test="${ChildNavigateBar!=null}">
								<li><a href="list/${ChildNavigateBar.id}/1">${ChildNavigateBar.name}</a>&nbsp;&gt;&nbsp;</li>
								</c:if>
						</ul>
					</div>
					<div class="side_bar">
						<div class="sub_nav">
						<!-- 从数据库取出数据 -->
						<!-- 垂直导航栏VerticalNavigation -->
			
						 	<h2 class="news">${FatherNavigateBar.name}<span class="small">${FatherNavigateBar.display}</span></h2>
							<ul class="head_sub_nav">
							<c:forEach items="${VerticalNavigation}" var="tags">
								<c:if test="${VerticalNavigation_current!=null}">
									<c:if test="${VerticalNavigation_current==tags.id}">
										<li class=current><a href="list/${tags.id}/1" target="_blank">${tags.name}</a></li>
									</c:if>
									<c:if test="${VerticalNavigation_current!=tags.id}">
										<li><a href="list/${tags.id}/1" target="_blank">${tags.name}</a></li>
									</c:if>
								</c:if>
								
								<c:if test="${VerticalNavigation_current==null}">
									<li><a href="list/${tags.id}/1" target="_blank">${tags.name}</a></li>
								</c:if>
							</c:forEach>
							</ul>
							<br />
							<!-- end -->
						</div>
					</div>
					<div class="right_content">
					<!-- 文章列表上方标题 -->
					<c:if test="${ChildNavigateBar!=null}">
						<h2>${ChildNavigateBar.name}<em>/</em><span>${ChildNavigateBar.display}</span></h2>
					</c:if>
					<c:if test="${ChildNavigateBar==null}">
						<h2>${FatherNavigateBar.name}<em>/</em><span>${FatherNavigateBar.display}</span></h2>
					</c:if>
						<ul>
						<!-- 文章列表 -->
						<c:forEach items="${pageList}" var="pagelist">
							<li><a href="index.html" target="_blank">${pagelist.title}<span class="right"><fmt:formatDate value="${pagelist.creattime}" pattern="yyy-MM-dd" /></span></a></li>
						</c:forEach>
						</ul>
						<div class="list_page_num">
							<div class="div_page_num">
							<c:if test="${prePage==1}">
								<a class="a" href="list/${pageId}/${pageNow-1}">上一页</a>
							</c:if>
							<c:if test="${pageStart>1}">
								<a class="a" href="list/${pageId}/${pageStart-1}"><<</a>
							</c:if>
							<c:if test="${total==0}">
								<a href="">没有数据，返回主页</a>
							</c:if>
							<c:if test="${total!=0}">
									<c:forEach var="row" varStatus="status" begin="${pageStart}" end="${pageEnd}">
	 					 			<!-- 页码输出 -->
	 					 			<c:if test="${pageNow==row}">
	 					 				<a class="a_on" href="list/${pageId}/${row}">${row}</a>
	 					 			</c:if>
	 					 			<c:if test="${pageNow!=row}">
	 					 				<a class="a" href="list/${pageId}/${row}">${row}</a>
	 					 			</c:if>		
								    </c:forEach>	
							</c:if>
							<c:if test="${pageEnd<total}">
								<a class="a" href="list/${pageId}/${pageEnd+1}">>></a>
							</c:if>
								<c:if test="${nextPage==1}">
								<a class="a" href="list/${pageId}/${pageNow+1}">下一页</a>
								</c:if>
							</div>
							<div class="clear"></div>
						</div>
					</div>
				</div>
			</div>
			<!--
  	作者：cheeka@qq.com
  	时间：2015-02-12
  	描述：底部部分
  -->
			<div id="footer" class="center">
				<div class="left_content"></div>
				<div class="middle_content">
						<p>Copyright&nbsp;&nbsp;©&nbsp;&nbsp;${webinfo.copyright}&nbsp;&nbsp;版权所有 All Rights Reserved</p>
					<p>地址：${webinfo.address}&nbsp;&nbsp;&nbsp;&nbsp;电话：${webinfo.tel}&nbsp;&nbsp;&nbsp;&nbsp;电子邮箱：${webinfo.email}</p>
					<p>${webinfo.support1}&nbsp;&nbsp;&nbsp;&nbsp;${webinfo.beian}&nbsp;&nbsp;<script type="text/javascript">${webinfo.myscript}</script></p>
				</div>
				<div class="right_content"></div>
				<div class="clear"></div>
			</div>
		</div>
	</body>

</html>