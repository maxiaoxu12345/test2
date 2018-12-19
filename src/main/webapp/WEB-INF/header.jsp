<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <style type="text/css">

</style>
    <title></title>
	<link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
	<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
	<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
  </head>
  <body style="border-bottom:solid 1px #666;">
   <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
			    <div class="container-fluid">
			    <div>
			        <ul class="nav navbar-nav" >
			           <li class="navLi"> <a class="navbar-brand" href="#" id="firstJ">晨砻信息科技有限公司</a></li>
			           
			           <c:choose>
			              <c:when test="${user.role eq '领导' }">
			                 <li class="navLi"><a class="navbar-brand" href="#" id="test">领导班子为中层管理人员评分</a></li>
			                  <li class="navLi"><a class="navbar-brand" href="#" id="testResult">查询结果</a></li>
			              </c:when>
			              
			               <c:when test="${user.name eq '廉雪' }">
			                  
			              <li class="navLi"><a class="navbar-brand" href="#" id="test">中层管理人员互评</a></li>
			              <li class="navLi"><a class="navbar-brand" href="#" id="testResult">查询结果</a></li>
			             
			              </c:when>
			             
			              <c:otherwise>
			                    <li class="navLi"><a class="navbar-brand" href="#" id="test">中层管理人员互评</a></li>
			              </c:otherwise>
			           
			           </c:choose>

			        </ul>
			    </div>
		        <div>
			        <ul class="nav navbar-nav" style="float: right">
			            
			            <li id="logout" class="navLi"><a href="${pageContext.request.contextPath}/logout.action" style="text-decoration:none;" id="logout_a">退出登录</a></li>
			        
			        </ul>
			    </div>
		    </div>

 
     </body>
      <script type="text/javascript">
 
		$(function(){
					$("#logout").click(function(){
						if(confirm("你确定要退出吗?")){
							var url = $("#logout_a").attr("href");
							window.parent.parent.location.href = url;
							return false;
						}
						return false;
					});
			});
			$("#firstJ").click(function(){
				/* alert("点击首页"); */
				
			    parent.main.location.href="${pageContext.request.contextPath}/welcome.action";
			    return false;
			});
			$("#test").click(function(){
				 parent.main.location.href="${pageContext.request.contextPath}/test.action";
				 return false;
			});
			$("#testResult").click(function(){
				
				 parent.main.location.href="${pageContext.request.contextPath}/testResult.action";
				 return false;
			});
	</script>
</html>
