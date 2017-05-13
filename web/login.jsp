<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>

<!DOCTYPE html>
<html>

<head>
    <script src="http://how2j.cn/study/js/jquery/2.0.0/jquery.min.js"></script>
    <link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="http://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>
    <style type="text/css">
        html, body {
            width: 100%;
            height: 100%;
            background-size: 100%;
        } 

        .head {
            height: 15%;          
            width: 100%;
            border-style: none none solid none; 
            border-color:  #D6D6D6;
        }

        .login {
            height: 300px;
            width: 400px;
            border-style: none  groove  none groove; 
            border-color:   #D6D6D6;
            border-width: 1px;
            margin: 0 auto;
            margin-top: 40px;
        }

        .inside {
            margin: 70px 50px 50px 50px;
        }

    </style>
</head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<body style="background-image: url(390.jpg)">

    <div class="head"><img src="pj.jpg" height = "100%" width="100%"></div>
    <div class="login">
        <div class="inside">
        <p style="text-align: center; color: #CDC0B0; font-size: 30px"> <b>Log In </b> </p>
            <br>
            <form action="login" method="post">
                <div class="input-group">
                  <span class="input-group-addon" id="user">username</span>
                  <input type="text" class="form-control" name="user" placeholder="macheng">
                </div> 
                <br>

                <div class="input-group">
                  <span class="input-group-addon" id="password">password</span>
                  <input type="password" class="form-control" name="password">
                </div>  
                <br>
                <br>

                <div class="btn-group" style="float: left" role="group">
                    <button type="submit" class="btn btn-default" float="left">Sign in</button>
                </div>
            </form>

            <form action="enroll" method = "get">
                <div style="float: right" class="btn-group" role="group">
                    <button type="submit" class="btn btn-default" float="left">Sign up</button>
                </div>
            </form>
        </div>

    </div>

</body>
</html>

