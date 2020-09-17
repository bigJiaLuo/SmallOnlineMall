<%@ page contentType="text/html; charset=utf-8" language="java" %>
<html lang="ZH-CN">
<head >
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="css/xiaomi.css"/>
    <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
    <script src="js/jquery.animate-colors-min.js"></script>
    <title>网上购物商城</title>
    <script src="../plugins/bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../plugins/bootstrap/css/bootstrap-theme.min.css">
    <style>
        main {
            padding-top: 50px;
        }
    </style>
</head>
<body>
<header>
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">网上购物商城18软件03_15a522</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                           aria-expanded="false">食品 <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">米</a></li>
                            <li><a href="#">油</a></li>
                            <li><a href="#">盐</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                           aria-expanded="false">服装 <span class="caret"></span></a>
                        <!-- Single button -->
                        <ul class="dropdown-menu">
                            <li><a href="#">鞋子</a></li>
                            <li><a href="#">裤子</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                           aria-expanded="false">数码 <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">手机</a></li>
                            <li><a href="#">电脑</a></li>
                        </ul>
                    </li>
                </ul>
                <form class="navbar-form navbar-left" role="search">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="搜索">
                    </div>
                    <button type="submit" class="btn btn-default">搜索</button>
                </form>
                <div class="navbar navbar-right">
                    <button type="button" class="btn btn-info navbar-btn">购物车 （0）</button>
                </div>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#">登录</a></li>
                    <li><a href="#">注册</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                           aria-expanded="false">特别鸣谢 <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">刘</a></li>
                            <li><a href="#">官</a></li>
                            <li><a href="#">付</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">友情链接</a></li>
                        </ul>
                    </li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
</header>                                   
<main>
    <div id="main_head_box">
        <div id="menu_wrap">
            <div id="menu_logo">
                <img src="img/shoplogo.jpg">
            </div>
            <div id="menu_nav">
                <ul>
                    <li class="menu_li" control="xiaomiphone">精品手机</li>
                    <li class="menu_li" control="hongmiphone">精品食品</li>
                    <li class="menu_li" control="pingban">国内服装</li>
                </ul>
            </div>
        </div>
    </div>
    <div id="menu_content_bg" style="height: 0px;">
        <div id="menu_content_wrap">
            <ul style="top: 0px;">
                <li id="xiaomiphone">
                    <div class="menu_content">
                        <img src="../images/medium/mi4!160x110.jpg">
                        <p class="menu_content_tit">大米手机4</p>
                        <p class="menu_content_price">1499元起</p>
                    </div>
                    <span class="menu_content_line"></span>
                    <div class="menu_content">
                        <img src="../images/medium/minote!160x110.jpg">
                        <p class="menu_content_tit">大米NOTE标准版</p>
                        <p class="menu_content_price">1999元起</p>
                    </div>
                    <span class="menu_content_line"></span>
                    <div class="menu_content">
                        <img src="../images/medium/minotepro!160x110.jpg">
                        <p class="menu_content_tit">大米NOTE顶配版</p>
                        <p class="menu_content_price">2999元起</p>
                    </div>
                </li>
                <li id="hongmiphone">
                    <div class="menu_content">
                        <img src="img/medium/dami.jpg">
                        <p class="menu_content_tit">江西 大米</p>
                        <p class="menu_content_price">99元</p>
                    </div>
                    <span class="menu_content_line"></span>
                    <div class="menu_content">
                        <img src="img/medium/juzi.jpg">
                        <p class="menu_content_tit">江西 橘子</p>
                        <p class="menu_content_price">29元</p>
                    </div>
                    <span class="menu_content_line"></span>
                    <div class="menu_content">
                        <img src="img/medium/dabaitu.jpg">
                        <p class="menu_content_tit">大白兔奶糖</p>
                        <p class="menu_content_price">29元</p>
                    </div>
                </li>
                <li id="pingban">
                    <div class="menu_content">
                        <img src="img/medium/yifu1.jpg">
                        <p class="menu_content_tit">女 牛仔衣</p>
                        <p class="menu_content_price">99元</p>
                    </div>
                    <span class="menu_content_line"></span>
                    <div class="menu_content">
                        <img src="img/medium/yifu2.jpg">
                        <p class="menu_content_tit">男 夹克</p>
                        <p class="menu_content_price">99元</p>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <div id="big_banner_wrap">
        <ul id="banner_menu_wrap">
            <li class="active" img>
                <a>数码</a>
                <a class="banner_menu_i">&gt;</a>
                <div class="banner_menu_content" style="width: 600px; top: -20px;">
                    <ul class="banner_menu_content_ul">
                        <li>
                            <a><img src="../images/small/minote.jpg"></a><a>大米NOTE</a><span>选购</span>
                        </li>
                        <li>
                            <a><img src="../images/small/mi4.jpg"></a><a>大米手机4</a><span>选购</span>
                        </li>
                    </ul>
                    <ul class="banner_menu_content_ul">
                        <li>
                            <a><img src="../images/small/hongmi2.jpg"/> </a><a>红米2</a><span>选购</span></li>
                    </ul>
                </div>
            </li>
            <li>
                <a>美食</a>
                <a class="banner_menu_i">&gt;</a>
                <div class="banner_menu_content" style="width: 600px; top: -62px;">
                    <ul class="banner_menu_content_ul">
                        <li>
                            <a><img src="img/small/dami.jpg"></a><a>江西大米</a><span>选购</span></li>
                    </ul>
                    <ul class="banner_menu_content_ul">
                        <li>
                            <a><img src="img/small/dabaitu.jpg"></a><a>大白兔奶糖</a><span>选购</span></li>
                    </ul>
                </div>
            </li>
            <li>
                <a>服装</a>
                <a class="banner_menu_i">&gt;</a>
                <div class="banner_menu_content" style="width: 900px; top: -104px;">
                    <ul class="banner_menu_content_ul">
                        <li>
                            <a><img src="img/small/yifu1.jpg"></a><a>女上衣</a><span>选购</span></li>
                        <li>
                            <a><img src="img/small/yifu2.jpg"></a><a>男上衣</a><span>选购</span></li>
                    </ul>
                </div>
            </li>
        </ul>
        <div id="big_banner_pic_wrap">
            <ul id="big_banner_pic">
                <li><img src="../images/large/T1hiDvBvVv1RXrhCrK.jpg"></li>
                <li><img src="../images/large/dabaitu1.jpg"></li>
                <li><img src="../images/large/yifu1.jpg"></li>
            </ul>
        </div>
        <div id="big_banner_change_wrap">
            <div id="big_banner_change_prev"> &lt;</div>
            <div id="big_banner_change_next">&gt;</div>
        </div>
    </div>
    <div id="head_other_wrap">
        <div id="head_other">
            <ul>
                <li>
                    <div id="div1">
                        <p>START</p>
                        <p>开房购买</p>
                    </div>
                </li>
                <li>
                    <div id="div2">
                        <p>GROUND</p>
                        <p>企业团购</p>
                    </div>
                </li>
                <li>
                    <div id="div3">
                        <p>RETROFIT</p>
                        <p>官方产品</p>
                    </div>
                </li>
                <li>
                    <div id="div4">
                        <p>CHANNEL</p>
                        <p>F码通道</p>
                    </div>
                </li>
                <li>
                    <div id="div5">
                        <p>RECHARGE</p>
                        <p>话费充值</p>
                    </div>
                </li>
                <li>
                    <div id="div6">
                        <p>SECURITY</p>
                        <p>防伪检查</p>
                    </div>
                </li>
            </ul>
        </div>
        <div class="head_other_ad"><img src="../images/large/T184E_BQWT1RXrhCrK.jpg"></div>
        <div class="head_other_ad"><img src="../images/large/T1yvd_BQDT1RXrhCrK.jpg"></div>
        <div class="head_other_ad"><img src="../images/large/T1mahQBmKT1RXrhCrK.jpg"></div>
    </div>
    <div id="head_hot_goods_wrap">
        <div id="head_hot_goods_title">
            <span class="title_span">数码精选</span>
            <div id="head_hot_goods_change">
                <span id="head_hot_goods_prave"><</span>
                <span id="head_hot_goods_next">></span>
            </div>
        </div>
        <div id="head_hot_goods_content" class="floor_goods_wrap">
            <ul>
                <li class="floor_goods_wrap_li">
                    <a><img src="../images/medium/T1riKjB7VT1RXrhCrK.jpg"></a>
                    <a>大米电视2/2S 全系列</a>
                    <a>40/48/49/55英寸 现货购买</a>
                </li>
                <li class="floor_goods_wrap_li">
                    <a><img src="../images/medium/T19AbjBCDT1RXrhCrK.jpg"></a>
                    <a>大米平板</a>
                    <a>全球首款 NVIDIA Tegra K1 平板</a>
                </li>
                <li class="floor_goods_wrap_li">
                    <a><img src="../images/medium/T1meZjBCAT1RXrhCrK.jpg"></a>
                    <a>大米盒子增强版 1G</a>
                    <a>首款4K超高清网络机顶盒</a>
                </li>
                <li class="floor_goods_wrap_li">
                    <a><img src="../images/medium/T1tsEgB7DT1RXrhCrK.jpg"></a>
                    <a>全新大米路由器</a>
                    <a>顶配路由器，企业级性能</a>
                </li>
                <li class="floor_goods_wrap_li">
                    <a><img src="../images/medium/T10TJjB5hT1RXrhCrK.jpg"></a>
                    <a>大米头戴式耳机</a>
                    <a>媲美主流千元级头戴耳机</a>
                </li>
                <li class="floor_goods_wrap_li">
                    <a><img src="../images/medium/T1hLhjB_AT1RXrhCrK.jpg"></a>
                    <a>大米插线板</a>
                    <a>3重安全保护，插线板中的艺术品</a>
                </li>
                <li class="floor_goods_wrap_li">
                    <a><img src="../images/medium/T1KDAjBCAT1RXrhCrK.jpg"></a>
                    <a>大米路由器mini</a>
                    <a>主流双频AC智能路由器</a>
                </li>
                <li class="floor_goods_wrap_li">
                    <a><img src="../images/medium/T16eEjBKhT1RXrhCrK.jpg"></a>
                    <a>大米移动电源10000mAh</a>
                    <a>高密度进口电芯，仅名片大小</a>
                </li>
                <li class="floor_goods_wrap_li">
                    <a><img src="../images/medium/T1JnWjBCCT1RXrhCrK.jpg"></a>
                    <a>大米蓝牙耳机</a>
                    <a>2015德国IF大奖，高清通话音质</a>
                </li>
                <li class="floor_goods_wrap_li">
                    <a><img src="../images/medium/T1BsbjBvLT1RXrhCrK.jpg"></a>
                    <a>大米活塞耳机</a>
                    <a>2015红点奖，独家音质优化专利</a>
                </li>
            </ul>
        </div>
    </div>
    <div id="main_show_box">
        <div id="floor_1">
            <div id="floor_head">
                <span class="title_span">精品食品</span>
            </div>
        </div>
        <div class="floor_goods_wrap">
            <ul>
                <li class="floor_goods_wrap_li">
                    <a><img src="img/suiguo.jpg"></a>
                </li>
                <li class="floor_goods_wrap_li">
                    <a class="floor_goods_img"><img src="../images/medium/dami.jpg"></a>
                    <a class="floor_goods_tit">江西优质大米</a>
                    <a class="floor_goods_txt">不好吃不要钱</a>
                    <a class="floor_goods_price">99元</a>
                </li>
                <li class="floor_goods_wrap_li">
                    <a class="floor_goods_img"><img src="../images/medium/latiao.jpg"></a>
                    <a class="floor_goods_tit">中端 辣条</a>
                    <a class="floor_goods_txt">不上火</a>
                    <a class="floor_goods_price">1.9元</a>
                </li>
                <li class="floor_goods_wrap_li">
                    <a class="floor_goods_img"><img src="../images/medium/yan.jpg"></a>
                    <a class="floor_goods_tit">江西 食盐</a>
                    <a class="floor_goods_txt">吃了 这种盐，干活不累</a>
                    <a class="floor_goods_price">4.9元</a>
                </li>
                <li class="floor_goods_wrap_li">
                    <a class="floor_goods_img"><img src="../images/medium/gouqi.jpg"></a>
                    <a class="floor_goods_tit">江西 枸杞</a>
                    <a class="floor_goods_txt">增强 免疫力</a>
                    <a class="floor_goods_price">29元</a>
                </li>
                <li class="floor_goods_wrap_li">
                    <a class="floor_goods_img"><img src="../images/medium/dabaitu.jpg"></a>
                    <a class="floor_goods_tit">大白兔 奶糖</a>
                    <a class="floor_goods_txt">让敲代码 ，变的甜蜜</a>
                    <a class="floor_goods_price">19元</a>
                </li>
                <li class="floor_goods_wrap_li">
                    <a class="floor_goods_img"><img src="../images/medium/juzi.jpg"></a>
                    <a class="floor_goods_tit">江西 柑橘</a>
                    <a class="floor_goods_txt">一流品质， 回味无穷</a>
                    <a class="floor_goods_price">29元</a>
                </li>
                <div style="clear:both;"></div>
            </ul>
        </div>
    </div>
</main>


<footer>
    <div id="foot_box">
        <div id="foot_wrap">
            <div class="foot_top">
                <ul>
                    <li>1小时上门服务</li>
                    <li class="font_top_i">|</li>
                    <li>7天无理由退货</li>
                    <li class="font_top_i">|</li>
                    <li>15天免费换货</li>
                    <li class="font_top_i">|</li>
                    <li>满150元包邮</li>
                    <li class="font_top_i">|</li>
                    <li>520余家售后网点</li>
                </ul>
            </div>
            <div class="foot_bottom">
                <div class="foot_bottom_l">
                    <dl>
                        <dt>帮助中心</dt>
                        <dd>购物指南</dd>
                        <dd>支付方式</dd>
                        <dd>配送方式</dd>
                    </dl>
                    <dl>
                        <dt>服务支持</dt>
                        <dd>售后政策</dd>
                        <dd>自助服务</dd>
                        <dd>相关下载</dd>
                    </dl>
                    <dl>
                        <dt>18软件03购物商城</dt>
                        <dd>18软件03购物商城</dd>
                        <dd>服务网点</dd>
                        <dd>预约亲临到店服务</dd>
                    </dl>
                    <dl>
                        <dt>关注我们</dt>
                        <dd>新浪微博</dd>
                        <dd>18软件03部落</dd>
                        <dd>官方微信</dd>
                    </dl>
                </div>
                <div class="foot_bottom_r">
                    <a>400-100-5678</a>
                    <a>周一至周日 8:00-18:00</a>
                    <a>（仅收市话费）</a>
                    <span> 24小时在线客服</span>
                </div>
            </div>
        </div>
        <div class="foot_note_box">
            <div class="foot_note_wrap">
                <div class="foot_note_con">
                    <span class="foot_logo"><img src="img/shoplogo.jpg" width="38px" height="38px"></span>
                    <span class="foot_note_txt">
							<a>18软件03购物商城</a><h>|</h><a>15A522</a><h>|</h><a>尬聊</a><h>|</h><a>多看书城</a><h>|</h><a>软件后院</a><h>|</h><a>软件天猫店</a><h>|</h><a>软件淘宝直营店</a><h>|</h><a>应用联盟</a><h>|</h><a>问题反馈</a><h>|</h><a>Select Region</a>
						    <a> 5555555号</a>
						</span>
                </div>

            </div>
        </div>
    </div>
</footer>


<script type="text/javascript" src="js/xiaomi.js"></script>

</body>
</html>
