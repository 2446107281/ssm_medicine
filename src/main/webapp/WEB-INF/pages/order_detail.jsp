<!--<!DOCTYPE html>-->
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>药品管理系统| 订单详情</title>
</head>
<body class="hold-transition sidebar-mini">
<jsp:include page="blank_houtai.jsp" flush="true"/>
<div class="wrapper">
  <!-- Content Wrapper. 包含页面内容 -->
  <div class="content-wrapper" style="min-height: 1604.8px;">
    <!-- 内容标题（页面标题） -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>订单详情</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item active">订单详情</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- 主体内容 -->
    <section class="content">

      <!-- Default box -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">订单编号:${requestScope.order.o_id}</h3>

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
            <div class="col-12 col-md-12 col-lg-8 order-2 order-md-1">
              <h3 class="text-primary"><i class="fas fa-paint-brush"></i>药品名称:${requestScope.order.o_name}</h3>
              <p class="text-muted">药品详细介绍</p>
              <p class="text-muted">${requestScope.medicine.m_explain}</p>
              <br>
              <div class="row">
                <div class="text-sm col-12 col-sm-4 ">
                  <div class="info-box bg-light">
                    <div class="info-box-content">
                      <span class="info-box-text text-center text-muted"> 生产工厂编号:</span>
                      <span class="info-box-number text-center text-muted mb-0">${requestScope.order.o_manufacturer}</span>
                    </div>
                  </div>
                </div>
                <div class="text-sm col-12 col-sm-4 ">
                  <div class="info-box bg-light">
                    <div class="info-box-content">
                      <span class="info-box-text text-center text-muted">药品储量:</span>
                      <span class="info-box-number text-center text-muted mb-0">${requestScope.medicine.m_in_much-requestScope.medicine.m_out_much}</span>
                    </div>
                  </div>
                </div>
                <div class="text-sm col-12 col-sm-4 ">
                  <div class="info-box bg-light">
                    <div class="info-box-content">
                      <span class="info-box-text text-center text-muted">是否处方药:</span>
                      <span class="info-box-number text-center text-muted mb-0">${requestScope.medicine.m_classifiy}</span>
                    </div>
                  </div>
                </div>
              </div>

              <h5 class="mt-5 text-muted">订单信息</h5>
              <ul class="list-unstyled">
                <li>
                  <span class="btn-link text-secondary">创建时间:<fmt:formatDate value="${requestScope.order.o_time}" pattern='yyyy-MM-dd'/></span>
                </li>
                <li>
                <span class="btn-link text-secondary">购买单价:${requestScope.order.o_price}</span>
                </li>
                <li>
                <span class="btn-link text-secondary">购买数量:${requestScope.order.o_much}</span>
                </li>
              </ul>
<%--              <h5 class="mt-5 ">总价(待完成):</h5>--%>
            </div>
          </div>
        </div>
        <!-- /.card-body -->
      </div>
      <!-- /.card -->

    </section>
    <!-- /.content -->
  </div>
</div>
  <!-- /.content-wrapper -->
</body>
</html>
