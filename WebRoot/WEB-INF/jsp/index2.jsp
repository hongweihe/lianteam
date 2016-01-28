<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page trimDirectiveWhitespaces="true" %><!-- 清除空白行 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<!--
  	作者：hehongwei@vip.163.com
  	时间：2016-01-26
  	描述：头部信息与webinfo配置文件绑定
  -->
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
								<h2><a href="#" target="_blank">
  					<i class="head_nav1"></i>网站首页</a></h2>
								<!--
  									作者：hehongwei@vip.163.com
  									时间：2016-01-26
  									描述：导航栏与数据库绑定
 								 -->
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
					<div id="nav_right_bg" class="nav_right_bg">
						<img src="img/nav_right.gif">
					</div>
					<div class="clear"></div>
				</div>
				<div id="hot_news" class="hot_now_div">
					<!--
  						作者：hehongwei@vip.163.com
  						时间：2016-01-26
  						描述：网站热点与数据库绑定
 					 -->
					<span><c:out value="${wangzhanredian_name }"></c:out><!-- 网站热点 --></span>
					<ul id="hot_news_ul">
					<!-- 从数据库中取出数据  -->
					<c:forEach items="${wangzhanredian}" var="archive">
			 		<li><a href="/view/${archive.category_id}/${archive.id}" target="_blank">${archive.title}</a></li>
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
				<div class="main_banner">
					<ul class="main_banner_ul">
					<!--
  						作者：hehongwei@vip.163.com
  						时间：2016-01-26
  						描述：焦点图与数据库绑定
 					 -->
					<c:forEach items="${daohanglanxiajiaodiantu}" var="focusImage">
						<li><img src="img/banner/${focusImage.image}" alt="${focusImage.alt}" width="980" height="276"></li>
					</c:forEach>		
					</ul>
					<ul class="banner_num"></ul>
				</div>
				<div id="main_content" class="main_content">
					<div id="research_area" class="div_long">
						<div class="div_title">
							<!--
  						作者：hehongwei@vip.163.com
  						时间：2016-01-26
  						描述：研究方向与数据库绑定 该位置为显示的名称
 							 -->
							<h2><a href="#" target="_blank"><i class="icon_research"></i>${yanjiufangxiang_name}<!-- 研究方向 --></a></h2>
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
							<!--
  								作者：hehongwei@vip.163.com
  								时间：2016-01-26
  								描述：研究方向与数据库绑定 该位置为显示的图片
 							 -->
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
								</c:forEach>
							</ul>
							<ul class="research_area_target">
								<!--
  									作者：hehongwei@vip.163.com
  									时间：2016-01-26
  									描述：研究方向与数据库绑定 该位置为显示的题目和部分内容
 							 -->
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
							<h2><a href="#" target="_blank"><i class="icon_team_leader"></i>组长简介</a></h2>
						</div>
						<div class="div_content">
							<span class="group_leader_pic"><a href="#" target="_blank"><img src="img/members/lianfang.jpg" alt="连芳教授" width="134"></a></span>
							<!--
  								作者：hehongwei@vip.163.com
  								时间：2016-01-26
  								描述：组长介绍与webinfo配置文件绑定
 							 -->
							<p class="group_leader_txt">${webinfo.content1}<!-- 连芳简介 --><a href="#" target="_blank" class="a_more">[详细介绍]</a>
							</p>
						</div>
					</div>
					<div class="clear"></div>
					<div id="" class="div_average">
						<div class="div_title">
						    <!--
  								作者：hehongwei@vip.163.com
  								时间：2016-01-26
  								描述：行业新闻与数据库绑定 显示名称
 							 -->
							<h2><a href="list/${hangyexinwen_category_id}/1" target="_blank"><i class="icon_news"></i><c:out value="${hangyexinwen_name}"></c:out><!-- 行业新闻hangyexinwen --></a></h2>
						</div>
						<div class="div_content">
							<ul class="news_ul">
							 <!--
  								作者：hehongwei@vip.163.com
  								时间：2016-01-26
  								描述：行业新闻与数据库绑定 显示列表
 							 -->
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
						 <!--
  								作者：hehongwei@vip.163.com
  								时间：2016-01-26
  								描述：业内前沿与数据库绑定 显示名称
 							 -->
							<h2><a href="#" target="_blank"><i class="icon_trends"></i>${yeneiqianyan_name}<!--业内前沿--></a></h2>
						</div>
						<div class="div_content">
							<ul class="dashed_ul">
							 <!--
  								作者：hehongwei@vip.163.com
  								时间：2016-01-26
  								描述：业内前沿与数据库绑定 显示列表
 							 -->
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
						 <!--
  								作者：hehongwei@vip.163.com
  								时间：2016-01-26
  								描述：生活贴士与数据库绑定 显示名称
 							 -->
							<h2><a href="#" target="_blank"><i class="icon_tips"></i>${shenghuotieshi_name}<!--生活贴士--></a></h2>
						</div>
						<div class="div_content">
							<div class="scroll_pic_news">
								<ul class="scroll_pic_content">
								 <!--
  								作者：hehongwei@vip.163.com
  								时间：2016-01-26
  								描述：行业新闻与数据库绑定 显示列表
 							 -->
									<c:forEach items="${shenghuotieshi}" var="shts">
									<li><a href="#" target="_blank"><img src="img/tips/${shts.image}" alt="${shts.alt}">
									<p>${shts.title}</p>
										</a>
									</li>
									</c:forEach>
								</ul>
							</div>
							<div class="pic_index_box">
								<ul class="scroll_pic_index">
									<c:forEach items="${shenghuotieshi}" var="shts">
										<li><span></span>
											<a href="javascript: viod(0)" target="_blank">
												<img src="img/tips/${shts.image}" alt="${shts.alt}">
											</a>
										</li>
									</c:forEach>
								</ul>
							</div>
						</div>
					</div>
					<div class="clear"></div>
					<div id="contact_us" class="div_short">
						<div class="div_title">
							<h2><a href="#" target="_blank"><i class="icon_contact"></i>联系我们</a></h2>
						</div>
						<div class="div_content">
						 <!--
  								作者：hehongwei@vip.163.com
  								时间：2016-01-26
  								描述：联系方式与webinfo配置文件绑定
 							 -->
							<span><img src="img/contact_us_bg.gif" alt="${webinfo.name}"></span><!-- 新能源材料与综合利用技术实验室 -->
							<h3><a href="#" target="_blank">${webinfo.name}<!-- 新能源材料与综合利用技术实验室 --></a></h3>
							<p>通讯地址：${webinfo.address}</p>
							<p>联系电话：${webinfo.tel}</p>
							<p>传&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;真：${webinfo.fox}</p>
							<p>电子邮箱：${webinfo.email}</p>

						</div>
					</div>
					<div id="latest_paper" class="div_long">
						<div class="div_title">
							<h2><a href="#" target="_blank"><i class="icon_papers"></i>${zuixinlunwen_name}<!-- 最新论文 --></a></h2>
						</div>
						<div class="div_content">
							<div class="paper_div">
								<ul class="dashed_ul">
									<!-- 最新论文 --><!-- start -->
									<c:forEach items="${zuixinlunwen}" var="zxlw">
										<li>
										<h3>题目：<a href="#" target="_blank">${zxlw.title}</a></h3>
										<span class="journal">期刊：<a href="#" target="_blank">${zxlw.qikan}</a></span>
										<span class="volume">卷数：<a href="#" target="_blank">${zxlw.volume}</a></span>
										<a class="download_pdf" href="${zxlw.file}" target="_blank">[下载PDF]</a>
										</li>
									</c:forEach><!-- end -->
								</ul>
							</div>
							<div class="paper_pic">
								<ul class="paper_banner">
							 <!--
  								作者：hehongwei@vip.163.com
  								时间：2016-01-26
  								描述：著名文章的焦点图与数据库绑定
 							 -->
								<c:forEach items="${zhumingwenzhang}" var="zmwz">
									<li>
										<img src="img/papers/${zmwz.image}" width="298">
									</li>
								</c:forEach>
								</ul>
								<ul class="paper_label">
									<li></li><!-- 该处应该添加文章的其他信息 -->
								</ul>
							</div>
						</div>
					</div>
					<div class="clear"></div>
					<div id="research_instruments" class="div_long">
						<div class="div_title">
						<!--  -->
							<h2><a href="#" target="_blank"><i class="icon_instruments"></i>${keyanyiqi_name}</a></h2>
						</div>
						<div class="div_content">
							<div class="margin_lr10">
								<ul class="instru_ul">
								<c:forEach items="${keyanyiqi}" var="kyyq">
									<li>
										<a href="#">
											<img src="img/instruments/${kyyq.image}" alt="${kyyq.alt}">
											<p>${kyyq.title}</p>
										</a>
									</li>
								</c:forEach>
								</ul>
							</div>

						</div>
					</div>
					<div id="friend_links" class="div_short">
						<div class="div_title">
							<h2><a href="#" target="_blank"><i class="icon_links"></i>友情链接</a></h2>
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
							<!--
  								作者：hehongwei@vip.163.com
  								时间：2016-01-26
  								描述：页脚内容与webinfo配置文件绑定
 							 -->
					<p>Copyright&nbsp;&nbsp;©&nbsp;&nbsp;${webinfo.copyright}&nbsp;&nbsp;版权所有 All Rights Reserved</p>
					<p>地址：${webinfo.address}&nbsp;&nbsp;&nbsp;&nbsp;电话：${webinfo.tel}&nbsp;&nbsp;&nbsp;&nbsp;电子邮箱：ustbenergy@aliyun.com</p>
					<p>${webinfo.support1}&nbsp;&nbsp;&nbsp;&nbsp;${webinfo.beian}</p>
				</div>
				<div class="right_content"></div>
				<div class="clear"></div>
			</div>
		</div>
	</body>

</html>