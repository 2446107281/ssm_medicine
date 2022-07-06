<!--<!DOCTYPE html>-->
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>药店购物系统前端| 购买药品界面</title>
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
            <h1>购买药品</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item active">购买药品</li>
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

          <h3 class="card-title">${requestScope.M_class}</h3>

          <div class="card-tools">
            <button type="button" class="btn btn-tool" data-card-widget="collapse" title="折叠">
              <i class="fas fa-minus"></i>
            </button>
            <button type="button" class="btn btn-tool" data-card-widget="remove" title="移除">
              <i class="fas fa-times"></i>
            </button>
          </div>
        </div>
          <div class="card-body table-responsive p-0" style="height: 700px;">
          <table class="table table-striped projects">
            <%--              表格表头--%>
            <thead>
            <tr>
              <th style="width: 1%">
                #
              </th>
              <th style="width: 15%">
                药品名称
              </th>
              <th style="width: 25%" class="text-center" >
                药品生产厂家
              </th>

              <th style="width: 10%">
                药品售价
              </th>

              <th style="width: 25%;" class="text-center" >
                购买数量
              </th>
              <th style="width: 20%" class="text-center">
                处方药/非处方药
              </th>

            </tr>
            </thead>
<%--                  <c:if test="${requestScope.medicines.size()!=0}">--%>
<%--                    <c:forEach begin="1" end="${requestScope.medicines.size()}" var="i" >--%>
<%--                  <tbody>--%>
<%--                  <tr>--%>
<%--                    <td>--%>
<%--                        ${i}--%>
<%--                    </td>--%>
<%--                    <td>--%>
<%--                      <a>--%>
<%--                          ${requestScope.medicines[i-1].m_name}--%>
<%--                      </a>--%>
<%--                        <input type="hidden" name="m_id" value="${requestScope.medicines[i-1].m_id}">--%>
<%--                      <br/>--%>
<%--                      <small>--%>
<%--                        生产于: <fmt:formatDate value="${requestScope.medicines[i-1].m_date}" pattern='yyyy-MM-dd'/>--%>
<%--                      </small>--%>
<%--                    </td>--%>
<%--                    <td class="project-state" >--%>
<%--                      <span class="badge badge-success">--%>
<%--                              ${requestScope.Medicine_manufacturers_str[i-1]}--%>
<%--&lt;%&ndash;                           <c:if test="${requestScope.account.account_status!=3}">管理员</c:if>&ndash;%&gt;--%>
<%--                      </span>--%>
<%--                    </td>--%>
<%--                    <td class="project_progress">--%>
<%--                      <span class="badge badge-success">${requestScope.medicines[i-1].m_outprice}</span>--%>
<%--                    </td>--%>
<%--                    <td class="project-state">--%>

<%--                      <div class="project-state">--%>
<%--&lt;%&ndash;                        <div class="progress-bar bg-green" role="progressbar" aria-valuenow="${requestScope.medicines[i-1].m_in_much-requestScope.medicines[i-1].m_out_much}" aria-valuemin="0" aria-valuemax="${requestScope.medicines[i-1].m_in_much}" style="width: ${((requestScope.medicines[i-1].m_in_much-requestScope.medicines[i-1].m_out_much)/(requestScope.medicines[i-1].m_in_much))*100}%">&ndash;%&gt;--%>
<%--                            最大库存:<span class="badge badge-success kucun">${requestScope.medicines[i-1].m_in_much-requestScope.medicines[i-1].m_out_much}</span>--%>
<%--                        </div>--%>
<%--                      </div>--%>
<%--                      <small>--%>

<%--                          <li><input type="button" name="minus" value="-" onclick="minus(${i})">--%>
<%--                              <input type="text" name="amount"  value="1" class="text-center">--%>
<%--                              <input type="button" name="plus" value="+" onclick="plus(${i})">--%>
<%--                          </li>--%>

<%--                      </small>--%>
<%--                    </td>--%>
<%--                      &lt;%&ndash;                      <form action="index" method="post">&ndash;%&gt;--%>
<%--                    <td class="project-actions text-right">--%>
<%--                      <a class="btn btn-primary btn-sm" href="<c:url value="/medicine/medicine-edit?id=${requestScope.medicines[i-1].m_id}"/>" >--%>
<%--                          &lt;%&ndash;                                <input type="hidden" name="M_id" value="${requestScope.medicines[i-1].m_id}">&ndash;%&gt;--%>
<%--                        <i class="fas fa-folder">--%>
<%--                        </i>--%>
<%--                        查看&&购买--%>
<%--                      </a>--%>
<%--                      <a class="btn btn-danger btn-sm" name="addMtoC" href="/shoppingcart/addShoppingCart_action?S_id=${requestScope.medicines[i-1].m_id}&&A_id=${sessionScope.account_id}&&S_much=">--%>
<%--                        <i class="fas fa-trash">--%>
<%--                        </i>--%>
<%--                        加入购物车--%>
<%--                      </a>--%>
<%--                    </td>--%>
<%--                      &lt;%&ndash;                      </form>&ndash;%&gt;--%>
<%--                  </tr>--%>
<%--                  </tbody>--%>
<%--                </c:forEach>--%>
<%--                  </c:if>--%>
<%--                    <c:if test="${requestScope.medicines.size()==0}">--%>
          <c:forEach begin="1" end="${requestScope.medicines.size()}" var="i" >
          <tbody>
          <tr>
              <td>
                      ${i}
              </td>
              <td>
                  <a>
                          ${requestScope.medicines[i-1].m_name}
                  </a>
                  <input type="hidden" name="m_id" value="${requestScope.medicines[i-1].m_id}">
                  <br/>
                  <small>
                      生产于: <fmt:formatDate value="${requestScope.medicines[i-1].m_date}" pattern='yyyy-MM-dd'/>
                  </small>
              </td>
              <td class="project-state" >
                  <span class="badge badge-success">
<%--                          ${requestScope.medicines[i-1].m_manufacturer}--%>
                      ${requestScope.Medicine_manufacturers_str[i-1]}
                  </span>
              </td>
              <td class="project_progress">
                  <span class="badge badge-success">${requestScope.medicines[i-1].m_outprice}</span>
              </td>
              <td class="project-state">

                  <div class="project-state">
                          <%--                        <div class="progress-bar bg-green" role="progressbar" aria-valuenow="${requestScope.medicines[i-1].m_in_much-requestScope.medicines[i-1].m_out_much}" aria-valuemin="0" aria-valuemax="${requestScope.medicines[i-1].m_in_much}" style="width: ${((requestScope.medicines[i-1].m_in_much-requestScope.medicines[i-1].m_out_much)/(requestScope.medicines[i-1].m_in_much))*100}%">--%>
                      最大库存:<span class="badge badge-success kucun">${requestScope.medicines[i-1].m_in_much-requestScope.medicines[i-1].m_out_much}</span>
                  </div>
      </div>
        <small>

            <li><input type="button" name="minus" value="-" onclick="minus(${i-1})">
                <input type="text" name="amount"  value="1">
                <input type="button" name="plus" value="+" onclick="plus(${i-1})">
            </li>

        </small>
        </td>
            <%--                      <form action="index" method="post">--%>
        <td class="project-actions text-right">
            <a class="btn btn-primary btn-sm" href="<c:url value="/medicine/medicine_look?id=${requestScope.medicines[i-1].m_id}"/>" >
                    <%--                                <input type="hidden" name="M_id" value="${requestScope.medicines[i-1].m_id}">--%>
                <i class="fas fa-folder">
                </i>
                查看&&购买
            </a>
            <a class="btn btn-danger btn-sm btn btn-success toastsDefaultSuccess" name="addMtoC" href="/shoppingcart/addShoppingCart_action?S_M_id=${requestScope.medicines[i-1].m_id}&&S_A_id=${sessionScope.account_id}&&S_much=">
                <i class="fas fa-trash">
                </i>
                加入购物车
            </a>
        </td>
            <%--                      </form>--%>
        </tr>
        </tbody>
        </c:forEach>
<%--                    </c:if>--%>
          </table>

        <!-- /.card-body -->

      <!-- /.card -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
      <script type="text/javascript">
          var minus_btn = document.getElementsByName("minus")[0];
          var plus_btn = document.getElementsByName("plus")[0];
          // var m_id = document.getElementsByName("m_id")[i].value;
          // var val = Number(document.getElementsByClassName("badge badge-success kucun")[i].innerHTML);


          function addMtoC(i,val) {
              var m_id = document.getElementsByName("m_id")[i].value;
              // alert(m_id);
              document.getElementsByName("addMtoC")[i].setAttribute("href","/shoppingcart/addShoppingCart_action?S_M_id="+m_id+"&&S_A_id=${sessionScope.account_id}&&S_much="+val);
          }
          function minus(i){
              var val;
              val = Number(document.getElementsByName("amount")[i].value);
              if (val > 0){
                  val -=1;
              }
              document.getElementsByName("amount")[i].value=val;
              addMtoC(i,val);
          }
          function plus(i){
              var val = Number(document.getElementsByName("amount")[i].value);
              if (val < Number(document.getElementsByClassName("badge badge-success kucun")[i].innerHTML)) {
                  val +=1;
              }else {
                  alert("库存不足!!! 最大库存:"+Number(document.getElementsByClassName("badge badge-success kucun")[i].innerHTML))
              }
              document.getElementsByName("amount")[i].value=val;
              addMtoC(i,val);
          }


          $(function() {
              var Toast = Swal.mixin({
                  toast: true,
                  position: 'top-end',
                  showConfirmButton: false,
                  timer: 3000
              });
              $('.toastsDefaultSuccess').click(function () {
                  $(document).Toasts('create', {
                      class: 'bg-success',
                      title: '系统提示:',
                      // subtitle: '子标题',
                      body: '药品添加成功!!!'
                  })
              });
          });

      </script>
</body>
</html>
