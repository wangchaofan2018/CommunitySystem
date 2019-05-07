<%--
  Created by IntelliJ IDEA.
  User: NOTEBOOK
  Date: 2019/3/11
  Time: 20:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The  above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Sticky Footer Navbar Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->

    <!-- Custom styles for this template -->

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

<!-- Fixed navbar -->
<nav class="navbar navbar-inverse navbar-static-top " style="margin-bottom: 0px" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand navbar-left " href="#"><img src="<%=request.getContextPath()%>/img/logo.png"></a>
        </div>
        <div class="navbar-text ">
            <ul class="nav navbar-nav navbar-left  ">

                <c:if test="${user.role eq 'normal'}"><li class="active "><a href="/user/home.do?p=1">首页</a></li></c:if>
                <c:if test="${user.role eq 'normal'}"><li class=""><a href="/associate/recommend.do?p=1" >社团介绍</a></li></c:if>
                <c:if test="${user.role eq 'normal'}"><li class=""><a href="/associate/active.do?user_id=${user.id}">社团活动</a></li></c:if>
                <li class=""><a href="#">社联公告</a></li>
                <c:if test="${user.role eq 'normal'}"><li class=""><a href="/associate/manager.do">管理者中心</a></li></c:if>
                <c:if test="${user.role eq 'normal'}"><li class=""><a href="/associate/my_apply.do?user_id=${user.id}">我的申请</a></li></c:if>
                <c:if test="${user.role eq 'normal'}"><li class=""><a href="/associate/my_bill.action?user_id=${user.id}">缴费清单</a></li></c:if>
                <li class=""><c:if test="${user.role eq 'associate'}"><a href="/associate/article_create_page.do">文章发布</a></c:if></li>
                <li class=""><c:if test="${user.role eq 'associate'}"><a href="/associate/activity_create_page.do">活动发布</a></c:if></li>
                <!-- <li class="">
                    
                    <form class="navbar-form " action="#"><div class="form-group"><input class="form-control" type="text" name="search" placeholder="search" /></div>
                        <button type="button" class="btn btn-default navbar-btn">
                            get
                        </button>
                    </form>

                </li>-->
                <li class="navbar-right "><a href="#"><i class="icon-bell-alt"></i>&nbsp通知</a></li>
                <li class="navbar-right "><a href="javascript:" class="dropdown" data-toggle="dropdown" ><i class="icon-user"></i>&nbsp${user.username}</a>
                    <ul class="dropdown-menu">
                        <li><a href="/user/inform.do" class="waves-effect waves-light">
                            <i class="glyphicon glyphicon-user" aria-hidden="true"></i>&nbsp&nbspProfile</a>
                        </li>
                        <li><a href="javascript:" class="waves-effect waves-light">
                            <i class="glyphicon glyphicon-cog" aria-hidden="true"></i>&nbsp&nbspSettings</a>
                        </li>
                        <li><a href="javascript:" class="waves-effect waves-light">
                            <i class="glyphicon glyphicon-lock" aria-hidden="true"></i>&nbsp&nbspLock screen</a>
                        </li>
                        <li role="separator" class="divider"></li>
                        <li><a href="/user/logout.do" class="waves-effect waves-light">
                            <i class="glyphicon glyphicon-log-out text-danger" aria-hidden="true"></i>&nbsp&nbspLogout</a>
                        </li>
                    </ul>

                </li>
                <li><div class="dropdown user-profile right-icon open">
                </div></li>
            </ul>
        </div>





    </div>
</nav>





</body>
</html>

