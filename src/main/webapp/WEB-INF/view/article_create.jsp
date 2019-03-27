<%--
  Created by IntelliJ IDEA.
  User: NOTEBOOK
  Date: 2019/3/26
  Time: 9:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>文章发布页面</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/flaticon.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">

</head>
<body>
<jsp:include page="top_base.jsp"></jsp:include>



<div class="container-fluid right_color" style="min-height: 604.6px;">

    <div class="contain-section">
        <div class="contain-inner-section">

            <div class="row">

                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12 col-lg-offset-2 col-md-offset-2">

                    <div class="section-body">



                        <form action="/article/article_create.do" method="POST" class="has-validation-callback" enctype="multipart/form-data">
                            <input type="hidden" name="associate_id" value=${user.id}>
                            <input type="hidden" name="associate_name" value=${user.username}>
                            <div class="col-lg-12">
                            <label >上传封面照</label>
                            <div class="form-group file-control-upload" style="margin-top: 10px">
                                <input class="form-control-file" type="file" multiple="multiple" name="image" data-validation="length mime size" data-validation-length="min2" data-validation-allowing="jpg, png, gif" data-validation-max-size="512kb" data-validation-error-msg-size="You can not upload images larger than 512kb" data-validation-error-msg-mime="You can only upload images" data-validation-error-msg-length="You have to upload at least two images">
                            </div>
                            </div>
                            <div class="col-lg-12">
                                <label>文章标题</label>
                                <div class="form-group" style="margin-top: 10px">
                                    <input class="form-control" data-validation="sign" type="text" name="article_name" placeholder=" would you want say">
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <label>文章正文</label>
                                <div class="form-group" style="margin-top: 10px">
                                    <textarea name="article_content" class="form-control" rows="8"></textarea>
                                </div>
                            </div>



                            <div class="col-lg-12">
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary btn-outline float-button-light waves-effect waves-button waves-float waves-light">提交</button>
                            </div>
                            </div>
                        </form>

                    </div>
                </div>

            </div>
        </div>
    </div>
    <hr class="hr new-block">


<jsp:include page="foot_base.jsp"></jsp:include>
</body>
</html>
