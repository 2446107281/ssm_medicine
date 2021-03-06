<!--<!DOCTYPE html>-->
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | 电子商务</title>

  <!-- 离线 Google 字体: Source Sans Pro -->
  <link rel="stylesheet" href="/AdminLTE/AdminLTE-3.x/dist/css/google.css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../../plugins/fontawesome-free/css/all.min.css">
  <!-- 主题样式 -->
  <link rel="stylesheet" href="../../dist/css/adminlte.min.css">
</head>
<body class="hold-transition sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper">
  <!-- 导航栏 -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- 左侧导航栏链接 -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="../../index3.html" class="nav-link">首页</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="#" class="nav-link">联系</a>
      </li>
    </ul>

    <!-- 右侧导航栏链接 -->
    <ul class="navbar-nav ml-auto">
      <!-- Navbar Search -->
      <li class="nav-item">
        <a class="nav-link" data-widget="navbar-search" href="#" role="button">
          <i class="fas fa-search"></i>
        </a>
        <div class="navbar-search-block">
          <form class="form-inline">
            <div class="input-group input-group-sm">
              <input class="form-control form-control-navbar" type="search" placeholder="搜索" aria-label="Search">
              <div class="input-group-append">
                <button class="btn btn-navbar" type="submit">
                  <i class="fas fa-search"></i>
                </button>
                <button class="btn btn-navbar" type="button" data-widget="navbar-search">
                  <i class="fas fa-times"></i>
                </button>
              </div>
            </div>
          </form>
        </div>
      </li>

      <!-- 消息下拉菜单 -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-comments"></i>
          <span class="badge badge-danger navbar-badge">3</span>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <a href="#" class="dropdown-item">
            <!-- 消息开始 -->
            <div class="media">
              <img src="../../dist/img/user1-128x128.jpg" alt="用户头像" class="img-size-50 mr-3 img-circle">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  Brad Diesel
                  <span class="float-right text-sm text-danger"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">有空的话就打电话给我...</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 小时前</p>
              </div>
            </div>
            <!-- 消息结束 -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <!-- 消息开始 -->
            <div class="media">
              <img src="../../dist/img/user8-128x128.jpg" alt="用户头像" class="img-size-50 img-circle mr-3">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  John Pierce
                  <span class="float-right text-sm text-muted"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">我收到你的消息了</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 小时前</p>
              </div>
            </div>
            <!-- 消息结束 -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <!-- 消息开始 -->
            <div class="media">
              <img src="../../dist/img/user3-128x128.jpg" alt="用户头像" class="img-size-50 img-circle mr-3">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  Nora Silvester
                  <span class="float-right text-sm text-warning"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">主题在这里</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 小时前</p>
              </div>
            </div>
            <!-- 消息结束 -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item dropdown-footer">查看所有消息</a>
        </div>
      </li>
      <!-- 通知下拉菜单 -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-bell"></i>
          <span class="badge badge-warning navbar-badge">15</span>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <span class="dropdown-item dropdown-header">15 条通知</span>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-envelope mr-2"></i> 4 条新消息
            <span class="float-right text-muted text-sm">3 分钟前</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-users mr-2"></i> 8 个好友请求
            <span class="float-right text-muted text-sm">12 小时前</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-file mr-2"></i> 3 个新报告
            <span class="float-right text-muted text-sm">2 天前</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item dropdown-footer">查看所有通知</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-widget="fullscreen" href="#" role="button">
          <i class="fas fa-expand-arrows-alt"></i>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button">
          <i class="fas fa-th-large"></i>
        </a>
      </li>
    </ul>
  </nav>
  <!-- /.navbar -->

  <!-- 主侧边栏容器 -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- 品牌 Logo -->
    <a href="../../index.html" class="brand-link">
      <img src="../../dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">药店管理系统</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- 侧边栏用户面板（可选） -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="../../dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="用户头像">
        </div>
        <div class="info">
          <%--                    点击用户头像跳转到用户管理界面--%>
          <a href="#" class="d-block">用户</a>
        </div>
      </div>
      <!-- 侧边栏菜单 -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
            data-accordion="false">
          <!-- 使用 .nav-icon 类添加图标，
               或使用 font-awesome 或其他任何图标字体库 -->
          <li class="nav-item menu-open">
            <a href="#" class="nav-link active">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                主页
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="index.jsp" class="nav-link active">
                  <i class="far fa-circle nav-icon"></i>
                  <p>仪表盘 v1</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="../pages/widgets.html" class="nav-link">
              <i class="nav-icon fas fa-th"></i>
              <p>
                小部件
                <span class="right badge badge-danger">新</span>
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-copy"></i>
              <p>
                布局选项
                <i class="fas fa-angle-left right"></i>
                <span class="badge badge-info right">6</span>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="../pages/layout/top-nav.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>例子1</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../pages/layout/top-nav-sidebar.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>例子2</p>
                </a>
              </li>
            </ul>
          </li>

          <li class="nav-header">示例</li>
          <li class="nav-item">
            <a href="../pages/calendar.html" class="nav-link">
              <i class="nav-icon far fa-calendar-alt"></i>
              <p>
                日历
                <span class="badge badge-info right">2</span>
              </p>
            </a>
          </li>

          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon far fa-envelope"></i>
              <p>
                邮箱
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="#" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>收件箱</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../pages/mailbox/compose.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>写信</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-book"></i>
              <p>
                页面
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="../pages/examples/invoice.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>发票</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../pages/examples/profile.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>资料</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-header">杂项</li>
          <li class="nav-item">
            <a href="iframe.jsp" class="nav-link">
              <i class="nav-icon fas fa-ellipsis-h"></i>
              <p>选项卡式框架插件</p>
            </a>
          </li>
          <li class="nav-item">
            <a href="/AdminLTE/AdminLTE-3.x/docs/" class="nav-link">
              <i class="nav-icon fas fa-file"></i>
              <p>文档</p>
            </a>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. 包含页面内容 -->
  <div class="content-wrapper">
    <!-- 内容标题（页面标题） -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>电子商务</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">首页</a></li>
              <li class="breadcrumb-item active">电子商务</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- 主体内容 -->
    <section class="content">

      <!-- Default box -->
      <div class="card card-solid">
        <div class="card-body">
          <div class="row">
            <div class="col-12 col-sm-6">
              <h3 class="d-inline-block d-sm-none">LOWA 男士叛逆 GTX 徒步靴</h3>
              <div class="col-12">
                <img src="../../dist/img/prod-1.jpg" class="product-image" alt="产品图片">
              </div>
              <div class="col-12 product-image-thumbs">
                <div class="product-image-thumb active"><img src="../../dist/img/prod-1.jpg" alt="产品图片"></div>
                <div class="product-image-thumb" ><img src="../../dist/img/prod-2.jpg" alt="产品图片"></div>
                <div class="product-image-thumb" ><img src="../../dist/img/prod-3.jpg" alt="产品图片"></div>
                <div class="product-image-thumb" ><img src="../../dist/img/prod-4.jpg" alt="产品图片"></div>
                <div class="product-image-thumb" ><img src="../../dist/img/prod-5.jpg" alt="产品图片"></div>
              </div>
            </div>
            <div class="col-12 col-sm-6">
              <h3 class="my-3">LOWA 男士叛逆 GTX 徒步靴</h3>
              <p>第四次，这是第四次。一次比一次更接近南天门，一次比一次更像梦，一个漫长的梦。路程按厘米计算，只能忘掉路程。我是石头，我是杂草，我是粪便，是枯树腐烂的尸体。怒江在身下流逝，逝者如斯，也需要忘掉时间，时刻记住，我，不存在，我不存在了，我不存在。</p>

              <hr>
              <h4>可用颜色</h4>
              <div class="btn-group btn-group-toggle" data-toggle="buttons">
                <label class="btn btn-default text-center active">
                  <input type="radio" name="color_option" id="color_option_a1" autocomplete="off" checked>
                  绿色
                  <br>
                  <i class="fas fa-circle fa-2x text-green"></i>
                </label>
                <label class="btn btn-default text-center">
                  <input type="radio" name="color_option" id="color_option_a2" autocomplete="off">
                  蓝色
                  <br>
                  <i class="fas fa-circle fa-2x text-blue"></i>
                </label>
                <label class="btn btn-default text-center">
                  <input type="radio" name="color_option" id="color_option_a3" autocomplete="off">
                  紫色
                  <br>
                  <i class="fas fa-circle fa-2x text-purple"></i>
                </label>
                <label class="btn btn-default text-center">
                  <input type="radio" name="color_option" id="color_option_a4" autocomplete="off">
                  红色
                  <br>
                  <i class="fas fa-circle fa-2x text-red"></i>
                </label>
                <label class="btn btn-default text-center">
                  <input type="radio" name="color_option" id="color_option_a5" autocomplete="off">
                  橙色
                  <br>
                  <i class="fas fa-circle fa-2x text-orange"></i>
                </label>
              </div>

              <h4 class="mt-3">大小 <small>请选择一个</small></h4>
              <div class="btn-group btn-group-toggle" data-toggle="buttons">
                <label class="btn btn-default text-center">
                  <input type="radio" name="color_option" id="color_option_b1" autocomplete="off">
                  <span class="text-xl">S</span>
                  <br>
                  小号
                </label>
                <label class="btn btn-default text-center">
                  <input type="radio" name="color_option" id="color_option_b2" autocomplete="off">
                  <span class="text-xl">M</span>
                  <br>
                  中号
                </label>
                <label class="btn btn-default text-center">
                  <input type="radio" name="color_option" id="color_option_b3" autocomplete="off">
                  <span class="text-xl">L</span>
                  <br>
                  大号
                </label>
                <label class="btn btn-default text-center">
                  <input type="radio" name="color_option" id="color_option_b4" autocomplete="off">
                  <span class="text-xl">XL</span>
                  <br>
                  超大号
                </label>
              </div>

              <div class="bg-gray py-2 px-3 mt-4">
                <h2 class="mb-0">
                  $80.00
                </h2>
                <h4 class="mt-0">
                  <small>不含税： $80.00 </small>
                </h4>
              </div>

              <div class="mt-4">
                <div class="btn btn-primary btn-lg btn-flat">
                  <i class="fas fa-cart-plus fa-lg mr-2"></i>
                  添加到购物车
                </div>

                <div class="btn btn-default btn-lg btn-flat">
                  <i class="fas fa-heart fa-lg mr-2"></i>
                  加入收藏
                </div>
              </div>

              <div class="mt-4 product-share">
                <a href="#" class="text-gray">
                  <i class="fab fa-facebook-square fa-2x"></i>
                </a>
                <a href="#" class="text-gray">
                  <i class="fab fa-twitter-square fa-2x"></i>
                </a>
                <a href="#" class="text-gray">
                  <i class="fas fa-envelope-square fa-2x"></i>
                </a>
                <a href="#" class="text-gray">
                  <i class="fas fa-rss-square fa-2x"></i>
                </a>
              </div>

            </div>
          </div>
          <div class="row mt-4">
            <nav class="w-100">
              <div class="nav nav-tabs" id="product-tab" role="tablist">
                <a class="nav-item nav-link active" id="product-desc-tab" data-toggle="tab" href="#product-desc" role="tab" aria-controls="product-desc" aria-selected="true">描述</a>
                <a class="nav-item nav-link" id="product-comments-tab" data-toggle="tab" href="#product-comments" role="tab" aria-controls="product-comments" aria-selected="false">评论</a>
                <a class="nav-item nav-link" id="product-rating-tab" data-toggle="tab" href="#product-rating" role="tab" aria-controls="product-rating" aria-selected="false">评级</a>
              </div>
            </nav>
            <div class="tab-content p-3" id="nav-tabContent">
              <div class="tab-pane fade show active" id="product-desc" role="tabpanel" aria-labelledby="product-desc-tab"> 用从正午到凌晨，穿过一发子弹就能飞到的距离，在某个日军过于紧张的节点上，你发狂的想念黑夜。到了夜晚，你祈祷不要有人拿你这堆枯草练夜间射击，因为你得一动不动，直到被他打成烂泥。 </div>
              <div class="tab-pane fade" id="product-comments" role="tabpanel" aria-labelledby="product-comments-tab"> 我的团长今天不损，而是……他的战法说出来都嫌恶毒。他给铁棘刺通了电，在防线上不光布设了地雷，还埋设了五公斤炸药再加五公斤钉子这样的遥控引爆。他用尸体堵住炸开的铁丝网，让日军通过地道在虞师背后出现。他从陡坡上投掷装满炸药和玻璃片的汽油桶、炮弹壳、炸药包和炮弹改装的巨型手榴弹、燃烧瓶、瓦斯和死人。他用曲射火力收拾了半个总爱乱放信号的搜索连，让人发现乱放信号弹等于通敌。虞师倚重的空中支援居然被他用老式迫击炮发射的烟幕化解，他甚至用假烟幕把美国飞机引到了虞师头上。他让人看战争会如何歇斯底里，他也引来了最多的仇恨，全部来自自己人。 </div>
              <div class="tab-pane fade" id="product-rating" role="tabpanel" aria-labelledby="product-rating-tab"> 后来我们用绳子把兽医缒上去。他被绳子勒得张开了双臂，像个被折去翅膀的老天使。他逆着日光，和初升的太阳一起照射着仰望的我和迷龙。我看着老头儿一点点升入阳光，升入阴暗如我永远无法到达的纯真之地，谁说他不是升天了呢？他一生中没能帮过任何人，尽管他不自量力地想帮每一个人。他从不恶毒。中国人习惯为死人说好话。这是我能为他想到的最好的一句话。 </div>
            </div>
          </div>
        </div>
        <!-- /.card-body -->
      </div>
      <!-- /.card -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <footer class="main-footer">
    <div class="float-right d-none d-sm-block">
      <b>版本</b> 3.1.0
    </div>
    <strong>Copyright &copy; 2014-2021 <a href="https://adminlte.io">AdminLTE.io</a>.</strong> 保留所有权利。
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- 控制侧边栏内容在这里 -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="../../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/adminlte.min.js"></script>
<!-- 用于演示 AdminLTE  -->
<script src="../../dist/js/demo.js"></script>
<script>
  $(document).ready(function() {
    $('.product-image-thumb').on('click', function () {
      var $image_element = $(this).find('img')
      $('.product-image').prop('src', $image_element.attr('src'))
      $('.product-image-thumb.active').removeClass('active')
      $(this).addClass('active')
    })
  })
</script>
</body>
</html>
