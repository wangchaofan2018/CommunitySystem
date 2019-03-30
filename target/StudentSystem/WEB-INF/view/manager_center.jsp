<%--
  Created by IntelliJ IDEA.
  User: NOTEBOOK
  Date: 2019/3/21
  Time: 15:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/flaticon.css">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="top_base.jsp"></jsp:include>
<div class="contact-us new-block pdtb-100">
    <div class="overlay"></div>
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-4">
                <a href="/associate/create_page.do">
                <div class="block-syl1">
                    <img src="<%=request.getContextPath()%>/img/people.png">
                    <p>社团创建</p>
                    <div class="contact-info">
                        <p>创建一个独一无二的社团</p>
                    </div>
                </div>
                </a>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4">
                <a href="/user/associate_login_page.do">
                <div class="block-syl1">
                    <img src="<%=request.getContextPath()%>/img/admin.png">
                    <p>社团管理</p>
                    <div class="contact-info">
                        <p>管理你的社团</p>
                    </div>
                </div>
                </a>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4">
                <a href="/user/admin_login_page.do">
                <div class="block-syl1">
                    <img src="<%=request.getContextPath()%>/img/admin2.png">
                    <p>系统管理</p>
                    <div class="contact-info">
                        <p>系统管理员入口</p>
                    </div>
                </div>
                </a>
            </div>
        </div>
    </div>
</div>
<jsp:include page="foot_base.jsp"></jsp:include>
</body>
</html>
