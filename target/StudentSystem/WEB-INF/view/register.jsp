<%--
  Created by IntelliJ IDEA.
  User: NOTEBOOK
  Date: 2019/4/12
  Time: 9:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>注册</title>

    <script src="https://cdn.bootcss.com/jquery/2.2.4/jquery.min.js"></script>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/style.css">

    <style type="text/css">
        body{
            background: url("<%=request.getContextPath()%>/img/background_pic/3.jpg");

        }

        .form{background: rgba(255,255,255,0.2);width:400px;margin:120px auto;}
        /*阴影*/
        .fa{display: inline-block;top: 27px;left: 6px;position: relative;color: #ccc;}
        input[type="text"],input[type="password"]{padding-left:26px;}
        .checkbox{padding-left:21px;}

    </style>

</head>
<body>
<div class="container">
    <div class="form row">
        <div class="form-horizontal col-md-offset-3" id="login_form">
            <form action="/user/register.do" method="post">
                <h3 class="form-title">注册</h3>
                <div class="col-md-9">
                    <label>姓名</label>
                    <div class="form-group">

                        <input class="form-control required" type="text" placeholder="Username"  name="username" autofocus="autofocus" maxlength="20"/>
                    </div>
                    <label>邮箱</label>
                    <div class="form-group">
                        <i class="fa fa-lock fa-lg"></i>
                        <input class="form-control required" type="text" placeholder="Email Address" name="address" maxlength="20"/>
                    </div>
                    <label>学号</label>
                    <div class="form-group">

                        <input class="form-control required" type="text" placeholder="Student Number" name="student_number" maxlength="20"/>
                    </div>
                    <label>密码</label>
                    <div class="form-group">

                        <input class="form-control required" type="password" placeholder="Password" maxlength="20"/>
                    </div>
                    <label>确认密码</label>
                    <div class="form-group">

                        <input class="form-control required" type="password" placeholder="Password" name="password" maxlength="20"/>
                    </div>
                    <div class="form-group col-md-offset-9">
                        <button type="submit" class="btn btn-success pull-right" name="submit">登录</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>