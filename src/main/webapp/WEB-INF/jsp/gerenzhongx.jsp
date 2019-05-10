<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title></title>
	<link rel="stylesheet" type="text/css" href="/static/css/lun.css" />
	<link rel="stylesheet" href="/static/css/tiantian.css" />
	<link rel="stylesheet" href="/static/css/tiantianzuo.css" />
	<link rel="stylesheet" href="/static/css/style.css" />
	<link rel="stylesheet" href="/static/css/tiantiansongList.css" />
	<link rel="stylesheet" href="/static/css/toubucs.css" />
	<link rel="stylesheet" href="/static/css/gerenzhongx.css" />



<div id="zong">

	<body id="mybody">
	<div class="bbb">
		<img src="/static/img/20190505112100.png" />
		<div class="ccc">
			<c:if test="${user==null}">
				<a href="/user/login.html">马上登陆</a>
			</c:if>
			<c:if test="${user!=null}">
				<a>${user.userName} </a><a href="/user/loginOut.html.html">退出登陆</a>
			</c:if>

			<a>通知</a>
			<a>更多</a>

		</div>
	</div>

		<div class="tiaojian">

			<body>
			<div id="lefttiantian">

				<p>推荐</p>
				<ul id="ainle">

					<li><span><img src="/static/img/yiny.png"/><a href="/index2.html">发现音乐</a></span></li>
					<li><span><img src="/static/img/redian.png"/><a>私人FM</a></span></li>
					<li><span><img src="/static/img/shiping.png"/><a>视频</a></span></li>
					<li><span><img src="/static/img/friend.png"/><a>朋友</a></span></li>

				</ul>
				<p>我的音乐</p>
				<ul>

					<li><span><img src="/static/img/yyy.png"/><a href="/user/bendi.html">本地音乐</a></span></li>
					<li><span><img src="/static/img/xiazai.png"/><a>下载管理</a></span></li>
					<li><span><img src="/static/img/yun.png"/><a>我的音乐云盘</a></span></li>
					<li><span><img src="/static/img/shoucang.png"/><a>我的收藏</a></span></li>
				</ul>

				<p>创建的歌单<span><a href="#"><img class="shouc" src="/static/img/jiahao.png"/></a><input type="image" class="xiala1" src="/static/img/xia.png"/></span></p>
				<ul id="hahha">

					<li><span><img src="/static/img/aixin.png"/><a href="/mylike/like.html">我喜欢的音乐</a></span></li>
					<li><span><img src="/static/img/musiclist.png"/><a>创建的歌单1</a></span></li>


				</ul>
				<p>收藏的歌单<span><a href="#"></a><input type="image" class="xiala2" src="/static/img/xia.png"/></span></p>
				<ul id="hahha1">

					<li><span><img src="/static/img/aixin.png"/><a href="/mylike/like.html">我喜欢的音乐</a></span></li>
					<li><span><img src="/static/img/musiclist.png"/><a>创建的歌单1</a></span></li>


				</ul>


			</div>
			</body>



			<div id="dadiv" >

				<div id="quanbu">
					<div id="tou">
						<img class="ims" style="height: 250px; width: 250px;" src="/static/img/lalalla.png" />

						<div id="ziliao">
							<h1 style="border-bottom: 1px #B3B3B3 solid;">我喜欢的歌单</h1>

							<ul>
								<li>
									<p class="aisini"><img src="/static/img/${user.userPortrait}" style="height: 60px;" /><span>${user.userName}</span><img style="height: 20px;" src="/static/img/nan.png" /></p>
								</li>
								<li>
									<a name="bofang" href="#">播放全部<img style="height: 15px; margin-left: 8px;" src="/static/img/aaaaaaaaa.png" /></a>
									<a name="bofang" href="#">分享</a>
									<a name="bofang" href="#">下载全部</a>
								</li>

								<li>标签：
									<a>添加标签</a>
								</li>
								<li>简介：
									<a>添加标签</a>
								</li>

							</ul>

						</div>
					</div>
						<div id="csd">
							<ul>
								<li>歌曲</li>
								<li>评论</li>
								<li>收藏着</li>
								<li><input type="text" class="sosuo" /><input type="image" style="height: 20px; margin-right: 10px;" src="/static/img/sosuo.png"/> </li>
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


								<c:forEach  varStatus="aa"  var="li" items="${list}">
									<tr>
										<td>${aa.index}</td>
										<td><a><input type="image" src="/static/img/xiazai.png" style="height: 20px; width: 20px" ></a><a onclick="return confirm('确定删除?');" href="/mylike/droup.html?likeId=${aa.index}"><input type="image"  src="/static/img/shanchu.png" style="height: 20px; width: 20px"></a></td>
										<td>${li.musicName}</td>
										<td>${li.singer}</td>
										<td>2017（-）</td>
										<td>${li.musicDuration}</td>
									</tr>
								</c:forEach>

							</table>
						</div>
					</div>
				</div>

			</div>

		</div>


</body>
<script type="text/javascript" src="/static/js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="/static/js/tiantian.js"></script>
<script type="text/javascript" src="/static/js/tiantianzuo.js"></script>
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

	})
</script>
</html>