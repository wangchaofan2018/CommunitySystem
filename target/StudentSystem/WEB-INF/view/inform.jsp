<%--
  Created by IntelliJ IDEA.
  User: NOTEBOOK
  Date: 2019/3/12
  Time: 15:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Your Message</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/flaticon.css">
        <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
<jsp:include page="top_base.jsp"></jsp:include>

<div class="container-fluid right_color" style="min-height: 604.6px;">
    <div class="page-main-header"> 
        <!-- Page Title -->
        <h2 class="page-name-title">个人信息更新</h2>
        
    </div>
<hr class="hr new-block">
    <div class="contain-section">
        <div class="contain-inner-section">

            <div class="row">

                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12 col-lg-offset-2 col-md-offset-2">
                    <div class="section-header">
                        <h2>${user.username}</h2>
                        <p>修改邮箱或密码 </p>
                    </div>
                    <div class="section-body">

                        <form action="/user/passwordUpdate.do" method="POST" class="has-validation-callback">

                            


                            <label>Email Address</label>
                            <div class="form-group">
                                <input class="form-control" data-validation="email" name="email" value="${user.email}"  placeholder="${user.email}">
                            </div>

                            <label>reset your Password</label>
                            <div class="form-group">
                                <input class="form-control" name="password" type="text" placeholder="${user.password}">
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary">重置密码</button>
                            </div>
                        </form>
                            <ul class="nav nav-list"><li class="divider"></li></ul>
                            <h5 class="page-header"></h5>
                            <form action="/user/userMessageUpdate.do" method="POST" class="has-validation-callback" enctype="multipart/form-data">
                            <input type="hidden" name="email" value=${user.email}> 
                            <label>上传头像</label>
                            <div class="form-group file-control-upload">
                                <input class="form-control-file" type="file" multiple="multiple" name="image" data-validation="length mime size" data-validation-length="min2" data-validation-allowing="jpg, png, gif" data-validation-max-size="512kb" data-validation-error-msg-size="You can not upload images larger than 512kb" data-validation-error-msg-mime="You can only upload images" data-validation-error-msg-length="You have to upload at least two images">
                            </div>
                                <div class="col-xs-4">
                                <label>用户学号</label>
                                <div class="form-group">
                                    <input class="form-control" data-validation="sign" type="text" name="student_number" placeholder=" would you want say">
                                </div>
                                </div>
                            <div class="col-xs-4">
                            <label>用户性别</label>
                            <div class="form-group ">
                                <div class="control-group">
                                    <label class="control control-radio control-inline">Male&nbsp&nbsp&nbsp&nbsp
                                        <input type="radio" name="radio1" checked="checked" value="0">
                                        <span class="control-indicator"></span>
                                    </label>
                                    <label class="control control-radio control-inline">Female
                                        <input type="radio" name="radio1" value="1">
                                        <span class="control-indicator"></span>
                                    </label>
                            </div>
                            </div>
                            </div>
                            <div class="col-xs-4">
                                <label>年龄</label>
                                <div class="form-group">
                                <input class="form-control" name="age"  type="text" placeholder="18">
                            </div>
                            </div>

                            <div class="col-xs-4">
                                <label>电话</label>
                                <div class="form-group">
                                <input class="form-control" name="phone_number" type="text" placeholder="180********">
                            </div>
                            </div>
                                <div class="col-xs-4">
                            <label>住址</label>
                            <div class="form-group">
                                <input class="form-control" name="address" data-validation="length" data-validation-length="50-100" type="text" placeholder="">
                            </div>
                                </div>
                                <div class="col-xs-4">
                            <label>个性签名</label>
                            <div class="form-group">
                                <input class="form-control" data-validation="sign" type="text" name="sign" placeholder=" would you want say">
                            </div>
                                </div>
                            

                            

                            <div class="form-group">
                                <button type="submit" class="btn btn-primary btn-outline float-button-light waves-effect waves-button waves-float waves-light">提交</button>
                            </div>
                        </form>

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
