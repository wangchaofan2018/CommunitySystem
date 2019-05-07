<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: NOTEBOOK
  Date: 2019/3/17
  Time: 11:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>社团选择页面</title>
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
    <script type="text/javascript">
        function change(obj) {
            document.getElementById("associate_id").value=obj;
        }
    </script>
</head>
<body>
    <jsp:include page="top_base.jsp"></jsp:include>
    <div class="alice-bg section-padding-bottom">
        <div class="container">
            <div class="row no-gutters">
                <div class="col" style="margin-top: 50px;">
                    <div class="" >
                        <div class="filtered-job-listing-wrapper" style="padding-top: 20px;">
                            <div class="job-view-controller-wrapper">
                                <div class="job-view-controller">
                                    <div class="controller list active">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-menu"><line x1="3" y1="12" x2="21" y2="12"></line><line x1="3" y1="6" x2="21" y2="6"></line><line x1="3" y1="18" x2="21" y2="18"></line></svg>
                                    </div>
                                    <div class="controller grid">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-grid"><rect x="3" y="3" width="7" height="7"></rect><rect x="14" y="3" width="7" height="7"></rect><rect x="14" y="14" width="7" height="7"></rect><rect x="3" y="14" width="7" height="7"></rect></svg>
                                    </div>
                                    <div class="job-view-filter">
                                        <div class="dropdown bootstrap-select"><select class="selectpicker" >
                                            <option value="" selected="">人数最多</option>
                                            <option value="california">创建最久</option>
                                            <option value="las-vegas">活跃度最高</option>
                                        </select><button type="button" class="btn dropdown-toggle bs-placeholder btn-light" data-toggle="dropdown" role="button" title="Most Recent"><div class="filter-option"><div class="filter-option-inner"><div class="filter-option-inner-inner">排序方式</div></div> </div></button><div class="dropdown-menu " role="combobox"><div class="inner show" role="listbox" aria-expanded="false" tabindex="-1"><ul class="dropdown-menu inner show"></ul></div></div></div>
                                    </div>
                                </div>
                                <div class="showing-number">
                                    <span>共${length}个社团</span>
                                </div>
                            </div>
                            <div class="job-filter-result">
                                <c:forEach items="${associateViewPage.list}" var="item">
                                    <a href="/associate/introduce.do?id=${item.associate_id}">
                                <div class="job-list">
                                    <div class="thumb">
                                        <a href="/associate/introduce.do?id=${item.associate_id}">
                                            <img src="<%=request.getContextPath()%>${item.img_url}" class="img-fluid" alt="">
                                        </a>
                                    </div>
                                    <div class="body">
                                        <div class="content">
                                            <h4><a href="/associate/introduce.do?id=${item.associate_id}">${item.associate_name}</a></h4>
                                            <div class="info">
                                                <!--
                                                <span class="company"><a href="#"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-briefcase"><rect x="2" y="7" width="20" height="14" rx="2" ry="2"></rect><path d="M16 21V5a2 2 0 0 0-2-2h-4a2 2 0 0 0-2 2v16"></path></svg>Theoreo</a></span>
                                                <span class="office-location"><a href="#"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-map-pin"><path d="M21 10c0 7-9 13-9 13s-9-6-9-13a9 9 0 0 1 18 0z"></path><circle cx="12" cy="10" r="3"></circle></svg>New Orleans</a></span>
                                                <span class="job-type temporary"><a href="#"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-clock"><circle cx="12" cy="12" r="10"></circle><polyline points="12 6 12 12 16 14"></polyline></svg>Temporary</a></span>
                                                -->
                                                <p>${item.recommend_word}</p>
                                            </div>
                                        </div>
                                        <div class="more">
                                            <div class="buttons">
                                                <a data-toggle="modal" href="#apply_form" class="button" onclick="change(${item.associate_id})">现在申请</a>
                                                <a href="#" class="favourite"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-heart"><path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path></svg></a>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                    </a>
                                </c:forEach>
                            </div>
                            <div class="pagination-list text-center">
                                <nav class="navigation pagination">
                                    <div class="nav-links">
                                        <c:if test="${associateViewPage.curPage-1<=0}"><a   href ="javascript:return false;" onclick="return false;" style="cursor: default;"><i class="edit" style="opacity: 0.2"><i class="fas fa-angle-left"></i></i></a></c:if>
                                        <c:if test="${associateViewPage.curPage-1>0}"><a class="prev page-numbers" href="/associate/recommend.do?p=${associateViewPage.curPage-1}"><i class="fas fa-angle-left"></i></a></c:if>
                                        <c:forEach begin="${associateViewPage.curPage-3>0?associateViewPage.curPage-3:1}" end="${associateViewPage.curPage+2<=associateViewPage.totalPage?associateViewPage.curPage+2:associateViewPage.totalPage}" step="1" var="x">
                                        <c:if test="${x eq associateViewPage.curPage}">
                                            <span aria-current="page" class="page-numbers current">${x}</span>
                                        </c:if>
                                        <c:if test="${x ne associateViewPage.curPage}">
                                            <a class="page-numbers" href="/associate/recommend.do?p=${x}">${x}</a>
                                        </c:if>

                                        </c:forEach>

                                        <c:if test="${associateViewPage.curPage+1>associateViewPage.totalPage}"><a   href ="javascript:return false;" onclick="return false;" style="cursor: default;"><i class="edit" style="opacity: 0.2"><i class="fas fa-angle-right"></i></i></a></c:if>
                                        <c:if test="${associateViewPage.curPage+1<=associateViewPage.totalPage}"><a class="next page-numbers" href="/associate/recommend.do?p=${associateViewPage.curPage+1}"><i class="fas fa-angle-right"></i></a></c:if>
                                    </div>
                                </nav>
                            </div>
                        </div>
                        
                           
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
 <jsp:include page="foot_base.jsp"></jsp:include>
    <div class="modal fade" id="apply_form" role="dialog" aria-hidden="true" tabindex="-1" aria-labelledby="myModalLabel">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h5 class="modal-title" id="myModalLabel1">申请栏</h5>
                </div>
                <div class="modal-body">
                    <form class="" action="/associate/apply.do" >
                        <input type="hidden" name="user_id" value="${user.id}">
                        <input type="hidden" name="associate_id" value="" id="associate_id">
                        <label>自我介绍:</label>

                        <div class="form-group" style="margin-top: 14px">
                            <div class="input-group">
                                <textarea name="user_introduce"  cols="70" rows="8"></textarea>
                            </div>
                        </div>
                        <label>参加社团的原因:</label>
                        <div class="form-group" style="margin-top: 14px">
                            <div class="input-group">
                                <textarea name="user_reason"  cols="70" rows="8"></textarea>
                            </div>
                        </div>

                        <div></div>
                        <button class="button primary-bg btn-block" type="Submit">提交</button>
                    </form>
                </div>

            </div>
        </div>
    </div>
</body>
</html>
