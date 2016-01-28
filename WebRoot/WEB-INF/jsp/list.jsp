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
	    <base href="<%=basePath%>" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>新闻列表 / 新能源材料与综合利用技术实验室</title>
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
							</li>
							<li>
								<h2><a href="index.html" target="_blank"><i class="head_nav2"></i>关于我们</a></h2>
								<ul class="head_sub_nav">
									<li><a href="index.html" target="_blank">团队简介</a>
									</li>
									<li><a href="index.html" target="_blank">团队成员</a>
									</li>
									<li><a href="index.html" target="_blank">退休专家</a>
									</li>
									<li><a href="index.html" target="_blank">优秀毕业生</a>
									</li>
								</ul>
							</li>
							<li>
								<h2><a href="index.html" target="_blank">

  					<i class="head_nav3"></i>研究方向</a></h2>
								<ul class="head_sub_nav">
									<li><a href="index.html" target="_blank">正极材料</a>
									</li>
									<li><a href="index.html" target="_blank">电解质</a>
									</li>
									<li><a href="index.html" target="_blank">资源开发</a>
									</li>
									<li><a href="index.html" target="_blank">低碳建材</a>
									</li>
								</ul>
							</li>
							<li>
								<h2><a href="index.html" target="_blank">

  					<i class="head_nav4"></i>科研实力</a></h2>
								<ul class="head_sub_nav">
									<li><a href="index.html" target="_blank">科研课题</a>
									</li>
									<li><a href="index.html" target="_blank">科研仪器</a>
									</li>
									<li><a href="index.html" target="_blank">论文专利</a>
									</li>
									<li><a href="index.html" target="_blank">成果转化</a>
									</li>
								</ul>
							</li>
							<li>
								<h2><a href="index.html" target="_blank">

  					<i class="head_nav5"></i>新闻动态</a></h2>
								<ul class="head_sub_nav">
									<li><a href="index.html" target="_blank">团队动态</a>
									</li>
									<li><a href="index.html" target="_blank">通知公告</a>
									</li>
									<li><a href="index.html" target="_blank">行业新闻</a>
									</li>
									<li><a href="index.html" target="_blank">生活常识</a>
									</li>
								</ul>
							</li>
							<li>
								<h2><a href="index.html" target="_blank">

  					<i class="head_nav6"></i>合作交流</a></h2>
								<ul class="head_sub_nav">
									<li><a href="index.html" target="_blank">学术交流</a>
									</li>
									<li><a href="index.html" target="_blank">国际合作</a>
									</li>
									<li><a href="index.html" target="_blank">交换学生</a>
									</li>
								</ul>
							</li>
							<li>
								<h2><a href="index.html" target="_blank">

  					<i class="head_nav7"></i>团队生活</a></h2>
								<ul class="head_sub_nav">
									<li><a href="index.html" target="_blank">团队风采</a>
									</li>
									<li><a href="index.html" target="_blank">课外活动</a>
									</li>
								</ul>
							</li>
							<li>
								<h2><a href="index.html" target="_blank">

  					<i class="head_nav8"></i>加入我们</a></h2>
								<ul class="head_sub_nav">
									<li><a href="index.html" target="_blank">研究生招生</a>
									</li>
									<li><a href="index.html" target="_blank">本科SRTP</a>
									</li>
									<li><a href="index.html" target="_blank">社会招聘</a>
									</li>
									<li><a href="index.html" target="_blank">联系我们</a>
									</li>
								</ul>
							</li>
						</ul>
					</div>
					<div id="nav_right_bg" class="nav_right_bg">
						<img src="img/nav_right.gif">
					</div>
					<div class="clear"></div>
				</div>
				<div id="hot_news" class="hot_now_div">
					<span>网站热点:</span>
					<ul id="hot_news_ul">
						<li><a href="index.html" target="_blank">连老师受邀残碱CIBF2014并做主题报告</a>
						</li>
						<li><a href="index.html" target="_blank">连老师受邀残碱CIBF2014并做主题报告</a>
						</li>
						<li><a href="index.html" target="_blank">连老师受邀残碱CIBF2014并做主题报告</a>
						</li>
						<li><a href="index.html" target="_blank">连老师受邀残碱CIBF2014并做主题报告</a>
						</li>
						<li><a href="index.html" target="_blank">连老师受邀残碱CIBF2014并做主题报告</a>
						</li>
						<li><a href="index.html" target="_blank">连老师受邀残碱CIBF2014并做主题报告</a>
						</li>
						<li><a href="index.html" target="_blank">连老师受邀残碱CIBF2014并做主题报告</a>
						</li>
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
							<!-- 导航栏 -->
							<c:forEach items="${navigateBar}" var="row">
								<li><a href="#">${row.display}</a>&nbsp;&gt;&nbsp;</li>
							</c:forEach>
						</ul>
					</div>

					
					<div class="side_bar">
						<div class="sub_nav">
						<!-- 从数据库取出数据 -->
						 <c:forEach items="${pCategoryList}" var="Row">
						 	<h2 class="news">${Row.name}<span class="small">${Row.display}</span></h2>
							<ul class="head_sub_nav">
							<c:forEach items="${cCategoryList}" var="row" >
								<c:if test="${row.pid==Row.id}">
								<li><a href="#" target="_blank">${row.name}</a></li>
								<!-- if class=current 表示当前 -->
								</c:if>
							
							</c:forEach>
							</ul>
							<br />
						 </c:forEach>
							<!-- end -->
						</div>
					</div>
					<div class="right_content">
					<c:forEach items="${navigateBar}" var="row" varStatus="status" ><!-- 大标题 -->
								<c:if test="${status.index==1}">
									<h2>${row.display}<em>/</em><span>${row.display}</span></h2>
								</c:if>
								
					</c:forEach>
						
						<ul>
						<!-- 文章列表 -->
						<c:forEach items="${pageList}" var="pagelist">
							<li><a href="index.html" target="_blank">${pagelist.title}<span class="right"><fmt:formatDate value="${pagelist.creattime}" pattern="yyy-MM-dd" /></span></a></li>
						</c:forEach>
						</ul>
						<div class="list_page_num">
							<div class="div_page_num">
							<c:if test="${pageNow>=2}">
								<a class="a" href="list/${category_id}/${pageNow-1}">上一页</a>
							</c:if>
							<c:if test="${pageStart>1}">
								<a class="a" href="list/${category_id}/${pageStart-1}"><<</a>
							</c:if>
							<c:forEach var="row" varStatus="status" begin="${pageStart}" end="${pageEnd}">
 					 			<!-- 页码输出 -->
 					 			<c:if test="${pageNow==row}">
 					 				<a class="a_on" href="list/${category_id}/${row}">${row}</a>
 					 			</c:if>
 					 			<c:if test="${pageNow!=row}">
 					 				<a class="a" href="list/${category_id}/${row}">${row}</a>
 					 			</c:if>
 					 				
							</c:forEach>
							<c:if test="${pageEnd<total}">
								<a class="a" href="list/${category_id}/${pageEnd+1}">>></a>
							</c:if>
								<c:if test="${pageEnd<total}">
								<a class="a" href="list/${category_id}/${pageNow+1}">下一页</a>
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
					<p>Copyright&nbsp;&nbsp;©&nbsp;&nbsp;北京科技大学新能源材料与综合利用技术实验室&nbsp;&nbsp;版权所有 All Rights Reserved</p>
					<p>地址：北京市海淀区学院路30号北京科技大学无机小楼301、302室&nbsp;&nbsp;&nbsp;&nbsp;电话：010-82377985&nbsp;&nbsp;&nbsp;&nbsp;电子邮箱：ustbenergy@aliyun.com</p>
					<p>技术支持：www.soso.pro 北京嗖嗖网络科技有限公司&nbsp;&nbsp;&nbsp;&nbsp;京ICP备14056588号-1</p>
				</div>
				<div class="right_content"></div>
				<div class="clear"></div>
			</div>
		</div>
	</body>

</html>