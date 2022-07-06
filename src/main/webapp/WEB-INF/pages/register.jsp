<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--<!DOCTYPE html>-->
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>药店管理系统 | 注册页面</title>

  <!-- 离线 Google 字体: Source Sans Pro -->
  <link rel="stylesheet" href="../../dist/css/google.css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../../plugins/fontawesome-free/css/all.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="../../plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- 主题样式 -->
  <link rel="stylesheet" href="../../dist/css/adminlte.min.css">
</head>
<body class="hold-transition register-page">
<div class="register-box">
  <div class="register-logo">
    <a href="../../index2.html"><b>药店管理系统</b>注册</a>
  </div>

  <div class="card">
    <div class="card-body register-card-body">
      <p class="login-box-msg">注册新会员</p>

      <form action="<c:url value="/account/register_action"/>" method="post">
        <div class="input-group mb-3">
          <input type="text" class="form-control" name="account_id" readonly="readonly">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>

        <div class="input-group mb-3">
          <label>
            <input type="text" class="form-control" placeholder="用户名" name="account_username">
          </label>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-user"></span>
            </div>
          </div>
        </div>

        <div class="input-group mb-3">
          <input type="password" class="form-control" placeholder="密码" name="account_password">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="password" class="form-control" placeholder="再次输入密码" name="account_password_again">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="text" class="form-control" placeholder="昵称/姓名" name="account_name">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="text" class="form-control" placeholder="电话" name="account_tel">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>
<%--        <div class="input-group mb-3">--%>
<%--          <input type="text" class="form-control" placeholder="性别" name="account_gender">--%>
<%--          <div class="input-group-append">--%>
<%--            <div class="input-group-text">--%>
<%--              <span class="fas fa-envelope"></span>--%>
<%--            </div>--%>
<%--          </div>--%>
<%--        </div>--%>

        <div class="form-group">
          <label for="inputaccount_gender">性别</label>
          <select id="inputaccount_gender" name="account_gender" class="form-control custom-select" >
            <option>男</option>
            <option>女</option>
          </select>
        </div>


        <div class="input-group mb-3">
          <input type="text" class="form-control" placeholder="出生日期" name="account_date" placeholder="日期格式:yyyy-mm-dd">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="email" class="form-control" placeholder="email" name="account_email">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="col-8">
            <div class="icheck-primary">
              <input type="checkbox" id="agreeTerms" name="terms" value="同意">
              <label for="agreeTerms">
               我同意这些<a href="#">条款</a>
              </label>
            </div>
          </div>
          <!-- /.col -->
          <div class="col-4">
            <button type="submit" class="btn btn-primary btn-block">注册</button>
          </div>
          <!-- /.col -->
        </div>
      </form>


      <a href="/account/login" class="text-center">我已经有账号了</a>
    </div>
    <!-- /.form-box -->
  </div><!-- /.card -->
</div>
<!-- /.register-box -->

<!-- jQuery -->
<script src="../../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/adminlte.min.js"></script>
</body>
</html>
