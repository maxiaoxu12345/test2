<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;width: 100%}
.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
.tg .tg-0pky{border-color:inherit;text-align:center;vertical-align:top}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>中级测评</title>
</head>
<script type="text/javascript">
$("#save").click(function(){
	
		$("#saveScoreForm").submit();
		
  });
</script>
<body >
<table class="tg">
<colgroup>
<col style="width: 39px">
<col style="width: 123px">
<col style="width: 149px">
<col style="width: 129px">
<col style="width: 160px">
<col style="width: 150px">
<col style="width: 171px">
<col style="width: 170px">
</colgroup>
  <tr>
    <th class="tg-0pky">序号</th>
    <th class="tg-0pky">部门</th>
    <th class="tg-0pky">职务</th>
    <th class="tg-0pky">姓名</th>
    <th class="tg-0pky">领导班子测评得分（70%）</th>
    <th class="tg-0pky">中层互评得分（30%）</th>
    <th class="tg-0pky">总分</th>
    <th class="tg-0pky">综合评价</th>
  </tr>
  <c:forEach items="${list }" var="result">
  <tr>
    <td class="tg-0pky">${result.id }</td>
    <td class="tg-0pky">${result.depart }</td>
    <td class="tg-0pky">${result.role }</td>
    <td class="tg-0pky">${result.name }</td>
    <td class="tg-0pky">${result.high_test }</td>
    <td class="tg-0pky">${result.level_test }</td>
    <td class="tg-0pky">${result.final_test }</td>
    <td class="tg-0pky">
   	 <c:if test="${result.final_test >=90 && result.final_test<=100}">A&nbsp;优秀</c:if>
     <c:if test="${result.final_test >=80 && result.final_test<90}">B&nbsp;良好</c:if>
     <c:if test="${result.final_test >=60 && result.final_test<80}">C&nbsp;合格</c:if>
     <c:if test="${result.final_test >=50 && result.final_test<60}">D&nbsp;不合格</c:if>
     </td>
  </tr>
  </c:forEach>
</table>
未评测或评测不完整名单：<br>
<c:forEach items="${list2 }" var="name">
${name }<br>
</c:forEach>
</body>
 <script type="text/javascript">

</html>