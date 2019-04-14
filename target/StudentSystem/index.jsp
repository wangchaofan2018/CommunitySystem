<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script type="text/javascript">
        function register() {
            alert("一封激活邮件已发送至你的邮箱，请于24小时内确认！")
            document.getElementById("reg_form").submit;
        }
    </script>
</head>

<body>


<!-- Fixed navbar -->
<nav class="navbar navbar-inverse navbar-static-top " style="margin-bottom: 0px" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand navbar-left " href="#"><img src="./img/logo.png"></a>
        </div>
        <div class="navbar-text ">
            <ul class="nav navbar-nav   ">

                <li class="active "><a href="#">首页</a></li>
                <li class=""><a href="#" >社团介绍</a></li>
                <li class=""><a href="#">选课计划</a></li>
                <li class=""><a href="#">社区中心</a></li>
                <li class=""><a href="#">管理者中心</a></li>
                <!-- <li class="">
                    
                    <form class="navbar-form " action="#"><div class="form-group"><input class="form-control" type="text" name="search" placeholder="search" /></div>
                        <button type="button" class="btn btn-default navbar-btn">
                            get
                        </button>
                    </form>

                </li>-->
                
                <li><div class="dropdown user-profile right-icon open">
                </div></li>
            </ul>
        </div>
<ul class="nav navbar-nav navbar-right"> 
            <li><a data-toggle="modal" href="#register_form"><span class="glyphicon glyphicon-user"></span> rigistration</a></li> 
            <li><a data-toggle="modal" href="#login_form"><span class="glyphicon glyphicon-log-in"></span> login</a></li> 

        </ul> 




    </div>
</nav>
<!--
登陆模块框
 -->
<div class="modal fade" id="login_form" role="dialog" aria-hidden="true" tabindex="-1" aria-labelledby="myModalLabel">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h5 class="modal-title" id="myModalLabel1">MEMEBER LOGIN</h5>
                        </div>
                        <div class="modal-body">
                            <form class="" action="/user/checkUser.do" >
                                <label>学号</label>
                                <div class="form-group">
                                    <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                    <input class="form-control" type="text" name="student_number" placeholder="" />
                                    </div>
                                </div>
                                <label>密码</label>
                                <div class="form-group">
                                    <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                    <input class="form-control" type="password" name="password" placeholder="Pass Word" />
                                    </div>
                                </div>
                                <div class="more-option">
                                    <div class="form-check pull-left">
                                        <input class="form-check-input" type="checkbox" value id="check1"/>
                                        <label class="form-check-input">
                                            Remeber Me
                                        </label>
                                    </div>
                                    <a href="#" class="pull-right">forget Password?</a>
                                </div>
                                <div></div>
                                <button class="button primary-bg btn-block" type="Submit">Login</button>
                            </form>
                        </div>
                        
                    </div>
                </div>
            </div>
    <!--注册模块框 -->
<div class="modal fade" id="register_form" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                
                <h5 class="modal-title" id="myModalLabel"><span class="glyphicon glyphicon-edit"></span> MEMEBER REGISTER</h5>
            </div>
            <div class="modal-body">
                <form id="reg_form" action="/user/register.do" method="post">
                    <label>姓名</label>
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input class="form-control" type="text" value="" name="username" placeholder="Username">
                        </div>
                    </div>
                    
                    <label>邮箱</label>
                    <div class="form-group">
                        <div class="form-group">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                    <input class="form-control" type="email" value="" name="address" placeholder="Enter Email">
                                </div>
                        </div>
                    </div>
                    <label>学号</label>
                    <div class="form-group">
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                <input class="form-control"  value="" name="student_number" placeholder="Student Number">
                            </div>
                        </div>
                    </div>
                    <label>密码</label>
                    <div class="form-group">
                        <div class="form-group">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                                    <input class="form-control" type="password"  value="" placeholder="Enter Password">
                                </div>
                            </div>
                    </div>
                    <label>确认密码</label>
                    <div class="form-group">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                                    <input class="form-control" type="password" name="password" value="" placeholder="Enter Confirm Password">
                                </div>
                            </div>

                    <div></div>
                    <div class="more-option terms">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value id="check2" />
                            <label class="form-check-label" for="check2">
                                I accept the <a href="#">conditions</a>
                            </label>
                        </div>
                        <div></div>
                        <button class="button primary-bg btn-block" id="reg" type="submit" >Register</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- Begin page content -->
<div class="container">
    <div class="page-header">
        <h1>Sticky footer with fixed navbar</h1>
    </div>
    <p class="lead">Pin a fixed-height footer to the bottom of the viewport in desktop browsers with this custom HTML and CSS. A fixed navbar has been added with <code>padding-top: 60px;</code> on the <code>body &gt; .container</code>.</p>
    <p>Back to <a href="../sticky-footer">the default sticky footer</a> minus the navbar.</p>
</div>

<footer class="footer">
    <div class="container">
        <p class="text-muted">Place sticky footer content here.</p>
    </div>
</footer>


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
</body>
</html>
