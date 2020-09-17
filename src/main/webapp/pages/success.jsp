<%--
  Created by IntelliJ IDEA.
  User: FuJialuo
  Date: 2020/4/20
  Time: 17:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>成功页面</title>
    <%--    bootstrap--%>
    <link rel="stylesheet" href="../static/plugins/bootstrap/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="../static/plugins/bootstrap/css/bootstrap.min.css">
    <script src="../static/plugins/jQuery/jquery-2.2.3.min.js"></script>
    <script src="../static/plugins/bootstrap/js/bootstrap.min.js"></script>
    <style>
        h1{
            padding-top: 100px;
        }
    </style>
</head>
<body>
    <jsp:include page="header.jsp"></jsp:include>
    <h1>祝贺你，成功完成操作！</h1>
</body>
<script>
    $(function () {
        // window.location.reload();
    })
</script>
</html>
