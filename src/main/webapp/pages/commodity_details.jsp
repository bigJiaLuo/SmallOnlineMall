<%@ page contentType="text/html; charset=utf-8" language="java" isELIgnored="false" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>商品详情</title>

    <%--    bootstrap--%>
    <link rel="stylesheet" href="../static/plugins/bootstrap/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="../static/plugins/bootstrap/css/bootstrap.min.css">
    <script src="../static/plugins/jQuery/jquery-2.2.3.min.js"></script>
    <script src="../static/plugins/bootstrap/js/bootstrap.min.js"></script>


    <style>
        #img {
            width: 400px;
            height: 500px;
        }
        #imgDiv{
            margin: auto;
            padding: auto;
        }
        main{
            padding-top: 100px;
        }
    </style>
</head>
<body>

<%--   头部--%>
<jsp:include page="header.jsp"></jsp:include>
<main class="row">
    <div id="left" class="col-md-6">
        <div id="imgDiv">
            <!--                放置图片-->
            <img id="img" src="${pageContext.request.contextPath}/${goods_one.picNumber}"/>

        </div>

    </div>
    <div id="right" class="col-md-6">
        <!--            放置商品参数-->
        <h3>${goods_one.GName}</h3>
        <p>${goods_one.GIntroduction}</p>
        <h5>￥${goods_one.price} 价格</h5>
<%--        等待登录用户--%>
        <form id="form" action="#" method="post">
           <select>
               <option>数目：</option>
               <option>1</option>
               <option>2</option>
           </select>
            <button id="btn_sub" type="button" >加入购物车</button>
        </form>
    </div>
</main>
<footer>
</footer>

<script>
    $(function () {
    //    加入购物车，事件
        $("#btn_sub").click(function () {
            //获取选中数目
            var count = $("select option:selected").val();
           // data中 包含 用户现有购物数量，刷新购物车数量
           $.post("${pageContext.request.contextPath}/shoppingCart/${goods_one.gid}/${user.uid}/"+count+"/addGoods.do",$("#form").serialize(),function (data) {
               //！注意使用text方法，替换文本内容
               $("#shoppingCartCount").text("购物车（"+data.shoppingCartCount+")");
           });

        });


    })
</script>
</body>
</html>
