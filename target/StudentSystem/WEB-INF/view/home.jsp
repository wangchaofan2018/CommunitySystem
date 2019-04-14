<%--
  Created by IntelliJ IDEA.
  User: NOTEBOOK
  Date: 2019/3/11
  Time: 20:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" import="java.util.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/responsive.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/font-awesome.css">
    
    
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>

    <![endif]-->
</head>

<body>

<!-- Fixed navbar -->
<jsp:include page="top_base.jsp" flush="true"></jsp:include>

<section class="page-info new-block">
    <div class="fixed-bg" style="background:url('/img/background_pic/page-info-bg-1.png');"></div>
    <div class="overlay"></div>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                        <div class="inner-wrapper">
                            <h2 class="clr1">搜索文章</h2>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control " placeholder="Search by Name">
                            <a href="#" class="sarch-member-btn"><i class="flaticon-search"></i></a>
                        </div>
                    </div>
        </div>
    </div>
</section>

<!-- Begin page content -->
<div class="container">


<c:forEach items="${articlePage.list}" var="article" >
                    <div class="col-lg-12">
                        <div class="blogs">
                            <div class="img-holder">
                                <img src="${article.img_url}" alt="" class="img-responsive">
                            </div>
                            <div class="blog-txt">
                                <div class="inner-txt-block">
                                    <a href="#"><h2>${article.article_name}</h2></a>
                                    <ul class="list-unstyled profile-contact">
                    <li><a href="#"><i class="icon-user"></i>${article.username}</a></li>
                                        <jsp:useBean id="dateValue" class="java.util.Date"/>
                                        <jsp:setProperty name="dateValue" property="time" value="${article.time_stamp}000"/>
                    <li><a href="#"><i class="icon-time"></i><fmt:formatDate value="${dateValue}" pattern="yyyy/MM/dd HH:mm"/></a></li>
                    <li><a href="#"><i class="icon-heart"></i>${article.like_count}</a></li>
                    <li><a href="#"><i class="icon-comments"></i>${article.reply_count}</a></li>
                </ul>
                                    <p>${article.recommend} </p>
                                    <button class="btn btn-default"><a href="/article/articleContent.do?title_id=${article.title_id}">read more</a></button>
                                </div>
                            </div>
                        </div>
                    </div>
</c:forEach>
<h5 class="page-header"></h5>
<nav style="text-align: center">
    <ul class="pagination">
    <li><c:if test="${articlePage.curPage-1>0}"><a href="/user/home.do?p=${articlePage.curPage-1}">&laquo;</a></c:if></li>
        <c:forEach begin="${articlePage.curPage-3>0?articlePage.curPage-3:1}" end="${articlePage.curPage+2<articlePage.totalPage?articlePage.curPage+2:articlePage.totalPage}" step="1" var="x">
    <li>
        <c:if test="${articlePage.curPage eq x}"><a   href ="javascript:return false;" onclick="return false;" style="cursor: default;"><i class="edit" style="opacity: 0.2">${x}</i></a></c:if>
        <c:if test="${articlePage.curPage ne x}"><a href="/user/home.do?p=${x}">${x}</a></c:if>
    </li>
        </c:forEach>
    <li>
        <c:if test="${articlePage.curPage+1<=articlePage.totalPage}"><a href="/user/home.do?p=${articlePage.curPage+1}">&raquo;</a></c:if>
    </li>

</ul>
</nav>


<jsp:include page="foot_base.jsp" flush="true"></jsp:include>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
</body>
</html>

