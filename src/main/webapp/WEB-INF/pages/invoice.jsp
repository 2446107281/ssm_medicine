<!--<!DOCTYPE html>-->
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>药店管理系统| 发票</title>

</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
<jsp:include page="blank_houtai.jsp" flush="true"/>
  <!-- Content Wrapper. 包含页面内容 -->
  <div class="content-wrapper">
    <!-- 内容标题（页面标题） -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>发票</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item active">发票</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="callout callout-info">
              <h5><i class="fas fa-info"></i> 注意：</h5>
              这个页面为打印进行了增强。单击发票底部的打印按钮进行测试。
            </div>


            <!-- 主体内容 -->
            <div class="invoice p-3 mb-3">
              <!-- title row -->
              <div class="row">
                <div class="col-12">
                  <h4>
                    <i class="fas fa-globe"></i> 订单编号
                    <small class="float-right">日期： 2/10/2014</small>
                  </h4>
                </div>
                <!-- /.col -->
              </div>
              <!-- info row -->
              <div class="row invoice-info">
                <div class="col-sm-4 invoice-col">
                  用户信息:
                  <address>
                    <strong>Admin, Inc.</strong><br>
                    福尔索姆大街795号，600号套房<br>
                    旧金山，CA 94107<br>
                    电话： (804) 123-5432<br>
                    邮箱： info@almasaeedstudio.com
                  </address>
                </div>
                <!-- /.col -->
                <div class="col-sm-4 invoice-col">
                  订单信息:
                  <address>
                    <strong>John Doe</strong><br>
                    福尔索姆大街795号，600号套房<br>
                    旧金山，CA 94107<br>
                    电话： (555) 539-1037<br>
                    邮箱： john.doe@example.com
                  </address>
                </div>
                <!-- /.col -->
                <div class="col-sm-4 invoice-col">
                  <b>发票 #007612</b><br>
                  <br>
                  <b>订单号：</b> 4F3S8J<br>
                  <b>付款截止：</b> 2/22/2014<br>
                  <b>帐户：</b> 968-34567
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row -->

              <!-- Table row -->
              <div class="row">
                <div class="col-12 table-responsive">
                  <table class="table table-striped">
                    <thead>
                    <tr>
                      <th>数量</th>
                      <th>产品</th>
                      <th>序列号 #</th>
                      <th>描述</th>
                      <th>小计</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                      <td>1</td>
                      <td>使命召唤</td>
                      <td>455-981-221</td>
                      <td>一个无速度限制，无规则的赛车世界</td>
                      <td>$64.50</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>极品飞车 4</td>
                      <td>247-925-726</td>
                      <td>一个无速度限制，无规则的赛车世界</td>
                      <td>$50.00</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>怪兽 DVD</td>
                      <td>735-845-642</td>
                      <td>忙碌的街头艺术大师</td>
                      <td>$10.70</td>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>蓝光电影</td>
                      <td>422-568-642</td>
                      <td>蓝光电影的分辨率可达 1080P</td>
                      <td>$25.99</td>
                    </tr>
                    </tbody>
                  </table>
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row -->

              <div class="row">
                <!-- 接受付款栏 -->
                <div class="col-6">
                  <p class="lead">付款方式：</p>
                  <img src="../dist/img/credit/visa.png" alt="Visa">
                  <img src="../dist/img/credit/mastercard.png" alt="万事达">
                  <img src="../dist/img/credit/american-express.png" 美国运通>
                  <img src="../dist/img/credit/paypal2.png" alt="贝宝">

                  <p class="text-muted well well-sm shadow-none" style="margin-top: 10px;">
                    那帮家伙——那帮贪生怕死的人渣，兵痞中的破落户，
                    大字不识的造粪机——他们都在发痒。
                    我的汗毛直竖，我也有点发痒，这跟美械无关。
                  </p>
                </div>
                <!-- /.col -->
                <div class="col-6">
                  <p class="lead">付款截止 2/22/2014</p>

                  <div class="table-responsive">
                    <table class="table">
                      <tr>
                        <th style="width:50%">小计：</th>
                        <td>$250.30</td>
                      </tr>
                      <tr>
                        <th>税率 (9.3%)</th>
                        <td>$10.34</td>
                      </tr>
                      <tr>
                        <th>运费：</th>
                        <td>$5.80</td>
                      </tr>
                      <tr>
                        <th>合计：</th>
                        <td>$265.24</td>
                      </tr>
                    </table>
                  </div>
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row -->

              <!-- this row will not appear when printing -->
              <div class="row no-print">
                <div class="col-12">
                  <a href="invoice-print.html" rel="noopener" target="_blank" class="btn btn-default"><i class="fas fa-print"></i> 打印</a>
                  <button type="button" class="btn btn-success float-right"><i class="far fa-credit-card"></i> 提交
                    支付
                  </button>
                  <button type="button" class="btn btn-primary float-right" style="margin-right: 5px;">
                    <i class="fas fa-download"></i> 生成 PDF
                  </button>
                </div>
              </div>
            </div>
            <!-- /.invoice -->
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
</div>
<!-- ./wrapper -->

</body>
</html>
