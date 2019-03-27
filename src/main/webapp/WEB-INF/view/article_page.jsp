<%--
  Created by IntelliJ IDEA.
  User: NOTEBOOK
  Date: 2019/3/17
  Time: 17:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/flaticon.css">
	<script type="text/javascript">
		function addValue(obj) {
			document.getElementById("reply_id").value=obj;
        }
	</script>
</head>
<body>
<jsp:include page="top_base.jsp"></jsp:include>
<section class="single-blog new-block">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="single-blog-wrapper new-block">
							<div class="img-holder">
								<img src="<%=request.getContextPath()%>${article.img_url}" alt="" class="img-responsive">
							</div>
							<div class="blog-txt">
								<div class="inner-txt-block">
									<a href="#"><h2> ${article.article_name}</h2></a>
									<ul class="list-unstyled profile-contact">
										<li><a href="#"><i class="icon-user"></i>${article.username}</a></li>
										<jsp:useBean id="dateValue" class="java.util.Date"/>
                                        <jsp:setProperty name="dateValue" property="time" value="${article.time_stamp}000"/>
                                        <li><a href="#"><i class="icon-time"></i><fmt:formatDate value="${dateValue}" pattern="yyyy/MM/dd HH:mm"/></a></li>
										<li><a href="#"><i class="icon-heart"></i>${article.like_count}</a></li>
										<li><a href="#"><i class="icon-comments"></i>${article.reply_count}</a></li>
									</ul>
									<p>${article.article_content}</p>

								</div>
							</div>
							<!--
							<div class="blog-info">
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla posuere, quam eu aliquet convallis, dolor metus vulputate eros, vitae condimentum nulla nunc nec eros. Mauris varius arcu a ultrices ullamcorper. Aliquam ultrices congue lacus eu posuere. In hac habitasse platea dictumst. Donec ut erat lobortis, feugiat arcu id, vestibulum sem. Nunc pulvinar eleifend est at consequat. </p>
							</div>
							<div class="blog-txt">
								<div class="inner-txt-block">
									<p>Maecenas bibendum turpis at purus facilisis lobortis. Integer vehicula odio elementum nisi tempor, a iaculis nulla auctor. Cras turpis turpis, pulvinar vel fringilla ornare, pellentesque quis elit. Nam interdum lobortis cursus. Nullam tincidunt eget mauris ac auctor.</p>
									<p>Phasellus interdum vitae risus vitae mattis. Nullam fringilla volutpat accumsan. Praesent interdum ex est, nec mollis urna mattis vitae. Mauris pretium elit id commodo ornare. Aenean fermentum velit sit amet lacus dignissim, eget ultrices sapien tempus. Nam enim tellus, iaculis id metus nec, pulvinar imperdiet nibh. Donec pretium suscipit lacinia. </p>
								</div>
							</div>
							-->
							
							
						</div><!-- single-blog-wrapper -->

						<div class="comments-block">
							<h2>评论:</h2>
                            <c:if test="${not empty comment_list}">
                                <c:forEach items="${comment_list}" var="comment">
							<div class="comment-box new-block">
								<div class="img-block">
									<div class="img-holder">
										<img src="<%=request.getContextPath()%>${comment.user_img_url}" alt="" class="img-responsive">
									</div>
								</div>
								<div class="comment">
									<p>${comment.comment_content}</p>
									<div class="about-commenter">
										<jsp:useBean id="dateValue1" class="java.util.Date"/>
										<jsp:setProperty name="dateValue1" property="time" value="${comment.comment_time}000"/>
                                        <p><span>${comment.user_name}</span><fmt:formatDate value="${dateValue1}" pattern="yyyy/MM/dd HH:mm"/><a href="#anchor" class="replay-btn" onclick="addValue(${comment.comment_id})"><i class="fa fa-share"></i> replay</a></p>
									</div>
								</div>
							</div>
                                    <c:if test="${not empty comment.children}">
                                        <c:forEach items="${comment.children}" var="child">
                                            <div class="replied new-block">
                                                <div class="comment-box new-block">
                                                    <div class="img-block">
                                                        <div class="img-holder">
                                                            <img src="<%=request.getContextPath()%>${child.user_img_url}" alt="" class="img-responsive">
                                                        </div>
                                                    </div>
                                                    <div class="comment">
                                                        <p>${child.comment_content}</p>
                                                        <div class="about-commenter">
															<jsp:useBean id="dateValue2" class="java.util.Date"/>
															<jsp:setProperty name="dateValue2" property="time" value="${child.comment_time}000"/>
                                                            <p><span>${child.user_name}</span><fmt:formatDate value="${dateValue2}" pattern="yyyy/MM/dd HH:mm"/><!--<a href="#" class="replay-btn"><i class="fa fa-share"></i> replay</a>--></p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:forEach>
                                    </c:if>
                                    <hr class="hr new-block">
                                </c:forEach>
                            </c:if>
							

							<!-- hr -->
							<!--
							<div class="comment-box new-block">
								<div class="img-block">
									<div class="img-holder">
										<img src="<%=request.getContextPath()%>/img/person/default_user.jpg" alt="" class="img-responsive">
									</div>
								</div>
								<div class="comment">
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec tempor aliquam nulla, eu tempor felis elementum eget. In dapibus pharetra dignissim. Nam mattis odio nisl, eget imperdiet leo fringilla eu. </p>
									<div class="about-commenter">
										<p><span>Jacob Shah</span> - 2 Day Ago <a href="#" class="replay-btn"><i class="fa fa-share"></i> replay</a></p>
									</div>
								</div>
							</div>
							-->
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="leave-replay new-block" name = "anchor" id="anchor">
			<div class="container">
				<div class="row">
					<div class="col-lg-12" >
						<div class="title2">
							<h2 class="fz35">Leave &amp; Reply</h2>
							<div class="clearfix"></div>
							<p class="fz20">Aliquam a neque tortor. Donec iaculis auctor turpis. Eporttitor<br> mattis ullamcorper urna. Cras quis elementum</p>
						</div>
					</div>
					<div class="col-lg-12">
						<form action="/article/commentInsert.do" method="post">
							<div class="row" >

                                        <input type="hidden" name="user_id" value="${user.id}">
                                        <input type="hidden" name="article_id" value="${article.title_id}">
                                        <input type="hidden" id="reply_id" name="reply_id" value=0>


								<div class="col-lg-12">
									<div class="from-group">
										<textarea name="comment_content" class="form-control" placeholder="Type your comment.."></textarea>
									</div>
								</div>
								<div class="col-lg-12 text-center">
									<div class="from-group">
										<input href="#" class="btn btn-default" type="submit">Send</input>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</section>

<jsp:include page="foot_base.jsp"></jsp:include>
</body>
</html>
