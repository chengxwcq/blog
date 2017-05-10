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
<body>
    <%@ include file="header.jsp" %>

<div>
    <table class="table table-bordered table-condensed">
    <c:forEach items="${articles}" var="article" varStatus="st">
    <tr>
        <td align="center"> ${st.count} </td>
        <td>
            <form action="get_article" method="get"> 
                <button type="submit" class="btn btn-link" name = "id" value = ${article.id}> ${article.title} </button>
            </form>
        </td>
        <td align="center"> <font color = "#6699FF"> ${article.date} </td>
    </tr>
    </c:forEach>
    </table>
</div>

<form action="write_article" method = "get">
<button type="submit" class="btn btn-primary">新建</button>
</form>

</body>
</html>




