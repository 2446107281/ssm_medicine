<%@ page import="java.text.DateFormat" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="com.bishe.domain.Medicine" %>
<!--<!DOCTYPE html>-->
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>药店管理系统 | 编辑用户</title>

</head>
<body class="hold-transition sidebar-mini">
<jsp:include page="blank_houtai.jsp" flush="true"/>
<!-- Site wrapper -->
<div class="wrapper">

  <!-- Content Wrapper. 包含页面内容 -->
  <div class="content-wrapper">
    <!-- 内容标题（页面标题） -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>编辑用户</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item active">编辑用户</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- 主体内容 -->
    <form action="/account/AccountEdit_action" method="post">
      <section class="content">
        <div class="row">
          <div class="col-md-6">
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">常规</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse" title="折叠">
                    <i class="fas fa-minus"></i>
                  </button>
                </div>
              </div>
              <div class="card-body">
                  <div class="form-group">
                      <input type="hidden" name="id" class="form-control" value="${requestScope.account.id}">
                  </div>
                <div class="form-group">
                  <label for="inputusername">用户名(username)</label>
                  <input type="text" id="inputusername" name="username" class="form-control" value="${requestScope.account.username}">
                </div>
                    <div class="form-group">
                      <label for="inputpassword">用户密码:</label>
                      <input type="text" id="inputpassword" name="password" class="form-control" value="${requestScope.account.password}">
                    </div>
                  <div class="form-group">
                      <label for="inputname">用户姓名:</label>
                      <input type="text" id="inputname" name="name" class="form-control" value="${requestScope.account.name}">
                  </div>
                <!-- Date -->

<%--                <div class="form-group">--%>
<%--                  <label>药品生产日期：</label>--%>
<%--                  <div class="input-group date" id="inputM_date" data-target-input="nearest">--%>
<%--                    <input type="datetime-local" class="form-control datetimepicker-input" data-target="#reservationdate" name="M_date" />--%>
<%--                    <div class="input-group-append" data-target="#reservationdate" data-toggle="datetimepicker">--%>
<%--                      <div class="input-  group-text"><i class="fa fa-calendar"></i></div>--%>
<%--                    </div>--%>
<%--                  </div>--%>
<%--                </div>--%>

                <div class="form-group">
                  <label for="inputtel">电话</label>
                  <input type="text" id="inputtel" name="tel" class="form-control" value="${requestScope.account.tel}"/>
                </div>
                <div class="form-group">
                  <label for="inputM_classifiy">性别(待完成)</label>
                  <select id="inputM_classifiy" name="M_classifiy" class="form-control custom-select">
                    <option>男</option>
                    <option>女</option>
                  </select>
                </div>
                <div class="form-group">

                  <label for="inputemail">Email</label>
                  <input type="text" id="inputemail" name="email" class="form-control" value="${requestScope.account.email}"/>
                </div>
                <div class="form-group">
                  <label for="inputaccount_status">账户是否为管理员等(待完成)</label>
                  <input type="text" id="inputaccount_status" name="account_status" class="form-control" value="${requestScope.account.account_status}">
                </div>
                  <div class="row">
                      <div class="col-12">
                          <a href="/pages/account_look" class="btn btn-secondary">取消(待完成)</a>
                          <input type="submit" value="保存编辑" class="btn btn-success float-right">
                          <a href="/pages/account_deleteAction?id=${requestScope.account.id}" class="btn btn-secondary float-right">删除(待完成)</a>
                      </div>
                  </div>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>

        </div>
      </section>
      <!-- /.content -->
    </form>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

</div>
</body>
</html>
