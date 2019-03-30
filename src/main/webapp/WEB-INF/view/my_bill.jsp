<%--
  Created by IntelliJ IDEA.
  User: NOTEBOOK
  Date: 2019/3/30
  Time: 12:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<html>
<head>
    <title>社团缴费</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/themify-icons.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/et-line.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/bootstrap-select.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/plyr.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/flag.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/slick.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/owl.carousel.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/main.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/responsive.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/font-awesome.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/js/jquery.min.js">
</head>
<body>
<jsp:include page="top_base.jsp"></jsp:include>
<div class="container">
    <div class="col-lg-12" style="margin-top: 20px">

        <div class="contain-inner-section">

            <div class="row">

                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="section-header">

                        <p>社团缴费列表</p>
                    </div>
                    <div class="section-body">

                        <div class="table-responsive">
                            <table id="edit-table1" class="table table-striped table-editing" style="cursor: pointer;">
                                <thead>

                                <tr>
                                    <th>社团名称</th>
                                    <th>缴费金额</th>
                                    <th>缴费状态</th>
                                </tr>

                                </thead>
                                <tbody>
                                <c:forEach items="${list}" var="item1">
                                    <tr>
                                        <td tabindex="1">${item1.associate_name}</td>
                                        <td tabindex="1">${item1.cost}</td>
                                        <td tabindex="1" style="color: #2e2b2b;"><c:if test="${item1.state eq 1}">已缴费</c:if><c:if test="${item1.state eq 0}"><button onclick="createOrder(${item1.member_id},${item1.cost})" style="color: #db4c4c;">未缴费</button></c:if></td>
                                    </tr>

                                </c:forEach>
                                </tbody>

                            </table>
                            <input style="position: absolute; display: none;"></div>


                    </div>
                </div>

            </div>
        </div>

    </div>
</div>
<hr class="hr new-block">
<input type="hidden" id="hdnContextPath" name="hdnContextPath" value="<%=request.getContextPath() %>"/>
<jsp:include page="foot_base.jsp"></jsp:include>
</body>
</html>
<script type="text/javascript">


    var hdnContextPath = $("#hdnContextPath").val();

    function createOrder(obj1,obj2) {
        $.ajax({
            url: hdnContextPath + "/alipay/createOrder.action",
            type: "POST",
            data: {"member_Id": obj1, "cost": obj2},
            dataType: "json",
            success: function(data) {
                if(data.status == 200 && data.msg == "OK") {
                    debugger;
                    // 提交订单成功后, 进入购买页面
                    window.location.href = hdnContextPath + "/alipay/goAlipay.action?order_id=" + data.data;
                } else {
                    alert(data.msg);
                    console.log(JSON.stringify(data));
                }
            }
        });
    }

</script>
