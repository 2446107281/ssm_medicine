<!--<!DOCTYPE html>-->
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>药店管理系统</title>

  <!-- 离线 Google 字体: Source Sans Pro -->
  <link rel="stylesheet"
        href="../../dist/css/google.css?family=Source+Sans+Pro:300,400,400i,700&display="
        type="text/css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../../plugins/fontawesome-free/css/all.min.css" type="text/css">

  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdn.bootcss.com/ionicons/2.0.1/css/ionicons.min.css" type="text/css">
  <!-- Tempusdominus Bootstrap 4 -->
  <%--  <link rel="stylesheet" charset="utf-8" href="./plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.css" type="text/css">--%>
  <!-- iCheck -->
  <link rel="stylesheet" href=" <%=request.getContextPath()%>/plugins/icheck-bootstrap/icheck-bootstrap.min.css"
        type="text/css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="../../plugins/jqvmap/jqvmap.min.css" type="text/css">
  <!-- 主题样式 -->
  <link rel="stylesheet" href="../../dist/css/adminlte.min.css" type="text/css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="../../plugins/overlayScrollbars/css/OverlayScrollbars.min.css" type="text/css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="../../plugins/daterangepicker/daterangepicker.css" type="text/css">
  <!-- summernote -->
  <link rel="stylesheet" href="../../plugins/summernote/summernote-bs4.min.css" type="text/css">
</head>

<body class="hold-transition sidebar-mini layout-fixed">
  <!-- Preloader  左上角logo -->
  <div class="preloader flex-column justify-content-center align-items-center">
    <%--        ????????????????????--%>
    <img class="animation__shake" src="../../dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60">
  </div>

  <!-- 导航栏 -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!--上面的 左侧导航栏链接 -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="<c:url value="/account/index"/>" class="nav-link">主页</a>
      </li>

    </ul>

    <!-- 上面的 右侧导航栏链接 -->
    <ul class="navbar-nav ml-auto">
      <!-- Navbar Search -->
<%--      <li class="nav-item">--%>
<%--        <a class="nav-link" data-widget="navbar-search" href="#" role="button">--%>
<%--          <i class="fas fa-search"></i>--%>
<%--        </a>--%>
<%--        <div class="navbar-search-block">--%>
<%--          <form class="form-inline">--%>
<%--            <div class="input-group input-group-sm">--%>
<%--              <input class="form-control form-control-navbar" type="search" placeholder="搜索(待完成)"--%>
<%--                     aria-label="Search">--%>
<%--              <div class="input-group-append">--%>
<%--                <button class="btn btn-navbar" type="submit">--%>
<%--                  <i class="fas fa-search"></i>--%>
<%--                </button>--%>
<%--                <button class="btn btn-navbar" type="button" data-widget="navbar-search">--%>
<%--                  <i class="fas fa-times"></i>--%>
<%--                </button>--%>
<%--              </div>--%>
<%--            </div>--%>
<%--          </form>--%>
<%--        </div>--%>
<%--      </li>--%>

<%--      购物车--%>
      <li class="nav-item">
        <a class="nav-link"  href="/shoppingcart/shopping_cart?S_A_id=${sessionScope.account_id}" role="button">
          <i class="fas fa-shopping-cart"></i>
        </a>
      </li>


    </ul>
  </nav>
  <!-- /.navbar -->

<!-- ./wrapper -->

<!-- jQuery -->
<script src="../../plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="../../plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- 解决使用 Bootstrap 提示工具与 jQuery UI 提示工具冲突 -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="../../plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="../../plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script src="../../plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="../../plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script src="../../plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="../../plugins/moment/moment.min.js"></script><script src="../../plugins/moment/locale/zh-cn.js"></script>
<script src="../../plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="../../plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="../../plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="../../plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/adminlte.js"></script>
<!-- 用于演示 AdminLTE  -->
<script src="../../dist/js/demo.js"></script>
<!-- AdminLTE 仪表盘演示（仅用于演示） -->
<script src="../../dist/js/pages/dashboard.js"></script>

  <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
  <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
  <!-- 向购物车添加药品时添加数量的js-->
<script src="../../dist/js/myaccountnumber.js"></script>

</body>
</html>
