<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>新能源材料与综合利用技术实验室</title>
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
							<!--作者：He Hongwei 时间：2016-01-19 16：30 描述：从数据库中取出导航栏数据-->		
							<!-- 修改By：He Hongwei -->	<c:set var="index" value="1"></c:set><!-- index自增 确定主类的个数 -->
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
							<!-- end By He Hongwei-->
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
					<!--作者：He Hongwei 时间：2016-01-19 16：40 描述：从数据库中取出导航栏数据-->		
					<!-- 修改By：He Hongwei -->
					<!-- 从数据库中取出数据 放在archiveList中 -->
					<c:forEach items="${archiveList}" var="archive">
			 		<li><a href="/view/${archive.category_id}/${archive.id}" target="_blank">${archive.title}</a></li>
					</c:forEach>
						<!-- end By He Hongwei -->
						
					</ul>
				</div>
			</div>
			<!--
  	作者：cheeka@qq.com
  	时间：2015-02-12
  	描述：主题部门
  -->
			<div id="main" class="center">
				<div class="main_banner">
					<ul class="main_banner_ul">
					<!--作者：He Hongwei 时间：2016-01-19 17：23 描述：从数据库中取出焦点图数据数据-->		
					<!-- 修改By：He Hongwei -->
					<!-- 从数据库中取出数据 放在focusImageList中 -->
					<c:forEach items="${focusImageList}" var="focusImage">
						<li><img src="img/banner/${focusImage.image}" alt="${focusImage.alt}" width="980" height="276"></li>
					</c:forEach>
						<!-- end By He Hongwei -->
					</ul>
					<ul class="banner_num"></ul>
				</div>
				<div id="main_content" class="main_content">
					<div id="research_area" class="div_long">
						<div class="div_title">
							<h2><a href="#" target="_blank">研究方向</a></h2>
						</div>
						<div class="div_content">
							<ul class="research_area_left">
								<li>
									<span class="img">
										<img src="img/research/pic_research_11.png" alt="" />
									</span>
									<span class="img"></span>
									<span class="img">
										<img src="img/research/pic_research_13.png" alt="" />
									</span>
									<span class="img"></span>
								</li>
								<li class="even">
									<span class="img"></span>
									<span class="img">
										<img src="img/research/pic_research_13.png" alt="" />
									</span>
									<span class="img"></span>
									<span class="img">
										<img src="img/research/pic_research_15.png" alt="" />										
									</span>
								</li>
								<li>
									<span class="img">
										<img src="img/research/pic_research_13.png" alt="" />
									</span>
									<span class="img"></span>
									<span class="img">
										<img src="img/research/pic_research_15.png" alt="" />
									</span>
									<span class="img"></span>
								</li>
								<li class="even">
									<span class="img"></span>
									<span class="img">
										<img src="img/research/pic_research_15.png" alt="" />
									</span>
									<span class="img"></span>
									<span class="img">
										<img src="img/research/pic_research_17.png" alt="" />										
									</span>
								</li>
								<li>
									<span class="img">
										<img src="img/research/pic_research_15.png" alt="" />
									</span>
									<span class="img">
										<img src="img/research/pic_research_15.png" alt="" />
									</span>
									<span class="img">
										<img src="img/research/pic_research_15.png" alt="" />
									</span>
									<span class="img">
										<img src="img/research/pic_research_15.png" alt="" />										
									</span>
								</li>
								<li class="even">
									<span class="img"></span>
									<span class="img">
										<img src="img/research/pic_research_17.png" alt="" />
									</span>
									<span class="img"></span>
									<span class="img">
										<img src="img/research/pic_research_19.png" alt="" />										
									</span>
								</li>
								<li>
									<span class="img">
										<img src="img/research/pic_research_17.png" alt="" />
									</span>
									<span class="img"></span>
									<span class="img">
										<img src="img/research/pic_research_19.png" alt="" />
									</span>
									<span class="img"></span>
								</li>
								<li class="even">
									<span class="img"></span>
									<span class="img">
										<img src="img/research/pic_research_19.png" alt="" />
									</span>
									<span class="img"></span>
									<span class="img">
										<img src="img/research/pic_research_11.png" alt="" />										
									</span>
								</li>
								<li>
									<span class="img">
										<img src="img/research/pic_research_19.png" alt="" />
									</span>
									<span class="img"></span>
									<span class="img">
										<img src="img/research/pic_research_11.png" alt="" />
									</span>
									<span class="img"></span>
								</li>
							</ul>

							<ul class="research_area_txt">
							<!-- Author: He Hongwei -->
							<!-- Date:2016-1-20 -->
								<!-- 该位置动态绑定后台数据库 -->
								<!-- 数据绑定 yanjiufangxiang--><!-- 研究方向左侧 -->
								<c:forEach items="${yanjiufangxiang}" var="yjfx" varStatus="row">
									<c:if test="${row.index==0}">
										<li>
									<h3 class="title"><a href=${yjfx.url} target="_blank">${yjfx.alt}</a></h3>
									<p class="content">${yjfx.content}</p>
										</li>
									</c:if>
									<li class="bg${row.index+1}">
									<h3 class="title"><a href="${yjfx.url}" target="_blank">${yjfx.alt}</a></h3>
									<p class="content">${yjfx.content}</p>
									</li>
								</c:forEach><!-- end -->
							</ul>
							<ul class="research_area_target">
							<!-- Author: He Hongwei -->
							<!-- Date:2016-1-20 -->
								<!-- 该位置动态绑定后台数据库 -->
								<!-- 数据绑定 yanjiufangxiang--><!-- 研究方向右侧 -->
								<c:forEach items="${yanjiufangxiang}" var="yjfx" varStatus="row">
								<li class="bg${row.index+1}"><a href="${yjfx.url}" target="_blank">${yjfx.title}</a>
								</li>
								</c:forEach>
							</ul>

							<div class="clear"></div>
						</div>
					</div>
					<div id="group_leader" class="div_short">
						<div class="div_title">
							<h2><a href="#" target="_blank">组长简介</a></h2>
						</div>
						<div class="div_content">
							<span class="group_leader_pic"><a href="#" target="_blank"><img src="img/members/lianfang.jpg" alt="连芳教授" width="134"></a></span>
							<p class="group_leader_txt">连芳教授，材料学博士，博导。2008年入选北京市“科技新星”计划。2009年增补为科技部能源材料领域专家。现主要从事无机生态材料和新能源材料的制备和性能研究。在Journal of Membrane Science...<a href="#" target="_blank" class="a_more">[详细介绍]</a>
							</p>
						</div>
					</div>
					<div class="clear"></div>
					<div id="" class="div_average">
						<div class="div_title">
							<h2><a href="#" target="_blank">行业新闻</a></h2>
						</div>
						<div class="div_content">
							<ul class="news_ul">
								<!-- Author: He Hongwei -->
								<!-- Date:2016-1-20 -->
								<!-- 该位置动态绑定后台数据库 -->
								<!-- 数据绑定 hangyexinwen-->
								<c:forEach items="${hangyexinwen}" var="hyxw" varStatus="row">
									<c:if test="${row.index==0}">
										<c:if test="${hyxw.image==null||hyxw.image==''}">
											<li class="first">
												<span><a href="#" target="_blank"><img src="img/lab_news/1.jpg" alt="${hyxw.title}"></a></span>
												<h3><a href="#" target="_blank">${hyxw.title}</a></h3>
												<p class="">${hyxw.content}</p>
											</li>
										</c:if>
										<c:if test="hyxw.image!=''">
											<li class="first">
												<span><a href="#" target="_blank"><img src="img/lab_news/${hyxw.image}" alt="${hyxw.title}"></a></span>
												<h3><a href="#" target="_blank">${hyxw.title}</a></h3>
												<p class="">${hyxw.content}</p>
											</li>
										</c:if>
									</c:if>
									<c:if test="${row.index!=0}">
									<li><a href="#" target="_blank">${hyxw.title}</a></li>
									</c:if>
								</c:forEach><!-- end -->
							</ul>
						</div>
					</div>
					<div id="" class="div_center">
						<div class="div_title">
							<h2><a href="#" target="_blank">业内前沿</a></h2>
						</div>
						<div class="div_content">
							<ul class="dashed_ul">
								<!-- 业内前沿 由数据库传出 -->
								<!-- Author: He Hongwei -->
								<!-- Date:2016-1-20 -->
								<!-- 该位置动态绑定后台数据库 -->
								<!-- 数据绑定 yeneiqianyan-->
								<c:forEach items="${yeneiqianyan}" var="ynqy">
									<li>
									<h3><a href="#" target="_blank">${ynqy.title}</a></h3>
									<p>${ynqy.content}</p>
								</li>
								</c:forEach>
							</ul>
						</div>
					</div>
					<div id="" class="div_average">
						<div class="div_title">
							<h2><a href="#" target="_blank">生活贴士</a></h2>
						</div>
						<div class="div_content">
							<div class="scroll_pic_news">
								<ul class="scroll_pic_content">
									<li>
										<a href="#" target="_blank">
											<img src="img/tips/1.jpg" alt="新闻标题">
										</a>
									</li>
									<li>
										<a href="#" target="_blank">
											<img src="img/tips/2.jpg" alt="新闻标题">
										</a>
									</li>
									<li>
										<a href="#" target="_blank">
											<img src="img/tips/3.jpg" alt="新闻标题">
										</a>
									</li>
									<li>
										<a href="#" target="_blank">
											<img src="img/tips/4.jpg" alt="新闻标题">
										</a>
									</li>
								</ul>
							</div>
							<div class="pic_index_box">
								<ul class="scroll_pic_index">
									<li><span></span>
										<a href="javascript: viod(0)" target="_blank">
											<img src="img/tips/1.jpg" alt="新闻标题">
										</a>
									</li>
									<li><span></span>
										<a href="javascript: viod(0)" target="_blank">
											<img src="img/tips/2.jpg" alt="新闻标题">
										</a>
									</li>
									<li><span></span>
										<a href="javascript: viod(0)" target="_blank">
											<img src="img/tips/3.jpg" alt="新闻标题">
										</a>
									</li>
									<li><span></span>
										<a href="javascript: viod(0)" target="_blank">
											<img src="img/tips/4.jpg" alt="新闻标题">
										</a>
									</li>
								</ul>
							</div>

						</div>
					</div>
					<div class="clear"></div>
					<div id="contact_us" class="div_short">
						<div class="div_title">
							<h2><a href="#" target="_blank">联系我们</a></h2>
						</div>
						<div class="div_content">
							<span><img src="img/contact_us_bg.gif" alt="新能源材料与综合利用技术实验室"></span>
							<h3><a href="#" target="_blank">新能源材料与综合利用技术实验室</a></h3>
							<p>通讯地址：北京市海淀区学院路30号北京科技大学无机小楼301/302室</p>
							<p>联系电话：010-82377985</p>
							<p>传&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;真：010-82377985</p>
							<p>电子邮箱：ustbenergy@aliyun.com</p>

						</div>
					</div>
					<div id="latest_paper" class="div_long">
						<div class="div_title">
							<h2><a href="#" target="_blank">最新论文</a></h2>
						</div>
						<div class="div_content">
							<div class="paper_div">
								<ul class="dashed_ul">
									<li>
										<h3>题目：<a href="#" target="_blank">Polyvinyl formal based single-ion conductor membranes as polymer electrolytes for lithium ion batteries</a></h3>
										<span class="journal">期刊：<a href="#" target="_blank">Journal of Membrane Science</a></span>
										<span class="volume">卷数：<a href="#" target="_blank">469(2014):67-72</a></span>
										<a class="download_pdf" href="#" target="_blank">[下载PDF]</a>
									</li>
									<li>
										<h3>题目：<a href="#" target="_blank">Polyvinyl formal based single-ion conductor membranes as polymer electrolytes for lithium ion batteries</a></h3>
										<span class="journal">期刊：<a href="#" target="_blank">Journal of Membrane Science</a></span>
										<span class="volume">卷数：<a href="#" target="_blank">469(2014):67-72</a></span>
										<a class="download_pdf" href="#" target="_blank">[下载PDF]</a>
									</li>
									<li>
										<h3>题目：<a href="#" target="_blank">Polyvinyl formal based single-ion conductor membranes as polymer electrolytes for lithium ion batteries</a></h3>
										<span class="journal">期刊：<a href="#" target="_blank">Journal of Membrane Science</a></span>
										<span class="volume">卷数：<a href="#" target="_blank">469(2014):67-72</a></span>
										<a class="download_pdf" href="#" target="_blank">[下载PDF]</a>
									</li>
									<li>
										<h3>题目：<a href="#" target="_blank">Polyvinyl formal based single-ion conductor membranes as polymer electrolytes for lithium ion batteries</a></h3>
										<span class="journal">期刊：<a href="#" target="_blank">Journal of Membrane Science</a></span>
										<span class="volume">卷数：<a href="#" target="_blank">469(2014):67-72</a></span>
										<a class="download_pdf" href="#" target="_blank">[下载PDF]</a>
									</li>
								</ul>
							</div>
							<div class="paper_pic">
								<ul class="paper_banner">
									<li>
										<img src="img/papers/1.jpg" width="298">
									</li>
									<li>
										<img src="img/papers/1.jpg" width="298">
									</li>
									<li>
										<img src="img/papers/1.jpg" width="298">
									</li>
									<li>
										<img src="img/papers/1.jpg" width="298">
									</li>
								</ul>
								<ul class="paper_label">
									<li></li>
									<li></li>
									<li></li>
									<li></li>
								</ul>

							</div>
						</div>
					</div>
					<div class="clear"></div>
					<div id="research_instruments" class="div_long">
						<div class="div_title">
							<h2><a href="#" target="_blank">科研仪器</a></h2>
						</div>
						<div class="div_content">
							<div class="margin_lr10">
								<ul class="instru_ul">
									<li>
										<a href="#">
											<img src="img/instruments/1.jpg" alt="布劳恩手套箱">
											<p>布劳恩手套箱</p>
										</a>
									</li>
									<li>
										<a href="#">
											<img src="img/instruments/2.JPG" alt="恒温恒湿培养箱">
											<p>恒温恒湿培养箱</p>
										</a>
									</li>
									<li>
										<a href="#">
											<img src="img/instruments/3.JPG" alt="扣式电池封口机">
											<p>扣式电池封口机</p>
										</a>
									</li>
									<li>
										<a href="#">
											<img src="img/instruments/1.jpg" alt="布劳恩手套箱">
											<p>布劳恩手套箱</p>
										</a>
									</li>
									<li>
										<a href="#">
											<img src="img/instruments/2.JPG" alt="恒温恒湿培养箱">
											<p>恒温恒湿培养箱</p>
										</a>
									</li>
									<li>
										<a href="#">
											<img src="img/instruments/3.JPG" alt="扣式电池封口机">
											<p>扣式电池封口机</p>
										</a>
									</li>
								</ul>
							</div>

						</div>
					</div>
					<div id="friend_links" class="div_short">
						<div class="div_title">
							<h2><a href="#" target="_blank">友情链接</a></h2>
						</div>
						<div class="div_content">
							<ul class="link_ul">
								<li>
									<a href="http://www.ustb.edu.cn/" target="_blank">
										<img src="img/logo/logo_ustb.jpg" alt="logo_ustb" />
									</a>
								</li>
								<li>
									<a href="http://mse.ustb.edu.cn/" target="_blank">
										<img src="img/logo/logo_ustb_mse.png" alt="logo_ustb_mse" />
									</a>
								</li>
								<li>
									<a href="http://www.nsfc.gov.cn/" target="_blank">
										<img src="img/logo/logo_NSFC.jpg" alt="logo_NSFC" />
									</a>
								</li>
							</ul>
						</div>
					</div>
					<div class="clear"></div>
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
					<p>技术支持：www.soso.pro 北京嗖嗖网络科技有限公司&nbsp;&nbsp;&nbsp;&nbsp;京ICP备14056588号-1&nbsp;&nbsp;&nbsp;&nbsp;<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1257232182'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s95.cnzz.com/stat.php%3Fid%3D1257232182%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script></p>
				</div>
				<div class="right_content"></div>
				<div class="clear"></div>
			</div>
		</div>
	</body>

</html>