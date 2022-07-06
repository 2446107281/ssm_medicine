<!--<!DOCTYPE html>-->
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8"  isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>药店管理系统 | 药品的生产厂家总览</title>

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
          <div class="col-sm-4">
            <h1>生产厂家</h1>
          </div>
          <div >
              <form action="manufacturerfindby" method="post" class=" form-inline">
                  厂商名
                  <div>
                      <input type="text" class="text-center" name="MF_name" value="${requestScope.MF_name}">
                  </div>
                  厂商联系人
                  <div>
                      <input type="text" class="text-center" name="MF_person" value="${requestScope.MF_person}">
                  </div>
                 厂商电话
                  <div >
                      <input type="text" class="text-center" name="MF_phonenumber" value="${requestScope.MF_phonenumber}">
                  </div>
                  <input type="submit" class="btn btn-primary btn-sm">
              </form>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- 主体内容 -->
    <section class="content">

      <!-- Default box -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">生产厂家</h3>

          <div class="card-tools">
            <button type="button" class="btn btn-tool" data-card-widget="collapse" title="折叠">
              <i class="fas fa-minus"></i>
            </button>
            <button type="button" class="btn btn-tool" data-card-widget="remove" title="移除">
              <i class="fas fa-times"></i>
            </button>
          </div>
        </div>
        <div class="card-body p-0">
          <table class="table table-striped projects">
<%--              表格表头--%>
              <thead>
    <tr>
        <th style="width: 1%">
            #
        </th>
        <th style="width: 15%">
            生产厂家名称及地址
        </th>
        <th style="width: 25%" class="text-center" >
            生产厂家联系人
        </th>

        <th style="width: 10%">
            生产厂家电话
        </th>

        <th style="width: 25%;" class="text-center" >
            生产厂家Email
        </th>
        <th style="width: 20%" class="text-center">

        </th>

    </tr>
    </thead>
  <c:forEach begin="1" end="${requestScope.manufacturers.size()}" var="i" >
              <tbody>
                  <tr>
                      <td>
                         ${i}
                      </td>
                      <td>
                          <a>
                              ${requestScope.manufacturers[i-1].MF_name}
                          </a>
                          <br/>
                          <small>
                             ${requestScope.manufacturers[i-1].MF_address}
                          </small>
                      </td>
                      <td class="project-state" >
                         ${requestScope.manufacturers[i-1].MF_person}
                      </td>
                      <td class="project_progress">
                          <span class="badge badge-success">${requestScope.manufacturers[i-1].MF_phonenumber}</span>
                      </td>
                      <td class="project-state">
                              ${requestScope.manufacturers[i-1].MF_email}
                      </td>
<%--                      <form action="index" method="post">--%>
                          <td class="project-actions text-right">
                              <a class="btn btn-primary btn-sm" href="/manufacturer/manufacturerlook?MF_id=${requestScope.manufacturers[i-1].MF_id}" >
<%--                                <input type="hidden" name="M_id" value="${requestScope.medicines[i-1].m_id}">--%>
                                  <i class="fas fa-folder">
                                  </i>
                                  查看
                              </a>
                              <a class="btn btn-danger btn-sm" href="/manufacturer/manufacturerdelete?id=${requestScope.manufacturers[i-1].MF_id}">
<%--                                <input type="hidden" name="M_id" value="${requestScope.medicines[i-1].m_id}">--%>
                                  <i class="fas fa-trash">
                                  </i>
                                  删除
                              </a>
                          </td>
<%--                      </form>--%>
                  </tr>
              </tbody>
  </c:forEach>
          </table>
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
