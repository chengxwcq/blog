<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<!DOCTYPE html>
<html>

<head>
    <script type="text/javascript" src="showdown.min.js"></script>
</head>

<style>
    body {
      font-family: "Helvetica Neue", Helvetica, Microsoft Yahei, Hiragino Sans GB, WenQuanYi Micro Hei, sans-serif;
     font-size: 16px;
      line-height: 1.42857143;
      color: #333;
      background-color: #fff;
    }
    ul li {
        line-height: 24px;
    }
    blockquote {
        border-left:#eee solid 5px;
        padding-left:20px;
    }
    code {
        color:#D34B62;
        background: #F9F2F4;
    }
    #content {
        line-height:20px;
        background-color:#eeeeee;
        height:600px;
        width:600px;
        float:left;
        padding:5px;          
    }
    #result {
        line-height:20px;
        background-color:#eeeeee;
        width:600px;
        float:right;
        padding:5px;        
    }
    #button {
        clear:both;
    }
</style>

<body>
    <%@ include file="header.jsp" %>
</body>

<body>
<form>
  <div class="form-group">
    <label for="title">标题:</label>
    <input class="form-control"  id="title" placeholder="title">
  </div>
</form>


<form action="sumbit_article" method="post" class="form-inline">
<!--     <textarea id="content" style="height:400px;width:600px;" onkeyup="compile()"></textarea>
 -->    
    <div class="form-group">
        <textarea id="content" class="form-control" rows="3" onkeyup="compile()"></textarea>
    </div>
    <p class="form-group" id = "result">
    </p> 
    <button type="submit" class="btn btn-primary">提交</button>
</form>

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