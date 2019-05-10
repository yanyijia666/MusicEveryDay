<!DOCTYPE html>
<%@page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title></title>
		<link rel="stylesheet" type="text/css" href="css/lun.css" />
		<link rel="stylesheet" href="css/tiantian.css" />
		<link rel="stylesheet" href="css/tiantianzuo.css" />
		<link rel="stylesheet" href="css/style.css" />
		<link rel="stylesheet" href="css/tiantiansongList.css" />
		<link rel="stylesheet" href="css/toubucs.css" />
		<link rel="stylesheet" href="css/liebiao.css" />
		<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
		<script type="text/javascript" src="js/tiantian.js"></script>
		<script type="text/javascript" src="js/tiantianzuo.js"></script>
		<script>
			$(document).ready(function() {

				$(".def-nav,.info-i").hover(function() {
					$(this).find(".pulldown-nav").addClass("hover");
					$(this).find(".pulldown").show();
				}, function() {
					$(this).find(".pulldown").hide();
					$(this).find(".pulldown-nav").removeClass("hover");
				});

			});
		</script>
		<script>
			$(function() {
				$("#listdiv table  tr:even").css("background-color", "#E9ECEC");
				$("#listdiv table  tr").hover(function() {
					$(this).addClass("add");
				}, function() {
					//				$(this).css("background-color", "#C6C6C6");
					$(this).removeClass("add");
				})
				$(".shouc").click(function(){
					var ccc=prompt("请输入歌单名称","新建歌单");
					alert(ccc);
				})
			})
		</script>
	</head>
	<body>
			<div id="zong">

				<body id="mybody">
					<div class="bbb">
						<img src="../musichall/img/20190505112100.png" />
						<div class="ccc">
							<a>admin</a>
							<a>通知</a>
							<a>更多</a>

						</div>
					</div>
					<section>
						<div class="tiaojian">

							<body>
								<div id="lefttiantian">

									<p>推荐</p>
									<ul id="ainle">

										<li><span><img src="img/yiny.png"/><a href="/user/index.html">发现音乐</a></span></li>
										<li><span><img src="img/redian.png"/><a>私人FM</a></span></li>
										<li><span><img src="img/shiping.png"/><a>视频</a></span></li>
										<li><span><img src="img/friend.png"/><a>朋友</a></span></li>

									</ul>
									<p>我的音乐</p>
									<ul>

										<li><span><img src="img/yyy.png"/><a href="/user/bendi.html">本地音乐</a></span></li>
										<li><span><img src="img/xiazai.png"/><a>下载管理</a></span></li>
										<li><span><img src="img/yun.png"/><a>我的音乐云盘</a></span></li>
										<li><span><img src="img/shoucang.png"/><a>我的收藏</a></span></li>
									</ul>
									<p>创建的歌单<span><a href="#"><img class="shouc" src="img/jiahao.png"/></a><img class="xiala1" src="img/xia.png"/></span></p>
									<ul id="hahha">
										<li><span><img src="img/aixin.png"/><a href="gerenzhongx.html">我喜欢的音乐</a></span></li>
										<li><span><img src="img/musiclist.png"/><a>创建的歌单1</a></span></li>
									</ul>

								</div>
							</body>

							<div id="dadiv">
								
								<div id="quanbu">
									<div id="tou">

										<div id="ziliao">
											<h1 style="border-bottom: 1px #B3B3B3 solid;">我喜欢的歌单</h1>

											<ul>
												
												<li>
													<a name="bofang" href="#">播放全部<img style="height: 15px; margin-left: 8px;" src="img/aaaaaaaaa.png" /></a>
													<a name="bofang" href="#">分享</a>
													<a name="bofang" href="#">下载全部</a>
												</li>

											</ul>

										</div>
										<div id="csd">
											<ul>
												<li>歌曲</li>
												<li>评论</li>
												<li>收藏着</li>
												<li><input type="text" class="sosuo" /><input type="image" style="height: 20px; margin-right: 10px;" src="img/sosuo.png" </li>
											</ul>

										</div>
										<div id="listdiv">
											<table cellspacing="0">
												<tr>
													<td></td>
													<td>操作</td>
													<td>音乐标题</td>
													<td>歌手</td>
													<td>专辑</td>
													<td>时长</td>
												</tr>

												<tr>
													<td>1</td>
													<td></td>
													<td>遥不可及的你</td>
													<td>花粥</td>
													<td>2017（-）</td>
													<td>2：30</td>
												</tr>
												<tr>
													<td>2</td>
													<td></td>
													<td>白羊</td>
													<td>沈以诚</td>
													<td>2017</td>
													<td>3：00</td>
												</tr>
												<tr>
													<td>3</td>
													<td></td>
													<td>TIME</td>
													<td>辉子</td>
													<td>2018</td>
													<td>3：00</td>
												</tr>

											</table>
										</div>
									</div>

								</div>
							</div>
							
						</div>
			</div>

			</body>
</html>
