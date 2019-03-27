<%--
  Created by IntelliJ IDEA.
  User: NOTEBOOK
  Date: 2019/3/21
  Time: 16:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>社团创建页面</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/flaticon.css">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/calendar.css">
    <script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/js/calendar.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/font-awesome.css">
    <script type="text/javascript">
        function message() {
            alert("请求已发送！ 管理员将于24小时内审核你的申请，并予以反馈。");
            //href.location="<%=request.getContextPath()%>/user/home.do";
        }
    </script>
</head>
<body>
<jsp:include page="top_base.jsp"></jsp:include>
<div class="contain-section">
    <div class="contain-inner-section">

        <div class="row">
        <form action="/associate/create_associate.do" method="post" enctype="multipart/form-data">

            <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12 col-lg-offset-2 col-md-offset-2">
                <div class="section-header">
                    <h2>社团申请</h2>
                    <input type="hidden" name="user_id" value="${user.id}">
                </div>
                <div class="section-body">
                    <label>社团名称</label>
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon text-warning"><i class=" icon-group"></i></span>
                            <input class="form-control" type="text" placeholder="" name="username">
                        </div>
                    </div>

                    <label>社团头像上传</label>
                    <div class="form-group">
                        <div class="input-group">

                            <input class="form-control-file" type="file" multiple="multiple" name="image" data-validation="length mime size" data-validation-length="min2" data-validation-allowing="jpg, png, gif" data-validation-max-size="512kb" data-validation-error-msg-size="You can not upload images larger than 512kb" data-validation-error-msg-mime="You can only upload images" data-validation-error-msg-length="You have to upload at least two images">
                        </div>
                    </div>

                    <label>社团邮箱(登陆账号)</label>
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon text-warning"><i class=" icon-envelope-alt"></i></span>
                            <input class="form-control" type="text" placeholder="" name="email_address">
                        </div>
                    </div>

                    <label>社团登陆密码</label>
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon text-warning"><i class="icon-key"></i></span>
                            <input class="form-control" type="text" placeholder="" name="password">
                            <!--<span class="input-group-addon text-warning"><i class="fa fa-diamond"></i></span>-->
                        </div>
                    </div>

                    <label>社团创建时间</label>
                    <div class="form-group">
                        <div class="input-group">

                            <div id="calendar" class="calendar"></div>

                            <input class="form-control" id="create_time" type="hidden"  name="create_time">
                        </div>
                    </div>

                    <label>社团口号</label>
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon text-warning"><i class=" icon-comments-alt"></i></span>
                            <input class="form-control" type="text" placeholder="" name="recommend_word">

                        </div>
                    </div>

                    <label>社团简介</label>
                    <div class="form-group">
                        
                            
                            <textarea name="recommend" class="form-control" placeholder="Type your associate.."></textarea>

                        
                    </div>




                    <div class="form-group">
                        <div class="input-group">
                            <input type="submit" class="btn btn-primary btn-lg float-button-light waves-effect waves-button waves-float waves-light" value="发送申请"  ></input>

                        </div>
                    </div>
                </div>
            </div>
        </form>

















        </div>
    </div>
</div>
<jsp:include page="foot_base.jsp"></jsp:include>
</body>
</html>
