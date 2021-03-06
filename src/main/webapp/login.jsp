<%--
  Created by IntelliJ IDEA.
  User: 小飞侠666
  Date: 2019/12/3
  Time: 22:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html  lang="en">

<head>
    <!-- meta data -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!--font-family-->
    <!--		<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&amp;subset=devanagari,latin-ext" rel="stylesheet">-->

    <!-- title of site -->
    <title>Sign in</title>

    <!-- For favicon png -->
    <link rel="shortcut icon" type="image/icon" href="logo/favicon.png"/>

    <!--font-awesome.min.css-->
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <!--animate.css-->
    <link rel="stylesheet" href="css/animate.css">

    <!--bootstrap.min.css-->
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <!-- bootsnav -->
    <link rel="stylesheet" href="css/bootsnav.css" >

    <!--style.css-->
    <link rel="stylesheet" href="css/style.css">

    <!--responsive.css-->
    <link rel="stylesheet" href="css/responsive.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->

    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script language="JavaScript">
        function cc() {
            if(${requestScope.message!=null})alert('${requestScope.message}');
        }

        function check() {
            let username = document.getElementById("username").value;
            let password = document.getElementById("password").value;
            username = String(username);
            password = String(password);
            var val =  $('input:radio:checked').val();
            if (username ==="") {
                alert("username不能为空");
            } else if (password==="") {
                alert("password不能为空");
            }
            else {
                $('#myform1').submit();
            }
        }
    </script>
</head>

<body onload="cc()">
<!--[if lte IE 9]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
<![endif]-->

<!-- signin end -->
<section class="signin popup-in">
    <div class="container">

        <div class="sign-content popup-in-content">
            <div class="popup-in-txt">
                <h2>sign in</h2>

                <div class="row">
                    <div class="col-sm-12">
                        <div class="signin-form">
                            <form id = "myform1" action="CheckUser.do" method = post <%--onsubmit="check()"--%>>
                                <div class="form-group">
                                    <label for="username">usrname</label>
                                    <input type="text" class="form-control" name = "username"id="username" placeholder="enter your username here">
                                </div><!--/.form-group -->
                                <div class="form-group">
                                    <label for="password">password</label>
                                    <input type="password" class="form-control" name = "password" id="password" placeholder="Password">
                                </div><!--/.form-group -->
                            </form><!--/form -->
                        </div><!--/.signin-form -->
                    </div><!--/.col -->
                </div><!--/.row -->

                <div class="row">
                    <div class="col-sm-12">
                        <div class="signin-password">
                            <div class="awesome-checkbox-list">
                                <ul class="unstyled centered">

                                    <li>
                                        <input class="styled-checkbox" id="styled-checkbox-2" type="checkbox" value="value2">
                                        <label for="styled-checkbox-2">remember password</label>
                                    </li>

                                    <li>
                                        <!--<a href="#">Forgot email or password ?</a>-->
                                        <!--<input class="styled-checkbox" id="styled-checkbox-student" type="checkbox" name = "role" value="value_role" >
                                        <label for="styled-checkbox-student">student</label>
                                        <input class="styled-checkbox" id="styled-checkbox-teacher" type="checkbox" name = "role" value="value_role" >
                                        <label for="styled-checkbox-teacher">teacher</label>-->
                                        <%--<div class="btn-group" data-toggle="buttons">
                                            <label  &lt;%&ndash;class="btn btn-info"&ndash;%&gt; class="radio-inline">
                                                <input  type="radio" name="role" id = "student" value="student" checked > student
                                            </label>
                                            <label  &lt;%&ndash;class="btn btn-info"&ndash;%&gt; class="radio-inline">
                                                <input  type="radio" name="role" id = "teacher" value="teacher"> teacher
                                            </label>
                                            <label  &lt;%&ndash;class="btn btn-info"&ndash;%&gt; class="radio-inline">
                                                <input  type="radio" name="role" id = "admin" value="admin"> admin
                                            </label>
                                        </div>--%>
<%--                                        <input type="radio" name="role" id = "radio_student">--%>
<%--                                        <label for="radio_student">student</label>--%>
<%--                                        <input type="radio" name="role" id = "radio_teacher">--%>
<%--                                        <label for="radio_teacher">teacher</label>--%>
<%--                                        <input type="radio" name="role" id = "radio_admin">--%>
<%--                                        <label for="radio_admin">admin</label>--%>
                                    </li>

                                </ul>
                            </div><!--/.awesome-checkbox-list -->
                        </div><!--/.signin-password -->
                    </div><!--/.col -->
                </div><!--/.row -->

                <div class="row">
                    <div class="col-sm-12">
                        <div class="signin-footer">
                            <button type="button" <%--form = "myform1"--%> class="btn signin_btn"  onclick="check()">
                                sign in
                            </button>
                            <p>
                                Don’t have an Account ?
                                <a href="${pageContext.request.contextPath}StudentRegist.jsp">register</a>
                            </p>
                        </div><!--/.signin-footer -->
                    </div><!--/.col-->
                </div><!--/.row -->
            </div><!-- .popup-in-txt -->
        </div><!--/.sign-content -->
    </div><!--/.container -->

</section><!--/.signin -->

<!-- signin end -->

<!--footer copyright start -->
<%--<footer class="footer-copyright">--%>
<%--    <div id="scroll-Top">--%>
<%--        <i class="fa fa-angle-double-up return-to-top" id="scroll-top" data-toggle="tooltip" data-placement="top" title="" data-original-title="Back to Top" aria-hidden="true"></i>--%>
<%--    </div><!--/.scroll-Top-->--%>

<%--</footer><!--/.hm-footer-copyright-->--%>
<!--footer copyright  end -->


<!-- Include all js compiled plugins (below), or include individual files as needed -->

<script src="js/jquery.js"></script>

<!--modernizr.min.js-->
<%--<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>--%>

<!--bootstrap.min.js-->
<script src="js/bootstrap.min.js"></script>

<!-- bootsnav js -->
<script src="js/bootsnav.js"></script>

<!-- jquery.sticky.js -->
<script src="${pageContext.request.contextPath}resources/static/js/jquery.sticky.js"></script>
<%--<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>--%>


<!--Custom JS-->
<script src="js/custom.js"></script>

</body>


</html>