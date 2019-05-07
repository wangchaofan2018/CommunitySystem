<%--
  Created by IntelliJ IDEA.
  User: NOTEBOOK
  Date: 2019/3/22
  Time: 17:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/left_menu_layout.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/components.min.css">
</head>
<body>
<div class="container-fluid right_color" style="min-height: 636.6px;">
    <div class="page-main-header">
        <!-- Page Title -->
        <h2 class="page-name-title">Manager</h2>
        <!--  Breadcrumb -->
        <!--<ol class="breadcrumb">
            <li><a href="#">Home</a></li>
            <li class="text-info">Tables</li>
            <li class="active">Edit Table</li>
        </ol>-->
    </div>

    <div class="contain-section">
        <div class="contain-inner-section">

            <div class="row">

                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="section-header">
                        <h2>社团申请审核</h2>
                        <p>请判断社团申请是否合理并检查是否满足条件！</p>
                        <a href="/user/login.do" class="col-lg-offset-4">返回普通用户登录页面</a>
                    </div>
                    <div class="section-body">

                        <div class="table-responsive">
                            <table id="edit-table" class="table table-striped table-editing" style="cursor: pointer;">
                                <thead>
                                <tr>
                                    <th>申请名称</th>
                                    <th>申请口号</th>
                                    <th>申请简介</th>
                                    <th>申请人昵称</th>
                                    <th>操作</th>


                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${list}" var="view">
                                <tr>
                                    <td tabindex="1">${view.associate_name}</td>
                                    <td tabindex="1">${view.recommend_word}</td>
                                    <td tabindex="1">${view.recommend}</td>
                                    <td tabindex="1">${view.username}</td>
                                    <td tabindex="1"><a href="/associate/admin_isAgree.do?id=${view.associate_id}&flag=true&email=${view.email}&username=${view.username}&associate_name=${view.associate_name}"> <button class="btn-default">批准</button></a>   <a href="/associate/admin_isAgree.do?id=${view.associate_id}&flag=false&email=${view.email}&username=${view.username}&associate_name=${view.associate_name}"> <button class="btn-default">否决</button></a></td>
                                </tr>
                                </c:forEach>
                                </tbody>
                                <!--<tfoot>
                                <tr>
                                    <th><strong>TOTAL</strong></th>
                                    <th>1290</th>
                                    <th>1420</th>
                                    <th>5</th>
                                </tr>
                                </tfoot>-->
                            </table>
                            <input style="position: absolute; display: none;"></div>

                    </div>
                </div>

            </div>
        </div>
    </div>

</div>
</body>
</html>
