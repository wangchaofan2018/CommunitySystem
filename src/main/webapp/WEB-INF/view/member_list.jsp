<%--
  Created by IntelliJ IDEA.
  User: NOTEBOOK
  Date: 2019/5/16
  Time: 12:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<html>
<head>
    <title>社团成员管理</title>
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
                        <p>社团成员管理</p>
                    </div>
                    <div class="section-body">

                        <div class="table-responsive">
                            <table id="edit-table1" class="table table-striped table-editing" style="cursor: pointer;">
                                <thead>

                                <tr>
                                    <th>成员学号</th>
                                    <th>成员姓名</th>
                                    <th>活动参加次数</th>
                                    <th>成员状态</th>
                                    <th>操作栏</th>
                                </tr>

                                </thead>
                                <tbody>
                                <c:forEach items="${list}" var="item">
                                    <tr>
                                        <td tabindex="1">${item.user_number}</td>
                                        <td tabindex="1">${item.username}</td>
                                        <td tabindex="1">${item.active_number}</td>
                                        <td tabindex="1"><c:if test="${item.state eq 1}">已缴费</c:if><c:if test="${item.state eq 0}">未缴费</c:if><c:if test="${item.state eq -1}">已删除</c:if></td>
                                        <td tabindex="1"><a href="/associate/deleteMember.do?member_id=${item.member_id}&associate_id=${user.id}">删除</a> </td>
                                    </tr>
                                </c:forEach>
                                </tbody>

                            </table>
                            <input style="position: absolute; display: none;">
                            <a href="/associate/updateGraduateStudent.do?associate_id=${user.id}" class="button">一键更新毕业生</a>
                        </div>

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
