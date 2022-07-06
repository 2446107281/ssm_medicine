<!--<!DOCTYPE html>-->
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>药店管理系统 | 账户查看</title>

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
            <h1>用户</h1>
          </div>
          <div>
            <form action="accountfindby" method="post" class=" form-inline">
              用户的用户名
              <div>
                <input type="text" class="text-center" name="username" value="${requestScope.username}">
              </div>
              用户是否为管理员
              <div>
                <select  name="account_status" class="form-control custom-select" >
                  <option value=""  <c:if test="${requestScope.account_status==''}">selected="selected"</c:if>></option>
                  <option value="2" <c:if test="${requestScope.account_status==2}">selected="selected"</c:if>>管理员</option>
                  <option value="3" <c:if test="${requestScope.account_status==3}">selected="selected"</c:if>>非管理员</option>
                </select>
              </div>
              用户电话
              <div >
                <div>
                  <input type="text" class="text-center" name="tel" value="${requestScope.tel}">
                </div>
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
      <div class="card card-solid">
        <div class="card-body pb-0">
          <div class="row">
            <c:forEach begin="1" end="${requestScope.accountList.size()}" var="i">
            <div class="col-12 col-sm-6 col-md-4 d-flex align-items-stretch flex-column">
              <div class="card bg-light d-flex flex-fill">
                <div class="card-header text-muted border-bottom-0">
                  用户/管理员:
                  <c:if test="${requestScope.accountList[i-1].account_status!=3}">管理员</c:if>
                  <c:if test="${requestScope.accountList[i-1].account_status==3}">用户</c:if>
                </div>
                <div class="card-body pt-0">
                  <div class="row">
                    <div class="col-7">
                      <h2 class="lead"><b>用户名(username):${requestScope.accountList[i-1].username}</b></h2>
                      <p class="text-muted text-sm"><b>简介:</b>该用户创建于:${requestScope.accountList[i-1].date}</p>
                      <ul class="ml-4 mb-0 fa-ul text-muted">
                        <li class="small"><span class="fa-li"><i class="fas fa-lg fa-envelope"></i></span> 电子邮箱:${requestScope.accountList[i-1].email}</li>
                        <li class="small"><span class="fa-li"><i class="fas fa-lg fa-phone"></i></span> 电话 #:${requestScope.accountList[i-1].tel}</li>
                      </ul>
                    </div>
                    <div class="col-5 text-center">
                      <img src="../../dist/img/user1-128x128.jpg" alt="user-avatar" class="img-circle img-fluid">
                    </div>
                  </div>
                </div>
                <div class="card-footer">
                  <div class="text-right">
                    <a href="#" class="btn btn-sm bg-teal">
                      <i class="fas fa-comments"></i>
                    </a>
                    <a href="/account/account_detail?id=${requestScope.accountList[i-1].id}" class="btn btn-sm btn-primary">
                      <i class="fas fa-user"></i> 查看用户信息
                    </a>
                  </div>
                </div>
              </div>
            </div>
            </c:forEach>

          </div>
        </div>
        <!-- /.card-body -->
        <div class="card-footer">
          <nav aria-label="Contacts Page Navigation">
            <ul class="pagination justify-content-center m-0">
              <li class="page-item active"><a class="page-link" href="#">1</a></li>
              <li class="page-item"><a class="page-link" href="#">2</a></li>
              <li class="page-item"><a class="page-link" href="#">3</a></li>
              <li class="page-item"><a class="page-link" href="#">4</a></li>
              <li class="page-item"><a class="page-link" href="#">5</a></li>
              <li class="page-item"><a class="page-link" href="#">6</a></li>
              <li class="page-item"><a class="page-link" href="#">7</a></li>
              <li class="page-item"><a class="page-link" href="#">8</a></li>
            </ul>
          </nav>
        </div>
        <!-- /.card-footer -->
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
