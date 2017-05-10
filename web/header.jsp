<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<!DOCTYPE html>
<html>
<head>
    <script src="http://how2j.cn/study/js/jquery/2.0.0/jquery.min.js"></script>
    <link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="http://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>
</head>

<nav class="top">
        <a href="#nowhere">
            <span class="glyphicon glyphicon-home redColor"></span>
            博客首页
        </a>  
     
        <span>
            <a href="#nowhere">当前用户 : </a>
            <b><font color="#660066"> ${user.name} </font> </b>
        </span>
           
    </nav>
    <hr style="height:2px;border:none;border-top:2px groove skyblue;" width="90%"/>
</html>
