<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>药店管理系统 | 账户详细信息</title>

</head>
<body class="hold-transition sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper">
  <jsp:include page="blank_houtai.jsp" flush="true"/>
  <!-- Content Wrapper. 包含页面内容 -->
  <div class="content-wrapper">
    <!-- 内容标题（页面标题） -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>用户详情</h1>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- 主体内容 -->
    <section class="content">

      <!-- Default box -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">用户id:${requestScope.account.id}</h3>

          <div class="card-tools">
            <button type="button" class="btn btn-tool" data-card-widget="collapse" title="折叠">
              <i class="fas fa-minus"></i>
            </button>
            <button type="button" class="btn btn-tool" data-card-widget="remove" title="移除">
              <i class="fas fa-times"></i>
            </button>
          </div>
        </div>
        <div class="card-body">
          <div class="row">
            <div class="col-12 col-md-12 col-lg-7 order-2 order-md-1">
            <h3 class="text-primary"><i class="fas fa-paint-brush"></i>你好:${requestScope.account.username}</h3>
            <p class="text-muted">用户介绍.....</p>
            <br>
            <div class="text-muted">
              <p class="text-sm">账户创建时间
                <b class="d-block"><fmt:formatDate value="${requestScope.account.date}" pattern='yyyy-MM-dd'/></b>
              </p>
              <p class="text-sm">账户状态(管理员/用户):
                <b class="d-block">
<%--                  ${requestScope.account.account_status}--%>
                    <c:if test="${requestScope.account.account_status!=3}">管理员</c:if>
                    <c:if test="${requestScope.account.account_status==3}">用户</c:if>
                </b>
              </p>
            </div>
              <div class="row">
                <div class="col-12 col-sm-4">
                  <div class="info-box bg-light">
                    <div class="info-box-content">
                      <span class="info-box-text text-center text-muted">性别</span>
                      <span class="info-box-number text-center text-muted mb-0">
                        <c:if test="${requestScope.account.gender==1}">
                          男
                        </c:if>
                        <c:if test="${requestScope.account.gender==0}">
                          女
                        </c:if>
                      </span>
                    </div>
                  </div>
                </div>
                <div class="col-12 col-sm-4">
                  <div class="info-box bg-light">
                    <div class="info-box-content">
                      <span class="info-box-text text-center text-muted">电话</span>
                      <span class="info-box-number text-center text-muted mb-0">${requestScope.account.tel}</span>
                    </div>
                  </div>
                </div>
                <div class="col-12 col-sm-4">
                  <div class="info-box bg-light">
                    <div class="info-box-content">
                      <span class="info-box-text text-center text-muted">email</span>
                      <span class="info-box-number text-center text-muted mb-0">${requestScope.account.email}</span>
                    </div>
                  </div>
                </div>
              </div>
            <div class="text-center mt-5 mb-3">
              <a href="/account/account_edit?id=${requestScope.account.id}" class="btn btn-sm btn-warning">修改用户</a>
            </div>
          </div>
            <div class="col-12 col-md-12 col-lg-5 order-1 order-md-2">

              <div class="row">
                <div class="col-12">
                  <h4>订单</h4>
                  <c:forEach begin="0" end="${requestScope.orders.size()}" var="i">
                    <div class="post">
                        <span class="username">
                          <a href="/order/order_detail?id=${requestScope.orders[i].o_id}">订单编号:${requestScope.orders[i].o_id}</a>
                        </span>
                        <span class="description">订单创建时间:<fmt:formatDate value="${requestScope.orders[i].o_time}" pattern='yyyy-MM-dd'/></span><br>
                      <!-- /.user-block -->
                      <p class="text-sm">
                        本次订单购买的药品是:${requestScope.orders[i].o_name}<br>
                        药品生产的厂家是:${requestScope.orders[i].o_manufacturer}<br>
                        药品的单价是:${requestScope.orders[i].o_price}<br>
                        购买的药品的数量是:${requestScope.orders[i].o_much}<br>
                      </p>
                    </div>
                  </c:forEach>
                </div>
              </div>
            </div>

          </div>
        </div>
        <!-- /.card-body -->
      </div>
      <!-- /.card -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

</div>
<!-- ./wrapper -->

</body>
</html>
