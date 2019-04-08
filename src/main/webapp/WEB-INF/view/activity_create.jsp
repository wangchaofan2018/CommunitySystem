<%--
  Created by IntelliJ IDEA.
  User: NOTEBOOK
  Date: 2019/4/8
  Time: 12:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>活动发布页面</title>
    <link href="<%=request.getContextPath()%>/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="<%=request.getContextPath()%>/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">

    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">




</head>
<body>
<jsp:include page="top_base.jsp"></jsp:include>



<div class="container-fluid right_color" style="min-height: 604.6px;">

    <div class="contain-section">
        <div class="contain-inner-section">

            <div class="row">

                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12 col-lg-offset-2 col-md-offset-2" style="margin-top: 20px">

                    <div class="section-body">



                        <form action="/associate/activity_create.do" method="POST" class="has-validation-callback" enctype="multipart/form-data">
                            <input type="hidden" name="associate_id" value=${user.id}>

                            <div class="col-lg-12">
                                <label>活动名称</label>
                                <div class="form-group" style="margin-top: 10px">
                                    <input class="form-control" data-validation="sign" type="text" name="activity_name" placeholder=" would you want say">
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <label>活动时间</label>
                                <%--<div class="form-group date" style="margin-top: 10px" >--%>
                                    <%--<input class="form-control datetimepicker"  type="text" name="activity_time" id="activity_time"  >--%>

                                <%--</div>--%>
                                <div class="input-group date form_date" data-date="" data-date-format="yyyy-mm-dd hh:ii" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd hh:ii">
                                    <input class="form-control" size="16" type="text" value="" readonly="" name="activity_time">
                                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                                    <span class="input-group-addon"><span class="glyphicon glyphicon-time"></span></span>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <label>活动内容</label>
                                <div class="form-group" style="margin-top: 10px">
                                    <textarea name="activity_content" class="form-control" rows="8"></textarea>
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
    <script type="text/javascript" src="<%=request.getContextPath()%>/jquery/jquery-1.8.3.min.js" charset="UTF-8"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap-datetimepicker.min.js" charset="UTF-8"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
    <script type="text/javascript">

        $('.form_date').datetimepicker({
            language:  'zh-CN',
            weekStart: 1,
            todayBtn:  1,
            autoclose: 1,
            todayHighlight: 1,
            startView: 1,
            minView: 0,
            maxView: 1,
            forceParse: 0
        });

    </script>

    <jsp:include page="foot_base.jsp"></jsp:include>

</body>
</html>
