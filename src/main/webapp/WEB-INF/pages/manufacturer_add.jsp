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
  <title>药店管理系统 | 添加新药厂</title>

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
            <h1>添加新药厂</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item active">添加新药厂</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- 主体内容 -->
    <form action="ManuFacturerAdd_action" method="post">
      <section class="content">
        <div class="row">
          <div class="col-md-6">
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">常规</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse" title="折叠">
                    <i class="fas fa-minus"></i>
                    <input type="hidden" id="inputMF_id" name="MF_id" class="form-control">
                  </button>
                </div>
              </div>
              <div class="card-body">
                <div class="form-group">
                  <label for="inputMF_Name">药厂名称</label>
                  <input type="text" id="inputMF_Name" name="MF_name" class="form-control" >
                </div>
                    <div class="form-group">
                      <label for="inputMF_address">药厂地址</label>
                      <input type="text" id="inputMF_address" name="MF_address" class="form-control" >
                    </div>

                <div class="form-group">
                  <label for="inputMF_person">药厂联系人</label>
                  <input type="text" id="inputMF_person" name="MF_person" class="form-control">
                </div>
                <div class="form-group">
                  <label for="inputMF_phonenumber">药厂联系电话</label>
                  <input type="text" id="inputMF_phonenumber" name="MF_phonenumber" class="form-control">
                </div>
                <div class="form-group">
                  <label for="inputMF_email">药厂email</label>
                  <input type="text" id="inputMF_email" name="MF_email" class="form-control" >
                </div>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>

        </div>
        <div class="row">
          <div class="col-12">
            <a href="/account/index_houtai" class="btn btn-secondary">取消</a>
            <input type="submit" value="保存编辑" class="btn btn-success float-right">
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
