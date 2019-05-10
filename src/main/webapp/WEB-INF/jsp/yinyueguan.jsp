<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>天天音乐</title>
 <link rel="stylesheet" type="text/css" href="/static/css/index.css"/>
 <script type="text/javascript" src="/static/js/jquery-1.12.4.js" ></script>
<script type="text/javascript" src="/static/js/index.js" ></script>
    <script src="/static/js/slides.min.jquery.js"></script>
    <script>
        $(function() {
            $('#slides').slides({
                preload: true,
                preloadImage: 'img/loading.gif',
                play: 5000,
                pause: 2500,
                hoverPause: true,
                animationStart: function() {
                    $('.caption').animate({
                        bottom: -35
                    }, 100);
                },
                animationComplete: function(current) {
                    $('.caption').animate({
                        bottom: 0
                    }, 200);
                    if(window.console && console.log) {
                        // example return of current slide number
                        console.log(current);
                    };
                }
            });
        });
    </script>
    <link rel="stylesheet" href="/static/css/global.css">
</head>
<body>
    <!-- 顶部 -->
    <div id="header">
        <div class="wrap">
            <ul class="fr">
                <c:if test="${user!=null}">
                    <li><span>您好：${user.userName}<a href="/user/loginOut.html">退出登录</a></span><span>|</span></li>
                </c:if>
                <c:if test="${user==null}">
                    <li><span>您还未登录,</span><a href="/user/login.html">马上登录</a><span>|</span></li>
                </c:if>

                <li><a href="#"><span id="vip"></span>绿钻</a><span>|</span></li>
                <li><a href="#"><span id="sui"></span>付费音乐包</a><span>|</span></li>
                <li><a href="#">全民K歌</a><span>|</span></li>
                <li><a href="#">QQ演出</a><span>|</span></li>
                <li><a href="/user/doupdate.html">修改资料</a><span>|</span></li>
            </ul>
        </div>
    </div>
    <!-- 中间主体区 -->
    <div id="center">
    <!-- 导航栏以及搜索框 -->
        <div id="top">
            <div class="wrap">
                <!-- logo -->
                <div id="logo" class="fl"><img src="/static/img/20190505115155.png" height="54" width="182" alt="" /></div>
                <!-- 导航栏 -->
                <div id="nav" class="fl">
                    <ul class="nav">
                        <li>
                            <a href="#">音乐馆</a>
                            <div>
                                <a href="/user/index.html">首页</a><span>|</span>
                                <a href="#">排行榜</a><span>|</span>
                                <a href="#">歌单广场</a><span>|</span>
                                <a href="#">电台</a><span>|</span>
                                <a href="#">歌手</a><span>|</span>
                                <a href="#">专辑</a>
                            </div>
                        </li>
                        <li>
                            <a href="">MV</a>
                            <div>
                                <a href="#">MV推荐</a><span>|</span>
                                <a href="#">MV排行榜</a><span>|</span>
                                <a href="#">MV库</a><span>|</span>
                                <a href="#">音乐现场</a><span>|</span>
                                <a href="#">MV专题</a><span>|</span>
                                <a href="#">巅峰榜盛典</a>
                            </div>
                        </li>
                        <li>
                            <a href="">我的音乐</a>
                            <div>
                                <a href="#">主题</a><span>|</span>
                                <a href="#">歌单</a><span>|</span>
                                <a href="#">MV收藏</a><span>|</span>
                                <a href="#">听众</a><span>|</span>
                                <a href="#">收听</a>
                            </div>
                        </li>
                        <li><a href="">下载客户端</a></li>
                    </ul>
                </div>
                <!-- 搜索 -->
                <div id="search" class="fl">
                    <form action="">
                        <input type="text" class="text" value="找到好音乐" />
                        <input type="button" class="button" />
                    </form>
                </div>
            </div>
        </div>
        <!-- 内容区 -->
        <div id="main" class="wrap">
        <!-- 内容区左边区域 -->
            <div id="side_left" class="fl">
                <!-- 轮播图 -->
                <div id="container">
                    <div id="example">
                        <img src="/static/img/new-ribbon.png" width="112" height="112" alt="New Ribbon" id="ribbon">
                        <div id="slides">
                            <div class="slides_container">
                                <div>
                                    <a href="http://sc.chinaz.com/" title="145.365 - Happy Bokeh Thursday! | Flickr - Photo Sharing!" target="_blank"><img src="/static/img/lunbo02.jpg" width="570" height="270" alt="Slide 1"></a>
                                    <div class="caption" style="bottom:0">
                                        <p>陶霸天!</p>
                                    </div>
                                </div>
                                <div>
                                    <a href="http://sc.chinaz.com/" title="Taxi | Flickr - Photo Sharing!" target="_blank"><img src="/static/img/lunbo04.jpg" width="570" height="270" alt="Slide 2"></a>
                                    <div class="caption">
                                        <p>重庆.....</p>
                                    </div>
                                </div>
                                <div>
                                    <a href="http://sc.chinaz.com/" title="Happy Bokeh raining Day | Flickr - Photo Sharing!" target="_blank"><img src="/static/img/lunbo06.jpg" width="570" height="270" alt="Slide 3"></a>
                                    <div class="caption">
                                        <p>霸天集团</p>
                                    </div>
                                </div>
                                <div>
                                    <a href="http://sc.chinaz.com/" title="We Eat Light | Flickr - Photo Sharing!" target="_blank"><img src="/static/img/lunbo09.jpg" width="570" height="270" alt="Slide 4"></a>
                                    <div class="caption">
                                        <p>荣誉董事长</p>
                                    </div>
                                </div>
                                <div>
                                    <a href="http://www.lanrentuku.cn/" title="&ldquo;I must go down to the sea again, to the lonely sea and the sky; and all I ask is a tall ship and a star to steer her by.&rdquo; | Flickr - Photo Sharing!" target="_blank"><img src="/static/img/slide-5.jpg" width="570" height="270" alt="Slide 5"></a>
                                    <div class="caption">
                                        <p>问世间谁最坦荡，直叫我当仁不让</p>
                                    </div>
                                </div>
                                <div>
                                    <a href="http://sc.chinaz.com/" title="twelve.inch | Flickr - Photo Sharing!" target="_blank"><img src="/static/img/lunbo07.jpg" width="570" height="270" alt="Slide 6"></a>
                                    <div class="caption">
                                        <p>我拿什么整死你</p>
                                    </div>
                                </div>
                                <div>
                                    <a href="http://sc.chinaz.com/" title="Save my love for loneliness | Flickr - Photo Sharing!" target="_blank"><img src="/static/img/lunbo08.jpg" width="570" height="270" alt="Slide 7"></a>
                                    <div class="caption">
                                        <p>你的爱人</p>
                                    </div>
                                </div>
                            </div>
                            <a href="#" class="prev"><img src="/static/img/arrow-prev.png" width="24" height="43" alt="Arrow Prev"></a>
                            <a href="#" class="next"><img src="/static/img/arrow-next.png" width="24" height="43" alt="Arrow Next"></a>
                        </div>
                        <img src="/static/img/example-frame.png" width="739" height="341" alt="Example Frame" id="frame">
                    </div>
                    <div class="footer">

                        <p></p>
                    </div>
                </div>
                <!-- 在线首发 -->
                <div id="online_first">
                    <div class="section_top red_border">
                        <h1>在线首发</h1><a href="#">/更多</a>
                        <div class="fr">
                            <a href="#" class="pre"></a>
                            <a href="#" class="next"></a>
                        </div>
                    </div>
                    <ul>
                        <li class="mg_r_b"><a href="#"><img src="/static/img/haogequ01.jpg" alt="" /><h3>中国好声音第三...</h3><span>中国好歌曲</span></a><p></p><a href="#" class="btn"></a></li>
                        <li class="mg_r_b"><a href="#"><img src="/static/img/huoguoyingxiong.jpg" alt="" /><h3>神秘世界</h3><span>萧煌奇</span></a><p></p><a href="#" class="btn"></a></li>
                        <li class="mg_r_b"><a href="#"><img src="/static/img/suibian.jpg" alt="" /><h3>所谓如君</h3><span>魏如君</span></a><p></p><a href="#" class="btn"></a></li>
                        <li class="mg_r_b"><a href="#"><img src="/static/img/dageshen.jpg" alt="" /><h3>火锅英雄</h3><span>赵英俊</span></a><p></p><a href="#" class="btn"></a></li>
                        <li class="mg_b"><a href="#"><img src="/static/img/huoguoyingxiong.jpg" alt="" /><h3>At least for now</h3><span>At least for now</span></a><p></p><a href="#" class="btn"></a></li>
                        <li class="mg_r"><a href="#"><img src="/static/img/wei.jpg" alt="" /><h3>曾经在</h3><span>冲击力乐队</span></a><p></p><a href="#" class="btn"></a></li>
                        <li class="mg_r"><a href="#"><img src="/static/img/zaishuibian.jpg" alt="" /><h3>时光机</h3><span>张博林</span></a><p></p><a href="#" class="btn"></a></li>
                        <li class="mg_r"><a href="#"><img src="/static/img/xiao.jpg" alt="" /><h3>谁是大歌神</h3><span>谁是大歌神</span></a><p></p><a href="#" class="btn"></a></li>
                        <li class="mg_r"><a href="#"><img src="/static/img/suibian.jpg" alt="" /><h3>张磊的</h3><span>张磊</span></a><p></p><a href="#" class="btn"></a></li>
                        <li><a href="#"><img src="/static/img/wei.jpg" alt="" /><h3>HIM</h3><span>history</span></a><p></p><a href="#" class="btn"></a></li>
                    </ul>
                </div>
                <div class="cl"></div>
                <!-- MV首播 -->
                <div id="music_list">
                    <div class="section_top orange_border">
                        <h1>MV首播</h1><a href="#">/更多</a>
                    </div>
                    <ul>
                        <li class="mv_mg_r mv_mg_b"><a href="#"><img src="/static/img/xiao.jpg" alt="" /></a><a href="#" class="mv_btn"></a><p><a href="#" class="mv_name">点亮万家灯火</a><span>-</span><a href="#" class="singer_name">纪敏佳</a></p><p>北漂经历与感悟，纪敏佳唱...</p><span>2016-04-18</span></li>
                        <li class="mv_mg_r mv_mg_b"><a href="#"><img src="/static/img/huoguoyingxiong.jpg" alt="" /></a><a href="#" class="mv_btn"></a><p><a href="#" class="mv_name">点亮万家灯火</a><span>-</span><a href="#" class="singer_name">纪敏佳</a></p><p>北漂经历与感悟，纪敏佳唱...</p><span>2016-04-18</span></li>
                        <li class="mv_mg_r mv_mg_b"><a href="#"><img src="/static/img/00.jpg" alt="" /></a><a href="#" class="mv_btn"></a><p><a href="#" class="mv_name">点亮万家灯火</a><span>-</span><a href="#" class="singer_name">纪敏佳</a></p><p>北漂经历与感悟，纪敏佳唱...</p><span>2016-04-18</span></li>
                        <li class="mv_mg_b"><a href="#"><img src="/static/img/001.jpg" alt="" /></a><a href="#" class="mv_btn"></a><p><a href="#" class="mv_name">点亮万家灯火</a><span>-</span><a href="#" class="singer_name">纪敏佳</a></p><p>北漂经历与感悟，纪敏佳唱...</p><span>2016-04-18</span></li>
                        <li class="mv_mg_r"><a href="#"><img src="/static/img/002.jpg" alt="" /></a><a href="#" class="mv_btn"></a><p><a href="#" class="mv_name">点亮万家灯火</a><span>-</span><a href="#" class="singer_name">纪敏佳</a></p><p>北漂经历与感悟，纪敏佳唱...</p><span>2016-04-18</span></li>
                        <li class="mv_mg_r"><a href="#"><img src="/static/img/003.jpg" alt="" /></a><a href="#" class="mv_btn"></a><p><a href="#" class="mv_name">点亮万家灯火</a><span>-</span><a href="#" class="singer_name">纪敏佳</a></p><p>北漂经历与感悟，纪敏佳唱...</p><span>2016-04-18</span></li>
                        <li class="mv_mg_r"><a href="#"><img src="/static/img/004.jpg" alt="" /></a><a href="#" class="mv_btn"></a><p><a href="#" class="mv_name">点亮万家灯火</a><span>-</span><a href="#" class="singer_name">纪敏佳</a></p><p>北漂经历与感悟，纪敏佳唱...</p><span>2016-04-18</span></li>
                        <li><a href="#"><img src="/static/img/005.jpg" alt="" /></a><a href="#" class="mv_btn"></a><p><a href="#" class="mv_name">点亮万家灯火</a><span>-</span><a href="#" class="singer_name">纪敏佳</a></p><p>北漂经历与感悟，纪敏佳唱...</p><span>2016-04-18</span></li>
                    </ul>

                </div>
                <div class="cl"></div>
                <!-- 最新推荐 -->
                <div id="recommend">
                    <div id="new_recommend">
                        <div class="section_top green_border">
                            <h1 class="fl">最新推荐</h1>
                            <a href="#" class="broadcast"></a>
                            <a href="#" class="add"></a>
                            <div class="language fr">
                                <a href="#" class="select">华语</a><span>|</span>
                                <a href="#">韩语</a><span>|</span>
                                <a href="#">欧美</a>
                            </div>
                        </div>
                        <div class="cl"></div>
                        <div class="recommend_list">
                            <ul>

                                <c:forEach items="${music}" var="li" >

                                    <li><a class="recommend_song" href="#">${li.musicName}</a><span>-</span><a class="recommend_singer" href="#">${li.singer}</a></li>
                                </c:forEach>

                              <%--  <li><a class="recommend_song" href="#">迷雾（《魔宫魅影》电影主题曲）</a><span>-</span><a class="recommend_singer" href="#">A-lin</a></li>
                                <li><a class="recommend_song" href="#">迷雾（《魔宫魅影》电影主题曲）</a><span>-</span><a class="recommend_singer" href="#">A-lin</a></li>
                                <li><a class="recommend_song" href="#">迷雾（《魔宫魅影》电影主题曲）</a><span>-</span><a class="recommend_singer" href="#">A-lin</a></li>
                                <li><a class="recommend_song" href="#">迷雾（《魔宫魅影》电影主题曲）</a><span>-</span><a class="recommend_singer" href="#">A-lin</a></li>
                                <li><a class="recommend_song" href="#">迷雾（《魔宫魅影》电影主题曲）</a><span>-</span><a class="recommend_singer" href="#">A-lin</a></li>
                                <li><a class="recommend_song" href="#">迷雾（《魔宫魅影》电影主题曲）</a><span>-</span><a class="recommend_singer" href="#">A-lin</a></li>
                                <li><a class="recommend_song" href="#">迷雾（《魔宫魅影》电影主题曲）</a><span>-</span><a class="recommend_singer" href="#">A-lin</a></li>
                                <li><a class="recommend_song" href="#">迷雾（《魔宫魅影》电影主题曲）</a><span>-</span><a class="recommend_singer" href="#">A-lin</a></li>
                                <li><a class="recommend_song" href="#">迷雾（《魔宫魅影》电影主题曲）</a><span>-</span><a class="recommend_singer" href="#">A-lin</a></li>
                                <li><a class="recommend_song" href="#">迷雾（《魔宫魅影》电影主题曲）</a><span>-</span><a class="recommend_singer" href="#">A-lin</a></li>
                                <li><a class="recommend_song" href="#">迷雾（《魔宫魅影》电影主题曲）</a><span>-</span><a class="recommend_singer" href="#">A-lin</a></li>
--%>
                            </ul>
                        </div>
                    </div>
                    <!-- 最热推荐 -->
                    <div id="hot_recommend">
                        <div class="section_top green_border">
                            <h1 class="fl">最热推荐</h1>
                            <a href="#" class="broadcast"></a>
                            <a href="#" class="add"></a>
                        </div>
                        <div class="cl"></div>
                        <div class="recommend_list">
                            <ul>
                                <c:forEach items="${music1}" var="li" >

                                    <li><a class="recommend_song" href="#">${li.musicName}</a><span>-</span><a class="recommend_singer" href="#">${li.singer}</a></li>
                                </c:forEach>
                              <%--  <li><a class="recommend_song" href="#">迷雾（《魔宫魅影》电影主题曲）</a><span>-</span><a class="recommend_singer" href="#">A-lin</a></li>
                                <li><a class="recommend_song" href="#">迷雾（《魔宫魅影》电影主题曲）</a><span>-</span><a class="recommend_singer" href="#">A-lin</a></li>
                                <li><a class="recommend_song" href="#">迷雾（《魔宫魅影》电影主题曲）</a><span>-</span><a class="recommend_singer" href="#">A-lin</a></li>
                                <li><a class="recommend_song" href="#">迷雾（《魔宫魅影》电影主题曲）</a><span>-</span><a class="recommend_singer" href="#">A-lin</a></li>
                                <li><a class="recommend_song" href="#">迷雾（《魔宫魅影》电影主题曲）</a><span>-</span><a class="recommend_singer" href="#">A-lin</a></li>
                                <li><a class="recommend_song" href="#">迷雾（《魔宫魅影》电影主题曲）</a><span>-</span><a class="recommend_singer" href="#">A-lin</a></li>
                                <li><a class="recommend_song" href="#">迷雾（《魔宫魅影》电影主题曲）</a><span>-</span><a class="recommend_singer" href="#">A-lin</a></li>
                                <li><a class="recommend_song" href="#">迷雾（《魔宫魅影》电影主题曲）</a><span>-</span><a class="recommend_singer" href="#">A-lin</a></li>
                                <li><a class="recommend_song" href="#">迷雾（《魔宫魅影》电影主题曲）</a><span>-</span><a class="recommend_singer" href="#">A-lin</a></li>
                                <li><a class="recommend_song" href="#">迷雾（《魔宫魅影》电影主题曲）</a><span>-</span><a class="recommend_singer" href="#">A-lin</a></li>
                                <li><a class="recommend_song" href="#">迷雾（《魔宫魅影》电影主题曲）</a><span>-</span><a class="recommend_singer" href="#">A-lin</a></li>
                                <li><a class="recommend_song" href="#">迷雾（《魔宫魅影》电影主题曲）</a><span>-</span><a class="recommend_singer" href="#">A-lin</a></li>--%>
                            </ul>
                        </div>
                    </div>
                    <div class="cl"></div>
                </div>
                <!-- MV精选 -->
                <div id="choice">
                    <div class="section_top pink_border"><h1>精选集</h1></div>
                    <div class="choice_left fl">
                        <img src="/static/img/airen.jpg" width="250px" height="300px" alt="" />
                        <a href="#">mv精选</a><br />
                        <span>音乐抚慰青春之痛，追忆那时的蜜语甜言。</span>
                    </div>
                    <div class="choice_right fl">
                        <ul>
                            <li class="choice_mg_r choice_mg_b"><img src="/static/img/005.jpg" alt="" /><a href="#">音乐时尚两不误</a></li>
                            <li class="choice_mg_r choice_mg_b"><img src="/static/img/007.jpg" alt="" /><a href="#">相恋跨越时空</a></li>
                            <li class="choice_mg_b"><img src="/static/img/001.jpg" alt="" /><a href="#">好的歌手会搞怪</a></li>
                            <li class="choice_mg_r"><img src="/static/img/003.jpg" alt="" /><a href="#">静享一曲中国风</a></li>
                            <li class="choice_mg_r"><img src="/static/img/008.jpg" alt="" /><a href="#">音乐和短裙最配</a></li>
                            <li><img src="/static/img/geshou01.jpg" alt="" /><a href="#">一枝独秀更耀眼！</a></li>
                        </ul>
                        <div class="cl"></div>
                    </div>
                </div>
            </div>
        <!-- 内容区右边区域 -->
            <div id="side_right" class="fl">
                <div id="user_login">
                    <a href="#"><img src="/static/img/006.jpg" width="220px" alt="" /></a>
                </div>
                <div id="ranking">
                <!-- 巅峰榜 -->
                    <div id="ranking_title">
                        <h3 class="side_right_title fl">巅峰榜</h3>
                        <a href="#" class="broadcast"></a>
                        <a href="#" class="add"></a>
                    </div>
                    <div class="area">
                        <a class="select" href="#">流行指数</a><span>|</span>
                        <a href="#">内地</a><span>|</span>
                        <a href="#">港台</a><span>|</span>
                        <a href="#">欧美</a><span>|</span>
                        <a href="#">韩国</a>
                    </div>
                    <ul id="ranking_list">
                        <li class="ranking_one">
                            <span></span>
                            <img src="/static/img/dian.jpg" alt="" />
                            <a class="ranking_one_song">只是没...</a><br />
                            <a class="ranking_one_singer">张靓颖/王...</a>
                        </li>
                        <li>
                            <span></span>
                            <h5><a href="#">有心无意</a></h5>
                            <p><a href="#">本兮</a></p>
                        </li>
                        <li>
                            <span></span>
                            <h5><a href="#">有心无意</a></h5>
                            <p><a href="#">本兮</a></p>
                        </li>
                        <li>
                            <span></span>
                            <h5><a href="#">有心无意</a></h5>
                            <p><a href="#">本兮</a></p>
                        </li>
                        <li>
                            <span></span>
                            <h5><a href="#">有心无意</a></h5>
                            <p><a href="#">本兮</a></p>
                        </li>
                        <li>
                            <span></span>
                            <h5><a href="#">有心无意</a></h5>
                            <p><a href="#">本兮</a></p>
                        </li>
                        <li>
                            <span></span>
                            <h5><a href="#">有心无意</a></h5>
                            <p><a href="#">本兮</a></p>
                        </li>
                        <li>
                            <span></span>
                            <h5><a href="#">有心无意</a></h5>
                            <p><a href="#">本兮</a></p>
                        </li>
                        <li>
                            <span></span>
                            <h5><a href="#">有心无意</a></h5>
                            <p><a href="#">本兮</a></p>
                        </li>
                        <li>
                            <span></span>
                            <h5><a href="#">有心无意</a></h5>
                            <p><a href="#">本兮</a></p>
                        </li>
                    </ul>
                    <ul class="rank_index">
                        <li class="rank_index_mg_r rank_index_mg_b"><a href="#">iTunes榜</a></li>
                        <li class="rank_index_mg_r rank_index_mg_b"><a href="#">美国公告牌</a></li>
                        <li class="rank_index_mg_b"><a href="#">英国UK榜</a></li>
                        <li class="rank_index_mg_r rank_index_mg_b"><a href="#">iTunes榜</a></li>
                        <li class="rank_index_mg_r rank_index_mg_b"><a href="#">美国公告牌</a></li>
                        <li class="rank_index_mg_b"><a href="#">英国UK榜</a></li>
                        <li class="rank_index_mg_r"><a href="#">iTunes榜</a></li>
                        <li class="rank_index_mg_r"><a href="#">美国公告牌</a></li>
                        <li><a href="#">英国UK榜</a></li>
                        <!-- <li class="cl"></li> -->
                    </ul>
                </div>
                <!-- 热门歌手 -->
                <div id="hot_singer">
                    <div class="hot_singer_title">
                        <h3 class="side_right_title">热门歌手</h3>
                        <a href="#">/更多</a>
                    </div>
                    <ul class="singer_list">
                        <li class="singer_list_mg_r singer_list_mg_b"><img src="/static/img/gege.jpg" alt="" /><a href="#">周杰伦</a></li>
                        <li class="singer_list_mg_r singer_list_mg_b"><img src="/static/img/geshou01.jpg" alt="" /><a href="#">周杰伦</a></li>
                        <li class="singer_list_mg_b"><img src="/static/img/008.jpg" alt="" /><a href="#">周杰伦</a></li>
                        <li class="singer_list_mg_r"><img src="/static/img/geshou01.jpg" alt="" /><a href="#">周杰伦</a></li>
                        <li class="singer_list_mg_r"><img src="/static/img/geshou02.jpg" alt="" /><a href="#">周杰伦</a></li>
                        <li><img src="/static/img/geshou02.jpg" alt="" /><a href="#">周杰伦</a></li>
                    </ul>
                    <ul class="singer_area">
                        <li class="singer_area_mg_r singer_area_mg_b"><a href="#">华语男歌手</a></li>
                        <li class="singer_area_mg_r singer_area_mg_b"><a href="#">华语男歌手</a></li>
                        <li class="singer_area_mg_b"><a href="#">华语男歌手</a></li>
                        <li class="singer_area_mg_r singer_area_mg_b"><a href="#">华语男歌手</a></li>
                        <li class="singer_area_mg_r singer_area_mg_b"><a href="#">华语男歌手</a></li>
                        <li class="singer_area_mg_b"><a href="#">华语男歌手</a></li>
                        <li class="singer_area_mg_r singer_area_mg_b"><a href="#">华语男歌手</a></li>
                        <li class="singer_area_mg_r singer_area_mg_b"><a href="#">华语男歌手</a></li>
                        <li class="singer_area_mg_b"><a href="#">华语男歌手</a></li>
                        <li class="singer_area_mg_r"><a href="#">华语男歌手</a></li>
                        <li class="singer_area_mg_r"><a href="#">华语男歌手</a></li>
                        <li><a href="#">华语男歌手</a></li>
                    </ul>
                </div>
                <!-- 精彩活动 -->
                <div id="activity">
                    <div>
                        <h3 class="side_right_title">精彩活动</h3>
                    </div>
                    <div class="act_content">
                        <div class="rank_index_mg_b">
                            <a href="#"><img src="/static/img/006.jpg" width="220px" alt="" /></a>
                            <p><a href="#">[精彩活动] 长江国际音乐节</a></p>
                        </div>
                        <div>
                            <a href=""><img src="/static/img/003.jpg" width="220px" alt="" /></a>
                            <p><a href="#">[精彩活动] 光年</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="cl"></div>
    <!-- 低栏 -->
    <div id="footer">
        <div class="wrap">
            <div class="follow_on">
                <dl class="soft_download fl">
                    <dt>软件下载</dt>
                    <dd>
                        <a href="#">PC版</a>
                        <a href="#">ipone客户端</a>
                        <a href="#">ipad客户端</a>
                    </dd>
                    <dd>
                        <a href="#">MAC版</a>
                        <a href="#">Android客户端</a>
                        <a href="#">Android Pad客户端</a>
                    </dd>
                    <dd>
                        <a href="#">Windows Phone版</a>
                    </dd>
                </dl>
                <dl class="fl">
                    <dt>特色产品</dt>
                    <dd><a href="#">车载互联</a></dd>
                    <dd><a href="#">QPlay</a></dd>
                    <dd><a href="#">qq音乐原创音乐平台</a></dd>
                </dl>
                <dl class="friend_link fl">
                    <dt>友情链接</dt>
                    <dd>
                        <a href="#">腾讯视频</a>
                        <a href="#">手机QQ空间</a>
                        <a href="#">最新版QQ</a>
                        <a href="#">腾讯课堂</a>
                        <a href="#">腾讯社交广告</a>
                    </dd>
                    <dd>
                        <a href="#">电脑管家</a>
                        <a href="#">QQ浏览器</a>
                        <a href="#">画报</a>
                        <a href="#">腾讯微云</a>
                        <a href="#">黄钻活动</a>
                        <a href="#">星钻</a>
                    </dd>
                    <dd>
                        <a href="#">企鹅FM</a>
                        <a href="#">腾讯云</a>
                        <a href="#">腾讯云论坛</a>
                        <a href="#">兴趣部落</a>
                        <a href="#">腾讯云搜</a>
                    </dd>
                    <dd>
                        <a href="#">智能电视网</a><a href="#">当贝市场</a>
                    </dd>
                </dl>
            </div>
            <div class="cl"></div>
            <p class="footer_menu">
                <a href="#">关于腾讯</a>|
                <a href="#">About Tencent</a>|
                <a href="#">服务条款</a>|
                <a href="#">用户服务协议</a>|
                <a href="#">广告服务</a>|
                <a href="#">腾讯招聘</a>|
                <a href="#">客服中心</a>|
                <a href="#">网站导航</a>
            </p>
            <p class="copyrighten">
                <span>Copyright © 1998 - 2016 Tencent.</span><a href="#">All Rights Reserved.</a>
            </p>
            <p class="copyrightzh">
                <span>腾讯公司</span> <a href="#">版权所有 腾讯网络文化经营许可证</a>
            </p>
        </div>
    </div>

</body>
</html>
