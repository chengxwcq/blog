<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<!DOCTYPE html>
<html>

<head>
    <script type="text/javascript" src="showdown.min.js"></script>

    <script type="text/javascript">
        function compile(){
            var text = document.getElementById("content").value;
            var converter = new showdown.Converter();
            var html = converter.makeHtml(text);
            document.getElementById("result").innerHTML = html;
        }
    </script>

    <style type="text/css">
    p {
        width: 75%;
       /* background-image: url(image1.jpg);*/ 
        padding: 1%;
    }

    .center {
        margin-left:auto;
        margin-right:auto;
    }
    </style>
</head>

<body onload="compile()">                   <!-- 在加载的时候就调用 compile() 函数 -->
    <%@ include file="header.jsp" %>
                                                 
<div class="form-group">
    <input id="content" name="content" type="hidden" value="${content.content}" > 
</div>
<p class="center" id = "result">
</p> 

</body>
</html>
