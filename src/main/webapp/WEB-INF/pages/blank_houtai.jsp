<!--<!DOCTYPE html>-->
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>药店管理系统</title>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<%--引入白版--%>
  <jsp:include page="blank.jsp" flush="true"/>
<!-- 加入主侧边栏容器_index-->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
  <!-- 品牌 Logo -->
  <a href="../../index.html" class="brand-link">

    <%--            左上角 的logo--%>
    <img src="../../dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
         style="opacity: .8">
    <span class="brand-text font-weight-light">药店管理系统</span>
  </a>

  <!-- Sidebar -->
  <div class="sidebar">
    <!-- 侧边栏用户面板（可选） -->
    <div class="user-panel mt-3 pb-3 mb-3 d-flex">
      <div class="image">
        <img src="../../dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="用户头像">
      </div>
      <div class="info">
        <%--                    点击用户头像跳转到用户管理界面--%>
        <a href="/account/account_detail?id=${sessionScope.account_id}" class="d-block">${sessionScope.account_name}</a>
      </div>
    </div>
    <!-- 侧边栏菜单 -->
    <nav class="mt-2">
      <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
          data-accordion="false">
        <!-- 使用 .nav-icon 类添加图标，
             或使用 font-awesome 或其他任何图标字体库 -->


<%--        <%--%>
<%--          if (!session.getAttribute("account_id").equals(3)){--%>
<%--            out.println("<jsp:include page=\"blank_houtai.jsp\" flush=\"true\"/>");--%>
<%--          }%>--%>
<%--        根据传来的账户id判断是否显示功能--%>
        <c:if test="${sessionScope.account_status!=3}">
        <li class="nav-item menu-is-opening menu-open">
          <a href="#" class="nav-link">
            <i class="nav-icon fas fa-tree"></i>
            <p>
                药品操作
              <i class="fas fa-angle-left right"></i>
            </p>
          </a>
          <%--          购买药品的具体分类--%>
          <ul class="nav nav-treeview">
        <li class="nav-item">
          <a href="/medicine/medicine_add" class="nav-link">
            <i class="far fa-circle nav-icon"></i>
            <p>添加药品</p>
          </a>
        </li>
        <li class="nav-item">
          <a href="/medicine/medicines" class="nav-link">
            <i class="far fa-circle nav-icon"></i>
            <p>药品展示</p>
          </a>
        </li>
        <li class="nav-item">
        </li>
        </ul>

        <li class="nav-item menu-is-opening menu-open">
          <a href="#" class="nav-link">
            <i class="nav-icon fas fa-tree"></i>
            <p>
              用户操作
              <i class="fas fa-angle-left right"></i>
            </p>
          </a>
          <%--          购买药品的具体分类--%>
          <ul class="nav nav-treeview">
            <li class="nav-item">
            <a href="/account/account_look" class="nav-link">
              <i class="far fa-circle nav-icon"></i>
              <p>用户管理</p>
            </a>
            </li>
            <li class="nav-item">
              <a href="/account/register" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>添加用户</p>
              </a>
            </li>
          </ul>

<%--        厂家操作--%>
        <li class="nav-item menu-is-opening menu-open">
          <a href="#" class="nav-link">
            <i class="nav-icon fas fa-tree"></i>
            <p>
              厂商操作
              <i class="fas fa-angle-left right"></i>
            </p>
          </a>
            <%--          购买药品的具体分类--%>
          <ul class="nav nav-treeview">
            <li class="nav-item">
              <a href="/manufacturer/manufacturerlookall" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>厂商管理</p>
              </a>
            </li>
            <li class="nav-item">
              <a href="/manufacturer/manufactureradd" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>添加厂商</p>
              </a>
            </li>
          </ul>
            <li class="nav-item">
                <a href="/pandian/pandian" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>盘点</p>
                </a>
            </li>
        </c:if>

        <li class="nav-item">
          <a href="/order/order?id=${sessionScope.account_id}" class="nav-link">
            <i class="far fa-circle nav-icon"></i>
            <p>订单</p>
          </a>
        </li>

        <li class="nav-item menu-is-opening menu-open">
          <a href="#" class="nav-link active">
            <i class="nav-icon fas fa-tree"></i>
            <p>
              购买药品
              <i class="fas fa-angle-left right"></i>
            </p>
          </a>
<%--          购买药品的具体分类--%>
          <ul class="nav nav-treeview">
            <li class="nav-item">
              <a href="/medicine/ReqMedDetails_action?M_class=XinXueGuanKe" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>心血管科</p>
              </a>
            </li>
            <li class="nav-item">
              <a href="/medicine/ReqMedDetails_action?M_class=XiaoHuaXiTong" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>消化系统</p>
              </a>
            </li>
            <li class="nav-item">
              <a href="/medicine/ReqMedDetails_action?M_class=RiChangYongYao" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>日常用药</p>
              </a>
            </li>
            <li class="nav-item">
              <a href="/medicine/ReqMedDetails_action?M_class=PiFuKeYao" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>皮肤科用药</p>
              </a>
            </li>
            <li class="nav-item">
              <a href="/medicine/ReqMedDetails_action?M_class=GanDanYiLei" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>肝胆胰类</p>
              </a>
            </li>
            <li class="nav-item">
              <a href="/medicine/ReqMedDetails_action?M_class=HuXiKeLei" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>呼吸科药</p>
              </a>
            </li>
            <li class="nav-item">
              <a href="/medicine/ReqMedDetails_action?M_class=FengShiguanjie" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>风湿关节</p>
              </a>
            </li>
            <li class="nav-item">
              <a href="/medicine/ReqMedDetails_action?M_class=YiLiaoQiCai" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>医疗器材</p>
              </a>
            </li>
            <li class="nav-item">
              <a href="/medicine/ReqMedDetails_action?M_class=QiTa" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>其他</p>
              </a>
            </li>
          </ul>
        </li>
        <%--          <li class="nav-item">--%>
        <%--            <a href="/pages/shopping_cart" class="nav-link">--%>
        <%--              <i class="far fa-circle nav-icon"></i>--%>
        <%--              <p>购物车</p>--%>
        <%--            </a>--%>
        <%--          </li>--%>

      </ul>
      </li>
    </nav>
    <!-- /.sidebar-menu -->
  </div>
  <!-- /.sidebar -->
</aside>
</body>
</html>
