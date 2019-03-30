<%--
  Created by IntelliJ IDEA.
  User: NOTEBOOK
  Date: 2019/3/25
  Time: 13:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<html>
<head>
    <title>我的申请页面</title>
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
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/jquery.nstSlider.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/main.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/responsive.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/font-awesome.css">
</head>
<body>
<jsp:include page="top_base.jsp"></jsp:include>
<div class="container">
    <div class="col-lg-12" style="margin-top: 20px">

        <div class="contain-inner-section">

            <div class="row">

                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="section-header">
                        <h2></h2>
                        <p>社团参加申请</p>
                    </div>
                    <div class="section-body">

                        <div class="table-responsive">
                            <table id="edit-table1" class="table table-striped table-editing" style="cursor: pointer;">
                                <thead>

                                <tr>
                                    <th>社团名称</th>
                                    <th>申请时间</th>
                                    <th>申请状态</th>
                                </tr>

                                </thead>
                                <tbody>
<c:forEach items="${list1}" var="item1">
                                <tr>
                                    <td tabindex="1">${item1.associate_name}</td>
                                    <jsp:useBean id="dateValue1" class="java.util.Date"/>
                                    <jsp:setProperty name="dateValue1" property="time" value="${item1.time_stamp}000"/>
                                    <td tabindex="1">${dateValue1}</td>
                                    <td tabindex="1"><c:if test="${item1.state eq 1}">已通过</c:if><c:if test="${item1.state eq -1}">未批准</c:if><c:if test="${item1.state eq 0}">审核中</c:if></td>
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
    <hr class="hr new-block">
    <div class="col-lg-12">
        <div class="contain-inner-section">

            <div class="row">

                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="section-header">
                        <h2></h2>
                        <p>社团创建申请</p>
                    </div>
                    <div class="section-body">

                        <div class="table-responsive">
                            <table id="edit-table" class="table table-striped table-editing" style="cursor: pointer;">
                                <thead>
                                <tr>
                                    <th>申请社团名称</th>
                                    <th>社团创办时间</th>
                                    <th>审核状态</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${list2}" var="item2">
                                    <tr>
                                        <td tabindex="1">${item2.associate_name}</td>
                                        <jsp:useBean id="dateValue2" class="java.util.Date"/>
                                        <jsp:setProperty name="dateValue2" property="time" value="${item2.time_stamp}000"/>
                                        <td tabindex="1">${dateValue2}</td>
                                        <td tabindex="1">${item2.state eq 1 ? "已通过":"审核中"}</td>
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
    <hr class="hr new-block">
    <div class="col-lg-12">
        <div class="contain-inner-section">

            <div class="row">

                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="section-header">
                        <h2></h2>
                        <p>社团学分统计</p>
                    </div>
                    <div class="section-body">

                        <div class="table-responsive">
                            <table id="edit-table2" class="table table-striped table-editing" style="cursor: pointer;">
                                <thead>
                                <tr>
                                    <th>社团名称</th>
                                    <th>社团学分</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${list3}" var="item3">
                                    <tr>
                                        <td tabindex="1">${item3.username}</td>

                                        <td tabindex="1">${item3.score}</td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                                <tfoot>
                                <tr>
                                    <th><strong>TOTAL</strong></th>
                                    <th>${total_score}</th>

                                </tr>
                                </tfoot>

                            </table>
                            <input style="position: absolute; display: none;"></div>

                    </div>
                </div>

            </div>
        </div>
    </div>
    <hr class="hr new-block">
</div>

<jsp:include page="foot_base.jsp"></jsp:include>
</body>
</html>
