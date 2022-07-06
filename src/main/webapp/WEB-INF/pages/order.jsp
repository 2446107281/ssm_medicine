<!--<!DOCTYPE html>-->
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>药店管理系统 | 订单管理</title>
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
<%--  <%--%>
<%--    if (!session.getAttribute("account_id").equals(3)){--%>
<%--    out.println("<jsp:include page=\"blank_houtai.jsp\" flush=\"true\"/>");--%>
<%--    }else--%>
<%--  {--%>
<%--    out.println("<jsp:include page=\"blank.jsp\" flush=\"true\"/>");--%>
<%--  }%>--%>
<jsp:include page="blank_houtai.jsp" flush="true"/>
  <!-- Content Wrapper. 包含页面内容 -->
  <div class="content-wrapper">
    <!-- 内容标题（页面标题） -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>订单</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item active">全部订单</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- 主体内容 -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">全部订单</h3>

                <div class="card-tools">
                  <div class="input-group input-group-sm" style="width: 150px;">

                    <div class="input-group-append">
                      <button type="submit" class="btn btn-default">
                        <i class="fas fa-search"></i>
                      </button>
                    </div>
                  </div>
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body table-responsive p-0" style="height: 700px;">
                <table class="table table-head-fixed text-nowrap">
                  <thead>
                    <tr>
                      <th >编号</th>
                      <th>药品名称</th>
                      <th>生产的厂家</th>
                      <th>购买的单价</th>
                      <th>购买的数量</th>
                      <th>功能</th>
                    </tr>
                  </thead>
                  <tbody>
                  <c:forEach begin="1" end="${requestScope.orders.size()}" var="i" >
                    <tr>
                      <td>
                      ${requestScope.orders[i-1].o_id}
                      </td>
                      <td>${requestScope.orders[i-1].o_name}</td>
                      <td><span class="badge badge-success">${requestScope.Medicine_manufacturers_str[i-1]}</span></td>
                      <td><span class="badge badge-success">${requestScope.orders[i-1].o_price}</span></td>
                      <td><span class="badge badge-success">${requestScope.orders[i-1].o_much}</span></td>
                      <td>
                        <a href="/order/order_detail?id=${requestScope.orders[i-1].o_id}" class="btn btn-primary btn-sm">查看详情</a>
<%--                        <a href="#" class="btn btn-primary btn-sm">申请开票</a>--%>
                      </td>
                    </tr>
                  </c:forEach>
                  </tbody>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
</div>
<!-- ./wrapper -->

</body>
</html>
