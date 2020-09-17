<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: FuJialuo
  Date: 2020/4/10
  Time: 9:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html lang="ZH-CN">
<head>
    <meta charset="UTF-8">
    <title>网上购物商城</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/shop/css/xiaomi.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/shop/js/jquery-2.1.4.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/shop/js/jquery.animate-colors-min.js"></script>
    <script src="${pageContext.request.contextPath}/static/plugins/bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/plugins/bootstrap/css/bootstrap-theme.min.css">
    <style>
        main {
            padding-top: 50px;
        }

        #main_show_box img {
            width: 160px;
            height: 160px;
        }
        #suiguo img{
            width: 234px;
            height: 600px;
        }
    </style>
</head>
<body>
<jsp:include page="pages/header.jsp"></jsp:include>
<main>
    <div id="main_head_box">
        <div id="menu_wrap">
            <div id="menu_logo">
                <img src="${pageContext.request.contextPath}/static/images/logo.jpg">
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
                        <img src="${pageContext.request.contextPath}/static/images/medium/mi4!160x110.jpg">
                        <p class="menu_content_tit">大米手机4</p>
                        <p class="menu_content_price">1499元起</p>
                    </div>
                    <span class="menu_content_line"></span>
                    <div class="menu_content">
                        <img src="${pageContext.request.contextPath}/static/images/medium/minote!160x110.jpg">
                        <p class="menu_content_tit">大米NOTE标准版</p>
                        <p class="menu_content_price">1999元起</p>
                    </div>
                    <span class="menu_content_line"></span>
                    <div class="menu_content">
                        <img src="${pageContext.request.contextPath}/static/images/medium/minotepro!160x110.jpg">
                        <p class="menu_content_tit">大米NOTE顶配版</p>
                        <p class="menu_content_price">2999元起</p>
                    </div>
                </li>
                <li id="hongmiphone">
                    <div class="menu_content">
                        <img src="${pageContext.request.contextPath}/static/images/medium/dami_160_110.jpg">
                        <p class="menu_content_tit">江西 大米</p>
                        <p class="menu_content_price">99元</p>
                    </div>
                    <span class="menu_content_line"></span>
                    <div class="menu_content">
                        <img src="${pageContext.request.contextPath}/static/images/medium/juzi_160_110.jpg">
                        <p class="menu_content_tit">江西 橘子</p>
                        <p class="menu_content_price">29元</p>
                    </div>
                    <span class="menu_content_line"></span>
                    <div class="menu_content">
                        <img src="${pageContext.request.contextPath}/static/images/medium/dabaitu_160_110.jpg">
                        <p class="menu_content_tit">大白兔奶糖</p>
                        <p class="menu_content_price">29元</p>
                    </div>
                </li>
                <li id="pingban">
                    <div class="menu_content">
                        <img src="${pageContext.request.contextPath}/static/images/medium/yifu1_160_110.jpg">
                        <p class="menu_content_tit">女 牛仔衣</p>
                        <p class="menu_content_price">99元</p>
                    </div>
                    <span class="menu_content_line"></span>
                    <div class="menu_content">
                        <img src="${pageContext.request.contextPath}/static/images/medium/yifu2_160_110.jpg">
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
                            <a><img src="${pageContext.request.contextPath}/static/images/small/minote.jpg"></a><a >大米NOTE</a><a href="${pageContext.request.contextPath}/goods/20"><span>选购</span></a>
                        </li>
                        <li>
                            <a><img src="${pageContext.request.contextPath}/static/images/small/mi4.jpg"></a><a>大米手机4</a><a href="${pageContext.request.contextPath}/goods/3"><span>选购</span></a>
                        </li>
                    </ul>
                    <ul class="banner_menu_content_ul">
                        <li>
                            <a><img src="${pageContext.request.contextPath}/static/images/small/hongmi2.jpg"/> </a><a>红米2</a><a href="${pageContext.request.contextPath}/goods/21"><span>选购</span></a>
                    </ul>
                </div>
            </li>
            <li>
                <a>美食</a>
                <a class="banner_menu_i">&gt;</a>
                <div class="banner_menu_content" style="width: 600px; top: -62px;">
                    <ul class="banner_menu_content_ul">
                        <li>
                            <a><img src="${pageContext.request.contextPath}/static/images/small/dami_40_40.jpg"></a><a>江西大米</a><a href="${pageContext.request.contextPath}/goods/2"><span>选购</span></a></li>
                    </ul>
                    <ul class="banner_menu_content_ul">
                        <li>
                            <a><img src="${pageContext.request.contextPath}/static/images/small/dabaitu_40_40.jpg"></a><a>大白兔奶糖</a><a href="${pageContext.request.contextPath}/goods/16"><span>选购</span></a></li>
                    </ul>
                </div>
            </li>
            <li>
                <a>服装</a>
                <a class="banner_menu_i">&gt;</a>
                <div class="banner_menu_content" style="width: 900px; top: -104px;">
                    <ul class="banner_menu_content_ul">
                        <li>
                            <a><img src="${pageContext.request.contextPath}/static/images/small/yifu1_40_40.jpg"></a><a>女上衣</a><a href="${pageContext.request.contextPath}/goods/18"><span>选购</span></a></li>
                        <li>
                            <a><img src="${pageContext.request.contextPath}/static/images/small/yifu2_40_40.jpg"></a><a>男上衣</a><a href="${pageContext.request.contextPath}/goods/19"><span>选购</span></a></li>
                    </ul>
                </div>
            </li>
        </ul>
        <div id="big_banner_pic_wrap">
            <ul id="big_banner_pic">
                <li><img src="${pageContext.request.contextPath}/static/images/large/T1hiDvBvVv1RXrhCrK.jpg"></li>
                <li><img src="${pageContext.request.contextPath}/static/images/large/dabaitu1.jpg"></li>
                <li><img src="${pageContext.request.contextPath}/static/images/large/yifu1.jpg"></li>
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
        <div class="head_other_ad"><img src="${pageContext.request.contextPath}/static/images/large/T184E_BQWT1RXrhCrK.jpg"></div>
        <div class="head_other_ad"><img src="${pageContext.request.contextPath}/static/images/large/T1yvd_BQDT1RXrhCrK.jpg"></div>
        <div class="head_other_ad"><img src="${pageContext.request.contextPath}/static/images/large/T1mahQBmKT1RXrhCrK.jpg"></div>
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
                    <a href="${pageContext.request.contextPath}/goods/4"><img src="${pageContext.request.contextPath}/static/images/medium/T1riKjB7VT1RXrhCrK.jpg"></a>
                    <a>大米电视2/2S 全系列</a>
                    <a>40/48/49/55英寸 现货购买</a>
                </li>
                <li class="floor_goods_wrap_li">
                    <a href="${pageContext.request.contextPath}/goods/5"><img src="${pageContext.request.contextPath}/static/images/medium/T19AbjBCDT1RXrhCrK.jpg"></a>
                    <a>大米平板</a>
                    <a>全球首款 NVIDIA Tegra K1 平板</a>
                </li>
                <li class="floor_goods_wrap_li">
                    <a href="${pageContext.request.contextPath}/goods/6"><img src="${pageContext.request.contextPath}/static/images/medium/T1meZjBCAT1RXrhCrK.jpg"></a>
                    <a>大米盒子增强版 1G</a>
                    <a>首款4K超高清网络机顶盒</a>
                </li>
                <li class="floor_goods_wrap_li">
                    <a href="${pageContext.request.contextPath}/goods/7"><img src="${pageContext.request.contextPath}/static/images/medium/T1tsEgB7DT1RXrhCrK.jpg"></a>
                    <a>全新大米路由器</a>
                    <a>顶配路由器，企业级性能</a>
                </li>
                <li class="floor_goods_wrap_li">
                    <a href="${pageContext.request.contextPath}/goods/8"><img src="${pageContext.request.contextPath}/static/images/medium/T10TJjB5hT1RXrhCrK.jpg"></a>
                    <a>大米头戴式耳机</a>
                    <a>媲美主流千元级头戴耳机</a>
                </li>
                <li class="floor_goods_wrap_li">
                    <a href="${pageContext.request.contextPath}/goods/9"><img src="${pageContext.request.contextPath}/static/images/medium/T1hLhjB_AT1RXrhCrK.jpg"></a>
                    <a>大米插线板</a>
                    <a>3重安全保护，插线板中的艺术品</a>
                </li>
                <li class="floor_goods_wrap_li">
                    <a href="${pageContext.request.contextPath}/goods/10"><img src="${pageContext.request.contextPath}/static/images/medium/T1KDAjBCAT1RXrhCrK.jpg"></a>
                    <a>大米路由器mini</a>
                    <a>主流双频AC智能路由器</a>
                </li>
                <li class="floor_goods_wrap_li">
                    <a href="${pageContext.request.contextPath}/goods/11"><img src="${pageContext.request.contextPath}/static/images/medium/T16eEjBKhT1RXrhCrK.jpg"></a>
                    <a>大米移动电源10000mAh</a>
                    <a>高密度进口电芯，仅名片大小</a>
                </li>
                <li class="floor_goods_wrap_li">
                    <a href="${pageContext.request.contextPath}/goods/12"><img src="${pageContext.request.contextPath}/static/images/medium/T1JnWjBCCT1RXrhCrK.jpg"></a>
                    <a>大米蓝牙耳机</a>
                    <a>2015德国IF大奖，高清通话音质</a>
                </li>
                <li class="floor_goods_wrap_li">
                    <a href="${pageContext.request.contextPath}/goods/13"><img src="${pageContext.request.contextPath}/static/images/medium/T1BsbjBvLT1RXrhCrK.jpg"></a>
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
                <li class="floor_goods_wrap_li" id="suiguo">
                    <a href="${pageContext.request.contextPath}/goods/22"><img  src="${pageContext.request.contextPath}/static/images/medium/suiguo.jpg"></a>
                </li>
                <li class="floor_goods_wrap_li">
                    <a class="floor_goods_img" href="${pageContext.request.contextPath}/goods/2"><img src="${pageContext.request.contextPath}/static/images/large/dabaitu1.jpg"></a>
                    <a class="floor_goods_tit">江西优质大米</a>
                    <a class="floor_goods_txt">不好吃不要钱</a>
                    <a class="floor_goods_price">99元</a>
                </li>


                <li class="floor_goods_wrap_li">
                    <a class="floor_goods_img" href="${pageContext.request.contextPath}/goods/14"><img src="${pageContext.request.contextPath}/static/images/medium/yan.jpg"></a>
                    <a class="floor_goods_tit">江西 食盐</a>
                    <a class="floor_goods_txt">吃了 这种盐，干活不累</a>
                    <a class="floor_goods_price">4.9元</a>
                </li>
                <li class="floor_goods_wrap_li">
                    <a class="floor_goods_img" href="${pageContext.request.contextPath}/goods/15"><img src="${pageContext.request.contextPath}/static/images/medium/gouqi.jpg"></a>
                    <a class="floor_goods_tit">江西 枸杞</a>
                    <a class="floor_goods_txt">增强 免疫力</a>
                    <a class="floor_goods_price">29元</a>
                </li>
                <li class="floor_goods_wrap_li">
                    <a class="floor_goods_img" href="${pageContext.request.contextPath}/goods/16"><img src="${pageContext.request.contextPath}/static/images/medium/dabaitu.jpg"></a>
                    <a class="floor_goods_tit">大白兔 奶糖</a>
                    <a class="floor_goods_txt">让敲代码 ，变的甜蜜</a>
                    <a class="floor_goods_price">19元</a>
                </li>
                <li class="floor_goods_wrap_li">
                    <a class="floor_goods_img" href="${pageContext.request.contextPath}/goods/17"><img src="${pageContext.request.contextPath}/static/images/medium/juzi.jpg"></a>
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
                        <dt>购物商城</dt>
                        <dd>购物商城</dd>
                        <dd>服务网点</dd>
                        <dd>预约亲临到店服务</dd>
                    </dl>
                    <dl>
                        <dt>关注我们</dt>
                        <dd>新浪微博</dd>
                        <dd>部落</dd>
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
                    <span class="foot_logo"><img src="${pageContext.request.contextPath}/static/images/logo.jpg" width="38px" height="38px"></span>
                    <span class="foot_note_txt">
							<a>购物商城</a><h>|</h><a>15A522</a><h>|</h><a>尬聊</a><h>|</h><a>多看书城</a><h>|</h><a>软件后院</a><h>|</h><a>软件天猫店</a><h>|</h><a>软件淘宝直营店</a><h>|</h><a>应用联盟</a><h>|</h><a>问题反馈</a><h>|</h><a>Select Region</a>
						    <a> 5555555号</a>
						</span>
                </div>

            </div>
        </div>
    </div>
</footer>
<%--<img src="${pageContext.request.contextPath}${pageContext.request.contextPath}//static/images/medium/mi4!160x110.jpg">--%>

<script type="text/javascript" src="${pageContext.request.contextPath}/static/shop/js/xiaomi.js"></script>
<script>
    $(function () {
        <%--$.post("${pageContext.request.contextPath}/goods/findAll_index.do", function (data) {--%>
        <%--});--%>
        if(!${sessionScope.get("loginFlag")}){
            alert("操作敏感，请先登录呢！亲！");
        }
    })
</script>
</body>
</html>
