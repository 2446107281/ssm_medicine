<!--<!DOCTYPE html>-->
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8"  isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>药店管理系统 | 药品</title>

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
            <h1>药品</h1>
          </div>
            <form action="medicinesfindby" method="post" class=" form-inline">
                药品名字
                <%--                    <input type="text" class="text-center" name="M_classifiy">--%>
                <div>
                    <input type="text" class="text-center" name="M_name" value="${requestScope.M_name}">
                </div>
                       药品的分类
<%--                    <input type="text" class="text-center" name="M_classifiy">--%>
                    <div>
                            <select  name="M_classifiy" class="form-control custom-select" >
                                <option value=""  <c:if test="${requestScope.M_classifiy==''}">selected="selected"</c:if>></option>
                                <option value="处方药" <c:if test="${requestScope.M_classifiy=='处方药'}">selected="selected"</c:if>>处方药</option>
                                <option value="非处方药" <c:if test="${requestScope.M_classifiy=='非处方药'}">selected="selected"</c:if>>非处方药</option>
                            </select>
                    </div>
                    药品厂家
                    <div >
<%--                    <input type="text" class="text-center" name="M_manufacturer">--%>
                         <select id="inputM_class" name="M_manufacturer" class="form-control custom-select">
                             <option value=""></option>
                               <c:forEach items="${requestScope.manufacturers}" var="manu">
                                   <option value="${manu.MF_id}" <c:if test="${requestScope.M_manufacturer==manu.MF_id}">selected="selected"</c:if>>${manu.MF_name}</option>
                               </c:forEach>
                         </select>

                    </div>
                    <input type="submit" class="btn btn-primary btn-sm">
                </form>
        </div>
      </div>
    </section>

    <!-- 主体内容 -->
    <section class="content">

      <!-- Default box -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">药品</h3>

          <div class="card-tools">
            <button type="button" class="btn btn-tool" data-card-widget="collapse" title="折叠">
              <i class="fas fa-minus"></i>
            </button>
            <button type="button" class="btn btn-tool" data-card-widget="remove" title="移除">
              <i class="fas fa-times"></i>
            </button>
          </div>
        </div>
        <div class="card-body table-responsive p-0"  style="height: 700px;">
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
            药品储量
        </th>
        <th style="width: 20%" class="text-center">
            功能
        </th>

    </tr>
    </thead>
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
                          <br/>
                          <small>
                              生产于: <fmt:formatDate value="${requestScope.medicines[i-1].m_date}" pattern='yyyy-MM-dd'/>
                          </small>
                      </td>
                      <td class="project-state" >

                          <span class="badge badge-success">${requestScope.Medicine_manufacturers_str[i-1]}</span>
                      </td>
                      <td class="project_progress">
                          <span class="badge badge-success">${requestScope.medicines[i-1].m_outprice}</span>
                      </td>
                      <td class="project-state">

                          <div class="progress progress-sm">
                              <div class="progress-bar bg-green" role="progressbar" aria-valuenow="${requestScope.medicines[i-1].m_in_much-requestScope.medicines[i-1].m_out_much}" aria-valuemin="0" aria-valuemax="${requestScope.medicines[i-1].m_in_much}" style="width: ${((requestScope.medicines[i-1].m_in_much-requestScope.medicines[i-1].m_out_much)/(requestScope.medicines[i-1].m_in_much))*100}%">
                              </div>
                          </div>
                          <small>
                              剩余${(requestScope.medicines[i-1].m_in_much)-(requestScope.medicines[i-1].m_out_much)}
                          </small>
                      </td>
<%--                      <form action="index" method="post">--%>
                          <td class="project-actions text-right">
                              <a class="btn btn-primary btn-sm" href="/medicine/medicine-edit?id=${requestScope.medicines[i-1].m_id}" >
<%--                                <input type="hidden" name="M_id" value="${requestScope.medicines[i].m_id}">--%>
                                  <i class="fas fa-folder">
                                  </i>
                                  查看&&编辑
                              </a>
                              <a class="btn btn-primary btn-sm" href="/medicine/medicine_addexist?id=${requestScope.medicines[i-1].m_id}" >
                                      <%--                                <input type="hidden" name="M_id" value="${requestScope.medicines[i].m_id}">--%>
                                  <i class="fas fa-folder">
                                  </i>
                                  添加药品数量
                              </a>
                              <a class="btn btn-danger btn-sm" href="/medicine/medicine_delete?id=${requestScope.medicines[i-1].m_id}">
<%--                                <input type="hidden" name="M_id" value="${requestScope.medicines[i].m_id}">--%>
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


<!-- jQuery -->
<script src="../../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Select2 -->
<script src="../../plugins/select2/js/select2.full.min.js"></script>
<!-- Bootstrap4 Duallistbox -->
<script src="../../plugins/bootstrap4-duallistbox/jquery.bootstrap-duallistbox.min.js"></script>
<!-- InputMask -->
<script src="../../plugins/moment/moment.min.js"></script><script src="../../plugins/moment/locale/zh-cn.js"></script>
<script src="../../plugins/inputmask/jquery.inputmask.min.js"></script>
<!-- date-range-picker -->
<script src="../../plugins/daterangepicker/daterangepicker.js"></script>
<!-- bootstrap color picker -->
<script src="../../plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="../../plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Bootstrap 开关 -->
<script src="../../plugins/bootstrap-switch/js/bootstrap-switch.min.js"></script>
<!-- BS-Stepper -->
<script src="../../plugins/bs-stepper/js/bs-stepper.min.js"></script>
<!-- dropzonejs -->
<script src="../../plugins/dropzone/min/dropzone.min.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/adminlte.min.js"></script>
<!-- 用于演示 AdminLTE  -->
<script src="../../dist/js/demo.js"></script>
<!-- 特定页面脚本 -->
<script>
    $(function () {
        //初始化 Select2 元素
        $('.select2').select2()

        //初始化 Select2 元素
        $('.select2bs4').select2({
            theme: 'bootstrap4'
        })

        // 日期格式 dd/mm/yyyy
        $('#datemask').inputmask('dd/mm/yyyy', { 'placeholder': 'dd/mm/yyyy' })
        // 日期格式2 mm/dd/yyyy
        $('#datemask2').inputmask('mm/dd/yyyy', { 'placeholder': 'mm/dd/yyyy' })
        // 欧元
        $('[data-mask]').inputmask()

        //日期选择器
        $('#reservationdate').datetimepicker({
            format: 'L'
        });

        //日期和时间 picker
        $('#reservationdatetime').datetimepicker({ icons: { time: 'far fa-clock' } });

        //日期范围选择器
        $('#reservation').daterangepicker({locale:{applyLabel: '确定',cancelLabel: '取消',customRangeLabel: '自定义范围'}});
        // 带有时间选择的日期范围选择器
        $('#reservationtime').daterangepicker({
            timePicker: true,
            timePickerIncrement: 30,
            locale: {
                format: 'MM/DD/YYYY hh:mm A'
            }
        })
        //Date range as a button
        $('#daterange-btn').daterangepicker(
            {
                ranges   : {
                    '今天'       : [moment(), moment()],
                    '昨天'   : [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                    '最近7天' : [moment().subtract(6, 'days'), moment()],
                    '最近30天': [moment().subtract(29, 'days'), moment()],
                    '本月'  : [moment().startOf('month'), moment().endOf('month')],
                    '上月'  : [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                },
                startDate: moment().subtract(29, 'days'),
                endDate  : moment()
            },
            function (start, end) {
                $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'))
            }
        )

        //Timepicker
        $('#timepicker').datetimepicker({
            format: 'LT'
        })

        //Bootstrap Duallistbox
        $('.duallistbox').bootstrapDualListbox({filterTextClear: '显示所有', filterPlaceHolder: '筛选', moveSelectedLabel: '移动选中', moveAllLabel: '移动所有', removeSelectedLabel: '移除选中', removeAllLabel: '移除所有', infoText: '显示所有 {0}', infoTextFiltered: '<span class="badge badge-warning">筛选</span> 共 {1} 符合 {0} ', infoTextEmpty: '空列表'})

        // 颜色选择器
        $('.my-colorpicker1').colorpicker()
        // 带有插件的颜色选择器
        $('.my-colorpicker2').colorpicker()

        $('.my-colorpicker2').on('colorpickerChange', function(event) {
            $('.my-colorpicker2 .fa-square').css('color', event.color.toString());
        })

        $("input[data-bootstrap-switch]").each(function(){
            $(this).bootstrapSwitch('state', $(this).prop('checked'));
        })

    })
    // BS-Stepper 初始化
    document.addEventListener('DOMContentLoaded', function () {
        window.stepper = new Stepper(document.querySelector('.bs-stepper'))
    })

    // DropzoneJS 演示代码开始
    Dropzone.autoDiscover = false

    // Get the template HTML and remove it from the doumenthe template HTML and remove it from the doument
    var previewNode = document.querySelector("#template")
    previewNode.id = ""
    var previewTemplate = previewNode.parentNode.innerHTML
    previewNode.parentNode.removeChild(previewNode)

    var myDropzone = new Dropzone(document.body, { // 使整 body 可拖放
        url: "/target-url", // 设置地址
        thumbnailWidth: 80,
        thumbnailHeight: 80,
        parallelUploads: 20,
        previewTemplate: previewTemplate,
        autoQueue: false, // 确保手动添加时不将文件放入队列
        previewsContainer: "#previews", // 定义容器以显示预览
        clickable: ".fileinput-button" // 定义用作触发器选择文件的元素。
    })

    myDropzone.on("addedfile", function(file) {
        // 绑定开始上传按钮
        file.previewElement.querySelector(".start").onclick = function() { myDropzone.enqueueFile(file) }
    })

    // 更新总进度条
    myDropzone.on("totaluploadprogress", function(progress) {
        document.querySelector("#total-progress .progress-bar").style.width = progress + "%"
    })

    myDropzone.on("sending", function(file) {
        // 上传开始时显示总进度条
        document.querySelector("#total-progress").style.opacity = "1"
        // 并禁用开始按钮
        file.previewElement.querySelector(".start").setAttribute("disabled", "disabled")
    })

    // 上传完成时，不显示总进度条
    myDropzone.on("queuecomplete", function(progress) {
        document.querySelector("#total-progress").style.opacity = "0"
    })

    // 设置所有传输的按钮
    // 不需要设置“添加文件”按钮，因为已配置
    // 已经指定了 `clickable`。
    document.querySelector("#actions .start").onclick = function() {
        myDropzone.enqueueFiles(myDropzone.getFilesWithStatus(Dropzone.ADDED))
    }
    document.querySelector("#actions .cancel").onclick = function() {
        myDropzone.removeAllFiles(true)
    }
    // DropzoneJS 演示代码结束
</script>
</body>
</html>
