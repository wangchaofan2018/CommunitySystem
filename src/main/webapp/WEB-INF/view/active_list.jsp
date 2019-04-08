<%--
  Created by IntelliJ IDEA.
  User: NOTEBOOK
  Date: 2019/4/6
  Time: 14:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>社团最近活动</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/flaticon.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/components.min.css">
    <script type="text/javascript">
        function fun(obj) {
            document.getElementById(obj).className="list-group-item active"
        }
        function fun1(obj) {
            document.getElementById(obj).className="list-group-item"
        }
    </script>
</head>
<body>
<jsp:include page="top_base.jsp"></jsp:include>
<div class="container-fluid right_color" style="min-height: 685.4px;">
    <div class="page-main-header">
        <!-- Page Title -->
        <h2 class="m-auto">列表</h2>
        <!--  Breadcrumb -->

    </div>

    <div class="contain-section button-page-section">
        <div class="contain-inner-section">
            <!-- Start container -->
            <div class="row">


                <div class="clearfix visible-lg-block"></div>

                <!--
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

                    <div class="section-header">
                        <h2>Disabled items</h2>
                        <p>Add <code>.disabled</code> to a <code>.list-group-item</code> to gray it out to appear disabled.</p>
                    </div>
                    <div class="section-body">
                        <div class="list-group">
                            <a class="list-group-item disabled">
                                Cras justo odio
                            </a>
                            <a class="list-group-item">Dapibus ac facilisis in</a>
                            <a class="list-group-item">Morbi leo risus</a>
                            <a class="list-group-item">Porta ac consectetur ac</a>
                            <a class="list-group-item">Vestibulum at eros</a>
                        </div>
                    </div>

                </div>

                <div class="clearfix visible-md-block"></div>
                -->




                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

                    <div class="section-header">
                        <h2>快来看看最近社团有哪些活动吧！</h2>
                        <p>在这里你可以选择参与是否参与你们社团的活动，(点击即参与) 在你选择参与后我们会给你发送一条提醒邮件.</p>
                    </div>
                    <div class="section-body">
                        <div class="list-group custom-content">
                            <c:forEach items="${list}" var="item">
                                <a class="list-group-item" id="${item.activity_id}" onmouseover="fun(${item.activity_id})" onmouseout="fun1(${item.activity_id})" href="/associate/join_activity.do?activity_id=${item.activity_id}&user_id=${user.id}">
                                    <jsp:useBean id="dateValue1" class="java.util.Date"/>
                                    <jsp:setProperty name="dateValue1" property="time" value="${item.activity_time}000"/>
                                    <h4 class="list-group-item-heading">${item.associate_name}&nbsp:&nbsp${item.activity_name}</h4>
                                    <h5>Time:<fmt:formatDate value="${dateValue1}" pattern="yyyy/MM/dd HH:mm"/></h5>
                                    <p class="list-group-item-text">${item.activity_content}</p>
                                </a>
                            </c:forEach>
                            <%--<a class="list-group-item">--%>
                            <%--<h4 class="list-group-item-heading">List group item heading</h4>--%>
                            <%--<p class="list-group-item-text">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>--%>
                            <%--</a>--%>
                        </div>
                    </div>

                </div>

                <div class="clearfix visible-lg-block visible-md-block"></div>

                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

                    <div class="section-header">
                        <h2>已参加的活动</h2>
                        <p></p>
                    </div>
                    <div class="section-body">
                        <div class="list-group custom-content">
                            <c:forEach items="${list2}" var="item">
                                <a class="list-group-item"  href="#">
                                    <jsp:useBean id="dateValue" class="java.util.Date"/>
                                    <jsp:setProperty name="dateValue" property="time" value="${item.activity_time}000"/>
                                    <h4 class="list-group-item-heading">${item.associate_name}&nbsp:&nbsp${item.activity_name}</h4>
                                    <h5>Time:<fmt:formatDate value="${dateValue}" pattern="yyyy/MM/dd HH:mm"/></h5>
                                    <p class="list-group-item-text">${item.activity_content}</p>
                                </a>
                            </c:forEach>
                            <%--<a class="list-group-item">--%>
                            <%--<h4 class="list-group-item-heading">List group item heading</h4>--%>
                            <%--<p class="list-group-item-text">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>--%>
                            <%--</a>--%>
                        </div>
                    </div>

                </div>

                <div class="clearfix visible-lg-block visible-md-block"></div>

            </div>
            <!-- End container -->
        </div>
    </div>

</div>
<jsp:include page="foot_base.jsp"></jsp:include>
</body>
</html>
