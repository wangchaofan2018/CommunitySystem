<%--
  Created by IntelliJ IDEA.
  User: NOTEBOOK
  Date: 2019/3/25
  Time: 15:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<html>
<head>
    <title>社团管理页面</title>
    <script src="https://cdn.bootcss.com/jquery/2.2.4/jquery.min.js"></script>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
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
                        <p>社团申请请求处理</p>
                    </div>
                    <div class="section-body">

                        <div class="table-responsive">
                            <table id="edit-table1" class="table table-striped table-editing" style="cursor: pointer;">
                                <thead>

                                <tr>
                                    <th>申请人</th>
                                    <th>申请时间</th>
                                    <th>自我介绍</th>
                                    <th>申请原因</th>
                                    <th>操作</th>
                                </tr>

                                </thead>
                                <tbody>
                                <c:forEach items="${list}" var="item">
                                    <tr>
                                        <td tabindex="1">${item.username}</td>
                                        <jsp:useBean id="dateValue1" class="java.util.Date"/>
                                        <jsp:setProperty name="dateValue1" property="time" value="${item.time_stamp}000"/>
                                        <td tabindex="1">${dateValue1}</td>
                                        <td tabindex="1">${item.user_introduce}</td>
                                        <td tabindex="1">${item.user_reason}</td>
                                        <td tabindex="1"><a href="/associate/apply_is_agree.do?flag=true&apply_id=${item.apply_id}">同意  </a><a href="/associate/apply_is_agree.do?flag=false&apply_id=${item.apply_id}">拒绝</a> </td>
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
<jsp:include page="foot_base.jsp"></jsp:include>
</body>
</html>
