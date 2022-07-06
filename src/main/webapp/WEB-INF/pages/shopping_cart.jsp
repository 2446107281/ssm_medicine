<!--<!DOCTYPE html>-->
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>--%>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>药店管理系统 购物车</title>
</head>

<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">
    <jsp:include page="blank_houtai.jsp" flush="true"/>
    <!-- Content Wrapper. 包含页面内容 -->
    <div class="content-wrapper">
        <!-- 内容标题（页面标题） -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">购物车</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item active">购物车</li>
                        </ol>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->

        <!-- 主体内容 -->
        <section class="content">

            <!-- Default box -->
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title">购物车</h3>

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
                                <input type="checkbox" class="form-check checkbox_all" onclick="checkall()" >
                            </th>
                            <th style="width: 20%">
                                药品名称
                            </th>
                            <th style="width: 30%" class="text-center">
                                药品厂家
                            </th>
                            <th>
                                药品价格
                            </th>
                            <th style="width: 8%" class="text-center">
                                购买数量
                            </th>
                            <th style="width: 20%">
                            </th>
                        </tr>
                        </thead>
                            <c:if test="${requestScope.ShoppingCarts.size()>0}">
                                <c:forEach begin="1" end="${requestScope.ShoppingCarts.size()}" var="i" >
                            <tbody>
                            <tr>
                                <td>
                                    <!-- checkbox -->
                                        <input type="checkbox" class="form-check checkbox_my"  onclick="add(${i-1})" >
                                    <input type="hidden" name="medicine_id" value="${requestScope.ShoppingCarts[i-1].s_id}">
                                </td>
                                <td>
                                    <a>
                                            ${requestScope.ShoppingCarts[i-1].s_name}
                                    </a>
                                </td>
                                <td class="project-state" >
                                    <span class="badge badge-success">${requestScope.Medicine_manufacturers_str[i-1]}</span>
                                </td>
                                <td class="project_progress">
                                    <span class="badge badge-success s_price">${requestScope.ShoppingCarts[i-1].s_price}</span>
                                </td>
                                <td class="project-state">
                                    <span class="badge badge-success s_much">${requestScope.ShoppingCarts[i-1].s_much}</span>
                                </td>
                                    <%--                      <form action="index" method="post">--%>
                                <td class="project-actions text-right">
                                    <a class="btn btn-primary btn-sm" href="<c:url value="/medicine/medicine_look?id=${requestScope.ShoppingCarts[i-1].s_M_id}"/>" >
                                            <%--                                <input type="hidden" name="M_id" value="${requestScope.medicines[i-1].m_id}">--%>
                                        <i class="fas fa-folder">
                                        </i>
                                        查看药品
                                    </a>
                                    <a class="btn btn-danger btn-sm" href="<c:url value="/shoppingcart/deleteshoppingcart_action?id=${requestScope.ShoppingCarts[i-1].s_id}"/>">
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
                            </c:if>
                    </table>
                    <!-- /.card-body页面底端的按钮 -->
                    <div class="card-footer clearfix">
                        <span class="text">
                            总价:<span class="text total">0</span>
                        </span>

<%--                        发送form表单--%>
                        <form method="post" action="/shoppingcart/jiesuan_action" type="hidden" id="form">
                            <input type="hidden" id="ids" name="S_ids">
                        </form>
                        <button type="button" class="btn btn-primary float-right" onclick="jiesuan_more()">
                           结算
                        </button>

                    </div>
                </div>
                <!-- /.card-body -->
            </div>
            <!-- /.card -->

        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

</div>
<script type="text/javascript" >
    var checkbox;
    var s_much;
    var s_price;
    var total = Number($(".total").text());
    // alert("total:"+total);

    // //声明空的数组
    // let S_ids = [];
    //ajax请求失败
    function jiesuan_more(id) {
        let S_ids = [];
        var checkbox = $(".checkbox_my");
        console.log("checkbox:"+checkbox);
        console.log("checkbox:"+checkbox.length);
        for (let i = 0; i < checkbox.length; i++) {
            if (checkbox[i].checked===true) {
                console.log("进入for");
                var id= document.getElementsByName("medicine_id")[i].value;
                console.log("id"+id);
                S_ids.push(id);
            }else {
                console.log("没有进入for");
            }
        }
        console.log("s_ids:"+S_ids.length);
        if (checkbox.length===0){
            alert("请勾选要结算的商品");
        }else {
            var form = document.getElementById("form");
            document.getElementById("ids").value=S_ids;
            form.submit();

    }
        function jiesuan(S_ids) {
            //home_change
            // var homeadmine= $("#home_change").text();
            $.ajax({
                type:"POST",
                url:"${pageContext.request.contextPath}/shoppingcart/jiesuan_action",
                dataType: 'json',
                contentType: 'application/json',
                data:JSON.stringify({
                    "S_ids":S_ids
                }),
                success:function(data) {
                    // alert("数据请求成功==");
                    // console.log(dataa);
                    var objs=eval(data); //解析json对象
                    // alert(objs);
                    alert(objs.msg);
                },
                error:function() {
                    alert("数据请求失败==");
                }
            });
        }
        //在数组添加数据，省略......
        //发送post请求
        // $.ajax({
        //     method:"post",
        //     url:"/shoppingcart/jiesuan_action",
        //     dataType: "json",
        //     data: JSON.stringify(S_ids),  //这里需要将参数，序列化成为json数据
        //     headers:{
        //         'Content-Type':'application/json;charset=UTF-8',
        //     },
        //     success: function (data, status, xhr) {
        //         //请求成功执行操作
        //         console.println("success")
        //     },
        //     error: function (error) {
        //         //请求失败后的回调方法
        //         console.log(error)
        //     }
        // });

    }
    function test(S_ids){
    var xhr = new XMLHttpRequest();
    xhr.open("POST", "/shoppingcart/jiesuan_action", true);
    xhr.setRequestHeader('content-type', 'application/json');

    var sendData = {"S_ids":S_ids};
//将用户输入值序列化成字符串
    xhr.send(JSON.stringify(sendData));
}
    //ajax请求失败/




    function add(i){
        checkbox = $(".checkbox_my")[i];
        // alert("chenck:"+checkbox);

        if (checkbox.checked===true){
            s_much= Number($(".s_much")[i].innerText);
            s_price= Number($(".s_price")[i].innerText);
            // console.log("s_price"+s_price);
            total = total +(s_much*s_price);

            // console.log("total1111111111"+total);
            $(".total").text(total);

        }else if (checkbox.checked===false) {
            s_much= Number($(".s_much")[i].innerText);
            s_price= Number($(".s_price")[i].innerText);
            // console.log("s_price"+s_price);
            total = total -(s_much*s_price);

            // console.log("total22222"+total);
            $(".total").text(total);
        }
    }

    function checkall(){
        checkboxall = $(".checkbox_all");
        var check_single = $(".form-check");
        if (checkboxall[0].checked===true){
            for (let i = 1; i < check_single.length; i++) {
                if ( check_single[i].checked!==true){
                    check_single[i].checked=true;
                    add(i-1);
                }
                console.log(check_single[i].checked)

            }

        }else {
            for (let i = 1; i < check_single.length; i++) {
                if ( check_single[i].checked===true){
                    check_single[i].checked=false;
                    add(i-1);
                }
                check_single[i].checked=false;
                console.log(check_single[i].checked)
                console.log("length"+check_single);
            }
        }
    }
</script>
<script src="../../plugins/jquery/jquery.min.js"></script>

</body>
</html>
