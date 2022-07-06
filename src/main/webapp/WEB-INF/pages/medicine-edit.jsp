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
  <title>药店管理系统 | 编辑药品</title>

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
            <h1>编辑药品</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">首页</a></li>
              <li class="breadcrumb-item active">编辑药品</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- 主体内容 -->
    <form action="MedicineEdit_action" method="post">
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
                  <label for="inputM_Name">药品名称</label>
                  <input type="text" id="inputM_Name" name="M_Name" class="form-control" value="${requestScope.medicine.m_name}">
                </div>
                  <div class="form-group">
                      <label for="inputM_Explain">药品说明</label>
                      <input type="text" id="inputM_Explain" name="M_explain" class="form-control" value="${requestScope.medicine.m_explain}" required="required" data-inputmask-alias="datetime" data-inputmask-inputformat="yyyy-dd-mm" data-mask>
                  </div>
                    <div class="form-group">
                      <label for="inputM_date">药品生产日期</label>
                      <input type="text" id="inputM_date" name="M_date" class="form-control" value="${requestScope.medicine.m_date_str}">
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
                  <label for="inputM_in_much">药品储量</label>
                  <input type="text" id="inputM_reserves" class="form-control" value="${requestScope.medicine.m_in_much-requestScope.medicine.m_out_much}"/>
                </div>
                <div class="form-group">
                  <label for="inputM_classifiy">药品是否为处方药</label>
                  <select id="inputM_classifiy" name="M_classifiy" class="form-control custom-select"  >
                    <option  <c:if test="${requestScope.medicine.m_classifiy=='处方药'}">selected="selected"</c:if> >处方药</option>
                    <option  <c:if test="${requestScope.medicine.m_classifiy=='非处方药'}">selected="selected"</c:if>>非处方药</option>
                  </select>
                </div>
                <div class="form-group">
                  <label for="inputM_class">药品分类</label>
                  <select id="inputM_class" name="M_class" class="form-control custom-select"  >
                    <option value="XinXueGuanKe" <c:if test="${requestScope.medicine.m_class=='XinXueGuanKe'}">selected="selected"</c:if>>心血管科</option>
                    <option value="XiaoHuaXiTong" <c:if test="${requestScope.medicine.m_class=='XiaoHuaXiTong'}">selected="selected"</c:if>>消化系统</option>
                    <option value="RiChangYongYao" <c:if test="${requestScope.medicine.m_class=='RiChangYongYao'}">selected="selected"</c:if>>日常用药</option>
                    <option value="PiFuKeYao" <c:if test="${requestScope.medicine.m_class=='PiFuKeYao'}">selected="selected"</c:if>>皮肤科药</option>
                    <option value="GanDanYiLei" <c:if test="${requestScope.medicine.m_class=='GanDanYiLei'}">selected="selected"</c:if>>肝胆胰类</option>
                    <option value="HuXiKeLei" <c:if test="${requestScope.medicine.m_class=='HuXiKeLei'}">selected="selected"</c:if>>呼吸科类</option>
                    <option value="FengShiguanjie" <c:if test="${requestScope.medicine.m_class=='FengShiguanjie'}">selected="selected"</c:if>>风湿关节</option>
                    <option value="YiLiaoQiCai" <c:if test="${requestScope.medicine.m_class=='YiLiaoQiCai'}">selected="selected"</c:if>>医疗器材</option>
                    <option value="QiTa" <c:if test="${requestScope.medicine.m_class=='QiTa'}">selected="selected"</c:if>>其他</option>
                  </select>
                </div>
                <div class="form-group">
                  <label for="inputM_outprice">药品售价</label>
                  <input type="text" id="inputM_outprice" name="M_outprice" class="form-control" value="${requestScope.medicine.m_outprice}">
                </div>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>

          <div class="col-md-6">
            <div class="card card-secondary">
              <div class="card-header">
                <h3 class="card-title">后台</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse" title="折叠">
                    <i class="fas fa-minus"></i>
                  </button>
                </div>
              </div>
              <div class="card-body">
                <div class="form-group">
                  <label for="inputM_id">药品id</label>
                  <input type="text" id="inputM_id" name="M_id" class="form-control" value="${requestScope.medicine.m_id}" readonly="readonly">
                </div>
                <div class="form-group">
                  <label for="inputM_manufacturer">药品生产厂家</label>
<%--                  <input type="text" id="inputM_manufacturer" name="M_manufacturer" class="form-control" value="${requestScope.medicine.m_manufacturer}">--%>

                  <select id="inputM_manufacturer" name="M_manufacturer" class="form-control custom-select">
                    <c:forEach items="${requestScope.manufacturers}" var="manu">
                      <option value="${manu.MF_id}" <c:if test="${requestScope.M_manufacturer==manu.MF_id}">selected="selected"</c:if>>${manu.MF_name}</option>
                    </c:forEach>
                  </select>

                </div>
                <div class="form-group">
                  <label for="inputM_inprice">药品进价</label>
                  <input type="text" id="inputM_inprice" name="M_inprice"  class="form-control" value="${requestScope.medicine.m_inprice}">
                </div>
                <div class="form-group">
                  <label for="inputM_out_much">药品进量</label>
                  <input type="text" id="inputM_in_much" name="M_in_much" class="form-control" value="${requestScope.medicine.m_in_much}">
                </div>
                <div class="form-group">
                  <label for="inputM_out_much">药品销量</label>
                  <input type="text" id="inputM_out_much" name="M_out_much" class="form-control" value="${requestScope.medicine.m_out_much}">
                </div>

              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
        </div>
        <div class="row">
          <div class="col-12">
            <a href="/medicine/medicines" class="btn btn-secondary">取消</a>
            <input type="submit" value="保存编辑" class="btn btn-success float-right">
            <a href="/medicine/medicine_delete?id=${requestScope.medicine.m_id}" class="btn btn-secondary float-right">删除</a>
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
