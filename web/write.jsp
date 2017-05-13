<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html;charset=utf-8">
    <script type="text/javascript" src="showdown.min.js"></script>
    <link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="http://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>
    <style>
        body {
          font-family: "Helvetica Neue", Helvetica, Microsoft Yahei, Hiragino Sans GB, WenQuanYi Micro Hei, sans-serif;
         font-size: 16px;
          line-height: 1.42857143;
          color: #333;
          background-color: #fff;
        }
        #content {
            line-height:20px;
            background-color:#eeeeee;
            height:600px;
            width:600px;
            /*float:left;*/
            padding:5px;  
           /* border-style: solid; 
            border-color:  blue;  */      
        }
        #result {
            line-height:20px;
            background-color:#eeeeee;
            width:600px;
            /*float:right;*/
            padding:5px;   
           /* border-style: solid; 
            border-color:  blue; */      
        }

        .ppp {
            width: 500px;
            /*border-style: solid; 
            border-color:  blue;*/
        }

        .rightdown {
            margin-top: 25px;
            /*border-style: solid; 
            border-color:  blue;*/
        }

    </style>
</head>

<body>
<form action="sumbit_article" method="post">
    <div style="width: 600px">
        <div class="form-group ppp" style="float: left;">
            <label for="title">标题:</label>
            <input class="form-control" name = "title" id="title" placeholder="title">
        </div>

        <div class= "rightdown" style="float: right" >
            <button type="submit" class="btn btn-primary">提交</button>
        </div>
    </div>

    <div style="width: 1300px">
        <div style="clear: left; float: left">
        <textarea id="content" name = "content" class="form-control" onkeyup="compile()"></textarea>
        </div>

        <div style="float:right">
        <p  id="result"  ></p>
        </div>
    </div>
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