<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<!DOCTYPE html>
<html>

<head>
    <script type="text/javascript" src="showdown.min.js"></script>
</head>

<body onload="compile()">                   <!-- 在加载的时候就调用 compile() 函数 -->
    <%@ include file="header.jsp" %>
</body>

<div class="form-group">
    <textarea id="content" class="form-control" rows="20"> ${content.content}</textarea>
</div>
<p class="form-group" id = "result">
</p> 

<script type="text/javascript">
function compile(){
    var text = document.getElementById("content").value;
    var converter = new showdown.Converter();
    var html = converter.makeHtml(text);
    document.getElementById("result").innerHTML = html;
}
</script>
</body>

</html>