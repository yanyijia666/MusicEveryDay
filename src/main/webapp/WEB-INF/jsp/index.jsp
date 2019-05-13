<!DOCTYPE html>
<%@page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

	<head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>天天音乐</title>

		<link rel="stylesheet" type="text/css" href="/staticcss/lun.css" />
		<link rel="stylesheet" href="/static/css/tiantian.css" />
		<link rel="stylesheet" href="/static/css/tiantianzuo.css" />
		<link rel="stylesheet" href="/static/css/style.css" />
		<link rel="stylesheet" href="/static/css/tiantiansongList.css" />
		<link rel="stylesheet" href="/static/css/toubucs.css" />
		<link rel="stylesheet" href="/static/css/gerenzhongx.css" />
	</head>

	<div id="zong">

		<body id="mybody">
			<div class="bbb">
		<img src="/static/img/20190505112100.png" />
		<div class="ccc">
            <c:if test="${user==null}">
                <a href="/user/login.html">您还未登陆，马上登陆</a>
            </c:if>
            <c:if test="${user!=null}">
                <a>${user.userName} </a><a href="/user/loginOut.html">退出登陆</a>
            </c:if>
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
				</div>
					<div id="dadiv" >

					<div id="quanbu">
						<div id="toubiaoqian" >
                                    <ul >
                                        <li><a href="/index2.html">音乐馆</a></li>
                                        <li><a href="#">歌单</a></li>
                                        <li><a href="#">主播电台</a></li>
                                        <li><a href="#">排行榜</a></li>
                                        <li><a href="#">歌手</a></li>
                                        <li><a href="#">最新音乐</a></li>

                                    </ul>
                                </div>

                                    <div id="gedan">


                                        <span><a style="" href="#">全部歌单<img style="height: 20px ; width: 20px;" src="/static/img/xia.png" /></a></span>

                                    </div>
                                    <div id="biaoqian">

                                        <ul id="main">

                                            <p style="float:left; margin-left: 30px; margin-top:10px;">热门标签：</p>
                                            <li>
                                                <a href="#">华语</a>
                                            </li>
                                            <li>
                                                <a href="#">流行</a>
                                            </li>
                                            <li>
                                                <a href="#">摇滚</a>
                                            </li>
                                            <li>
                                                <a href="#">民谣</a>
                                            </li>
                                            <li>
                                                <a href="#">电子</a>
                                            </li>
                                            <li>
                                                <a href="#">轻音乐</a>
                                            </li>
                                            <li>
                                                <a href="#">影视原声</a>
                                            </li>
                                            <li>
                                                <a href="#">ACG</a>
                                            </li>
                                            <li>
                                                <a href="#">怀旧</a>
                                            </li>
                                            <li>
                                                <a href="#">治愈</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div id="pictuer">

                                        <ul>
                                            <li>
                                                <a href="#"><img src="/static/img/musicsongpictures/109951163707775640.jpg" id="1" /></a>
                                            </li>
                                            <li>
                                                <a href="#"><img src="/static/img/musicsongpictures/109951163777840285.jpg" /></a>
                                            </li>
                                            <li>
                                                <a href="#"><img src="/static/img/musicsongpictures/109951163780660814.jpg" /></a>
                                            </li>
                                            <li>
                                                <a href="#"><img src="/static/img/musicsongpictures/109951163789342435.jpg" /></a>
                                            </li>
                                            <li>
                                                <a href="#"><img src="/static/img/musicsongpictures/109951163804524121.jpg" /></a>
                                            </li>
                                        </ul>
                                        <ul>
                                            <li>
                                                <div>
                                                    <a title="你好，一份来自Rapper的情书，请查收" href="#">你好，一份来自Rapper的情书，请查收</a>
                                                </div>
                                            </li>
                                            <li>
                                                <div>
                                                    <a title="『国风民谣』青鸟踏沧浪，随诗抵达他乡" href="#">『国风民谣』青鸟踏沧浪，随诗抵达他乡</a>
                                                </div>
                                            </li>
                                            <li>
                                                <div>
                                                    <a title="纯音/致郁：纵使黑暗无边，也要与你并肩" href="#">纯音/致郁：纵使黑暗无边，也要与你并肩</a>
                                                </div>
                                            </li>
                                            <li>
                                                <div>
                                                    <a title="月光·晚风·花瓣·夜空·私藏宝藏 与耳朵" href="#">月光·晚风·花瓣·夜空·私藏宝藏 与耳朵</a>
                                                </div>
                                            </li>
                                            <li>
                                                <div>
                                                    <a title="【日式浪漫】你留下那晚，雨把黄昏下亮了" href="#">【日式浪漫】你留下那晚，雨把黄昏下亮了</a>
                                                </div>
                                            </li>
                                        </ul>
                                        <ul>
                                            <li>
                                                <a href="#"><img src="/static/img/musicsongpictures/109951163815887214.jpg" /></a>
                                            </li>
                                            <li>

                                                <a href="#"><img src="/static/img/musicsongpictures/109951163819242649.jpg" /></a>
                                            </li>
                                            <li>
                                                <a href="#"><img src="/static/img/musicsongpictures/109951163824296408.jpg" /></a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <img src="/static/img/musicsongpictures/109951163829682890.jpg" ></a></li>
                                                    <li><a href="# "><img src="/static/img/musicsongpictures/109951163804524121.jpg "/></a></li>
                                </ul>
                                <ul>
                                    <li><div><a title="男女对唱 | 糖果电音 我一直都在如果你需要 " href="# ">男女对唱 | 糖果电音 我一直都在如果你需要</a></div></li>
                                    <li><div><a title="精选 | 网络热歌分享 " href="# ">精选 | 网络热歌分享</a></div></li>
                                    <li><div><a title="陈旧的车厢摇摇晃晃，慢慢驶向夏天 " href="# ">陈旧的车厢摇摇晃晃，慢慢驶向夏天</a></div></li>
                                    <li><div><a title="民谣吉他有烟有酒 深夜歌单.（个别非民谣） " href="# ">民谣吉他有烟有酒 深夜歌单.（个别非民谣）</a></div></li>
                                    <li><div><a title="精选｜Cover的那些循环歌曲 " href="# ">精选｜Cover的那些循环歌曲</a></div></li>
                                </ul>




                                    </div>
                                </div>


		</div>
			</section>
		</body>
				</div>
			</section>
		</body>
	</div>



	<script type="text/javascript " src="js/swiper.min.js "></script>
	<script type="text/javascript ">
		window.onload = function() {
			var swiper = new Swiper('.swiper-container', {
				autoplay: false,
				speed: 1000,
				autoplayDisableOnInteraction: false,
				loop: true,
				centeredSlides: true,
				slidesPerView: 2,
				pagination: '.swiper-pagination',
				paginationClickable: true,
				prevButton: '.swiper-button-prev',
				nextButton: '.swiper-button-next',
				onInit: function(swiper) {
					swiper.slides[2].className = "swiper-slide swiper-slide-active ";
				},
				breakpoints: {
					668: {
						slidesPerView: 1,
					}
				}
			});
		}
	</script>
	</section>

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
</html>