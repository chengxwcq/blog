<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<form action="login" method="post">
账号: <input type = "text" name = "user" /> <br>
密码: <input type = "password" name = "password" /> <br>
<input type="submit" value = "登录"> 
</form>

<form action="enroll" method = "get">
<input type="submit" value="注册">
</form>
