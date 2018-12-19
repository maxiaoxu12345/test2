<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <style type="text/css">
.tg1  {border-collapse:collapse;border-spacing:0;}
.tg1 td{font-family:Arial, sans-serif;font-size:12px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
.tg1 th{font-family:Arial, sans-serif;font-size:12px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
.tg1 .tg1-o40d{border-color:#9b9b9b;text-align:center;vertical-align:top}
.tg1 .tg1-4n2o{font-weight:bold;border-color:#c0c0c0;text-align:center;vertical-align:middle}
.tg1 .tg1-fzdr{border-color:#c0c0c0;text-align:center;vertical-align:top}
.tg1 .tg1-bx42{font-weight:bold;border-color:#c0c0c0;text-align:left;vertical-align:middle}
.tg1 .tg1-wo29{border-color:#c0c0c0;text-align:left;vertical-align:top}
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
.tg .tg-baqh{text-align:center;vertical-align:middle}
.tg .tg-0lax{text-align:center;vertical-align:middle}
.button {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>中级测评</title>
</head>
<script type="text/javascript">
$("#save").click(function(){
	
		$("#saveScoreForm").submit();
		
  });
</script>
<body onload="load()">
<table class="tg1" align="center" style="undefined;table-layout: fixed;  width: 1115px">
<colgroup>
<col style="width: 70px">
<col style="width: 100px">
<col style="width: 146px">
<col style="width: 71px">
<col style="width: 71px">
<col style="width: 71px">
<col style="width: 66px">
<col style="width: 66px">
<col style="width: 66px">
<col style="width: 75px">
<col style="width: 75px">
<col style="width: 75px">
<col style="width: 86px">
<col style="width: 114px">
</colgroup>
  <tr>
    <th class="tg1-fzdr" colspan="14">2018年中层管理人员测评标准</th>
  </tr>
  <tr>
    <td class="tg1-o40d" rowspan="2">类别</td>
    <td class="tg1-o40d" rowspan="2">项目</td>
    <td class="tg1-o40d" rowspan="2">描述</td>
    <td class="tg1-o40d" colspan="3">低←&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D（不满意）&nbsp;&nbsp;&nbsp;→高</td>
    <td class="tg1-o40d" colspan="3">低←&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C（勉强）&nbsp;&nbsp;&nbsp;&nbsp;→高</td>
    <td class="tg1-o40d" colspan="3">低←&nbsp;&nbsp;&nbsp;&nbsp;B（满意）&nbsp;&nbsp;&nbsp;&nbsp;→高</td>
    <td class="tg1-o40d" colspan="2">低←&nbsp;&nbsp;&nbsp;A（很满意）&nbsp;&nbsp;&nbsp;→高</td>
  </tr>
  <tr>
    <td class="tg1-o40d">5.0</td>
    <td class="tg1-o40d">5.5</td>
    <td class="tg1-o40d">6.0</td>
    <td class="tg1-o40d">6.5</td>
    <td class="tg1-o40d">7.0</td>
    <td class="tg1-o40d">7.5</td>
    <td class="tg1-o40d">8.0</td>
    <td class="tg1-o40d">8.5</td>
    <td class="tg1-o40d">9.0</td>
    <td class="tg1-o40d">9.5</td>
    <td class="tg1-o40d">10.0</td>
  </tr>
  <tr>
    <td class="tg1-4n2o">工作业绩</td>
    <td class="tg1-bx42">业绩成果</td>
    <td class="tg1-wo29">年度业绩成果</td>
    <td class="tg1-wo29" colspan="3">需要采取措施--工作目标达成在60%以下，需要采取措施改进绩效水平</td>
    <td class="tg1-wo29" colspan="3">部分达到-工作目标达成在60%-80%，绩效不够稳定，部分满足期望</td>
    <td class="tg1-wo29" colspan="3">全部达到工作要求-工作绩效达成在80%-100%之间，绩效表现达到期望</td>
    <td class="tg1-wo29" colspan="2">超过工作要求-工作主要绩效目标都超额完成，且在某些方面有特定的贡献</td>
  </tr>
  <tr>
    <td class="tg1-4n2o" rowspan="3">领导能力</td>
    <td class="tg1-bx42">全局意识</td>
    <td class="tg1-wo29">从全局着手观察、解决问题</td>
    <td class="tg1-wo29" colspan="3">无全局意识，孤立、片面看待问题</td>
    <td class="tg1-wo29" colspan="3">全局观念不浓，工作缺乏计划性</td>
    <td class="tg1-wo29" colspan="3">能从系统、全局出发看问题、做事情</td>
    <td class="tg1-wo29" colspan="2">顾全大局、考虑周到，变零散为系统</td>
  </tr>
  <tr>
    <td class="tg1-bx42">带团队能力</td>
    <td class="tg1-wo29">能够带领下属有效达成工作目标</td>
    <td class="tg1-wo29" colspan="3">领导方式不佳，不得下属信赖,工作意愿低沉，常使下属不服或反抗</td>
    <td class="tg1-wo29" colspan="3">尚能领导部署，勉强达成工作计划和目标</td>
    <td class="tg1-wo29" colspan="3">灵活运用部署，顺利达成工作计划和目标</td>
    <td class="tg1-wo29" colspan="2">善于领导部署，提高工作效率,积极达成工作计划和目标</td>
  </tr>
  <tr>
    <td class="tg1-bx42">授权指导能力</td>
    <td class="tg1-wo29">无详尽指示、无人监督下的工作能力</td>
    <td class="tg1-wo29" colspan="3">欠缺分配工作权力及指导部署方法,任务进行偶有困难，内部时有不服及怨言</td>
    <td class="tg1-wo29" colspan="3">尚能顺利分配工作与权力，指导部署完成任务</td>
    <td class="tg1-wo29" colspan="3">乐意与人沟通协调,顺利达成任务</td>
    <td class="tg1-wo29" colspan="2">善于分配权力,积极传授工作知识,引导部署达成任务</td>
  </tr>
  <tr>
    <td class="tg1-4n2o">工作态度</td>
    <td class="tg1-bx42">责任感</td>
    <td class="tg1-wo29">承担责任，而不是设法逃避</td>
    <td class="tg1-wo29" colspan="3">应付工作且经常推卸责任</td>
    <td class="tg1-wo29" colspan="3">责任心一般，不能主动承担责任</td>
    <td class="tg1-wo29" colspan="3">了解自己的职责且有责任心</td>
    <td class="tg1-wo29" colspan="2">竭尽所能并勇于承担责任</td>
  </tr>
  <tr>
    <td class="tg1-4n2o" rowspan="4">管理能力</td>
    <td class="tg1-bx42">工作效率及效果</td>
    <td class="tg1-wo29">保质保量完成工作，效率高</td>
    <td class="tg1-wo29" colspan="3">不能完成所承担的工作，质量低或者经常延期。</td>
    <td class="tg1-wo29" colspan="3">勉强胜任工作</td>
    <td class="tg1-wo29" colspan="3">能够按时完成所承担的工作</td>
    <td class="tg1-wo29" colspan="2">能够高质量、按时或提前完成所承担的工作</td>
  </tr>
  <tr>
    <td class="tg1-bx42">协调沟通、及成本意识</td>
    <td class="tg1-wo29">协同配合、沟通及成本意识</td>
    <td class="tg1-wo29" colspan="3">工作中始终处于被动局面；缺乏成本意识</td>
    <td class="tg1-wo29" colspan="3">沟通不够主动；尚有成本意识</td>
    <td class="tg1-wo29" colspan="3">协调、沟通方法得当；具有成本意识，工作中采取节约行为</td>
    <td class="tg1-wo29" colspan="2">善于协调与沟通且卓有成效；成本意识强，能积极节约</td>
  </tr>
  <tr>
    <td class="tg1-bx42">应变、创新能力</td>
    <td class="tg1-wo29">对突发事件的处置</td>
    <td class="tg1-wo29" colspan="3">手足无措；无创造性可言</td>
    <td class="tg1-wo29" colspan="3">偶尔出现处理不当的情况；有穿心意识和想法</td>
    <td class="tg1-wo29" colspan="3">面对突发情况能正确处理；经常提出改进工作想法并行动</td>
    <td class="tg1-wo29" colspan="2">临危不乱，处事果断；创造性强效果优异</td>
  </tr>
  <tr>
    <td class="tg1-bx42">组织、识才育人能力</td>
    <td class="tg1-wo29">管理及组织能力；识人才、重培育</td>
    <td class="tg1-wo29" colspan="3">管理杂乱无章；识才育人意识淡薄</td>
    <td class="tg1-wo29" colspan="3">工作虽不滞后，但组织管理方面欠缺培；不太愿意多方培育下属</td>
    <td class="tg1-wo29" colspan="3">具有一定的组织能力，能够带领员工完成工作任务；能判断下属能力，并设法挖掘其潜能</td>
    <td class="tg1-wo29" colspan="2">有组织、有条理，员工积极性高；尊重人才，不断引导员工进取、成长</td>
  </tr>
  <tr>
    <td class="tg1-4n2o" colspan="2">学习能力</td>
    <td class="tg1-wo29">接受新知识的速度、方法、积极性</td>
    <td class="tg1-wo29" colspan="3">很少主动学习</td>
    <td class="tg1-wo29" colspan="3">能学习工作所需的知识技能</td>
    <td class="tg1-wo29" colspan="3">主动学习，能力有提高</td>
    <td class="tg1-wo29" colspan="2">学以致用，改善业绩</td>
  </tr>
</table>
   <form id="saveScoreForm" action="${pageContext.request.contextPath}/saveScore.action" method="post"  >
  <div align="center"><h3>2018年度中层管理人员测评表</h3></div>
  <table class="tg" style="undefined;table-layout: fixed; width: 1245px">
<colgroup>
<col style="width: 90px">
<col style="width: 90px">
<col style="width: 60px">
<col style="width: 67px">
<col style="width: 67px">
<col style="width: 81px">
<col style="width: 95px">
<col style="width: 67px">
<col style="width: 109px">
<col style="width: 151px">
<col style="width: 109px">
<col style="width: 137px">
<col style="width: 67px">
<col style="width: 125px">
</colgroup>
  <tr>
    <th class="tg-baqh" rowspan="2"><br>部门</th>
    <th class="tg-baqh" rowspan="2"><br>职务</th>
    <th class="tg-baqh" rowspan="2"><br>姓名</th>
    <th class="tg-0lax">工作业绩</th>
    <th class="tg-baqh" colspan="3">领导能力</th>
    <th class="tg-0lax">工作态度</th>
    <th class="tg-baqh" colspan="4">管理能力</th>
    <th class="tg-0lax">学习能力</th>
    <th class="tg-baqh" rowspan="2"><br>总分</th>
  </tr>
  <tr>
    <td class="tg-0lax">业绩成果</td>
    <td class="tg-0lax">全局意识</td>
    <td class="tg-0lax">带团队能力</td>
    <td class="tg-0lax">授权指导能力</td>
    <td class="tg-0lax">责任感</td>
    <td class="tg-0lax">工作效率及效果</td>
    <td class="tg-0lax">协调沟通、及成本意识</td>
    <td class="tg-0lax">应变、创新能力</td>
    <td class="tg-0lax">组织、识才育人能力</td>
    <td class="tg-0lax">学习能力</td>
  </tr>
  <c:forEach items="${list }"  varStatus="status" var="user2">
  <tr>
  <td class="tg-0lax">${user2.depart }</td>
   <td class="tg-0lax">${user2.role}</td>
   <td class="tg-0lax">${user2.name}</td>
   <input type="hidden" name="testList[${status.index }].name" value="${user2.name}"/>
  <input type="hidden" name="testList[${status.index }].high_name" value="${user.name}"/>
  <td class="tg-0lax"> 
  	 <select name="testList[${status.index }].yeji"  id="testList[${status.index }].yeji" onchange="sourceChange(${status.index})">
		 <c:if test="${user2.yeji == 0 ||null == user2.yeji }"><option selected="selected">--</option></c:if>
		 <c:forEach items="${cores}" var="core">
		<c:if test="${core eq user2.yeji}"><option selected="selected">${core}</option></c:if>
			<c:if test="${core ne user2.yeji}"><option>${core}</option></c:if>
			 </c:forEach>
			</select>
		  </td> 
		  <td class="tg-0lax"> 
  	 <select name="testList[${status.index }].quanjv"  id="testList[${status.index }].quanjv" onchange="sourceChange(${status.index})">
		 <c:if test="${user2.quanjv == 0||null == user2.quanjv}"><option selected="selected">--</option></c:if>
		 <c:forEach items="${cores}" var="core">
		<c:if test="${core == user2.quanjv}"><option selected="selected">${core}</option></c:if>
			<c:if test="${core != user2.quanjv}"><option>${core}</option></c:if>
			 </c:forEach>
			</select>
		  </td> 
		  <td class="tg-0lax"> 
  	 <select name="testList[${status.index }].daituan"  id="testList[${status.index }].daituan" onchange="sourceChange(${status.index})">
		<c:if test="${user2.daituan == 0||null == user2.daituan}"><option selected="selected">--</option></c:if>
		 <c:forEach items="${cores}" var="core">
		 
		<c:if test="${core == user2.daituan}"><option selected="selected">${core}</option></c:if>
			<c:if test="${core != user2.daituan}"><option>${core}</option></c:if>
			 </c:forEach>
			</select>
		  </td> 
		  <td class="tg-0lax"> 
  	 <select name="testList[${status.index }].shouquan"  id="testList[${status.index }].shouquan" onchange="sourceChange(${status.index})">
		  <c:if test="${user2.shouquan == 0||null == user2.shouquan}"><option selected="selected">--</option></c:if>
		 <c:forEach items="${cores}" var="core">
		
		<c:if test="${core == user2.shouquan}"><option selected="selected">${core}</option></c:if>
			<c:if test="${core != user2.shouquan}"><option>${core}</option></c:if>
			 </c:forEach>
			</select>
		  </td> 
		  <td class="tg-0lax"> 
  	 <select name="testList[${status.index }].zeren"  id="testList[${status.index }].zeren" onchange="sourceChange(${status.index})">
		 <c:if test="${user2.zeren == 0||null == user2.zeren}"><option selected="selected">--</option></c:if>
		 <c:forEach items="${cores}" var="core">
		 
		<c:if test="${core == user2.zeren}"><option selected="selected">${core}</option></c:if>
			<c:if test="${core != user2.zeren}"><option>${core}</option></c:if>
			 </c:forEach>
			</select>
		  </td> 
		  <td class="tg-0lax"> 
  	 <select name="testList[${status.index }].gongzuo"  id="testList[${status.index }].gongzuo" onchange="sourceChange(${status.index})">
		 <c:if test="${user2.gongzuo == 0||null == user2.gongzuo}"><option selected="selected">--</option></c:if>
		 <c:forEach items="${cores}" var="core">
		 
		<c:if test="${core == user2.gongzuo}"><option selected="selected">${core}</option></c:if>
			<c:if test="${core != user2.gongzuo}"><option>${core}</option></c:if>
			 </c:forEach>
			</select>
		  </td> 
		  <td class="tg-0lax"> 
  	 <select name="testList[${status.index }].xietiao"  id="testList[${status.index }].xietiao" onchange="sourceChange(${status.index})">
		<c:if test="${user2.xietiao == 0||null == user2.xietiao}"><option selected="selected">--</option></c:if>
		 <c:forEach items="${cores}" var="core">
		 
		<c:if test="${core == user2.xietiao}"><option selected="selected">${core}</option></c:if>
			<c:if test="${core != user2.xietiao}"><option>${core}</option></c:if>
			 </c:forEach>
			</select>
		  </td> 
		  <td class="tg-0lax"> 
  	 <select name="testList[${status.index }].yingbian"  id="testList[${status.index }].yingbian" onchange="sourceChange(${status.index})">
		  <c:if test="${user2.yingbian == 0||null == user2.yingbian}"><option selected="selected">--</option></c:if>
		 <c:forEach items="${cores}" var="core">
		
		<c:if test="${core == user2.yingbian}"><option selected="selected">${core}</option></c:if>
			<c:if test="${core != user2.yingbian}"><option>${core}</option></c:if>
			 </c:forEach>
			</select>
		  </td> 
		  <td class="tg-0lax"> 
  	 <select name="testList[${status.index }].zuzhi"  id="testList[${status.index }].zuzhi" onchange="sourceChange(${status.index})">
		  <c:if test="${user2.zuzhi == 0||null == user2.zuzhi}"><option selected="selected">--</option></c:if>
		 <c:forEach items="${cores}" var="core">
		 
		<c:if test="${core == user2.zuzhi}"><option selected="selected">${core}</option></c:if>
			<c:if test="${core != user2.zuzhi}"><option>${core}</option></c:if>
			 </c:forEach>
			</select>
		  </td> 
		  <td class="tg-0lax"> 
  	 <select name="testList[${status.index }].xuexi"  id="testList[${status.index }].xuexi" onchange="sourceChange(${status.index})">
		  <c:if test="${user2.xuexi == 0||null == user2.xuexi}"><option selected="selected">--</option></c:if>
		 <c:forEach items="${cores}" var="core">
		
		<c:if test="${core == user2.xuexi}"><option selected="selected">${core}</option></c:if>
			<c:if test="${core != user2.xuexi}"><option>${core}</option></c:if>
			 </c:forEach>
			</select>
		  </td> 
		  
     <td class="tg-0lax" id="testList[${status.index }].zongji"></td> 
    
  </tr>
  </c:forEach>
</table>
  <div  align="right"> <button class="button" id="save">保存</button></div>
   </form>
</body>
 <script type="text/javascript">
 function load()
 {
	 sourceChange(0);
	 sourceChange(1);
	 sourceChange(2);
	 sourceChange(3);
	 sourceChange(4);
	 sourceChange(5);
	 sourceChange(6);
	 sourceChange(7);
	 sourceChange(8);
	 sourceChange(9);
	 sourceChange(10);
	 sourceChange(11);
	 sourceChange(12);
	 sourceChange(13);
	 sourceChange(14);
	 sourceChange(15);
	 sourceChange(16);
	 sourceChange(17);
	 sourceChange(18);
	 sourceChange(19);
	 
 }
   function sourceChange(index) {
	   var zongji = 0;
	   zongji += Number(document.getElementById('testList[' + index + '].yeji').value);
	   zongji += Number(document.getElementById('testList[' + index + '].quanjv').value);
	   zongji += Number(document.getElementById('testList[' + index + '].daituan').value);
	   zongji += Number(document.getElementById('testList[' + index + '].shouquan').value);
	   zongji += Number(document.getElementById('testList[' + index + '].zeren').value);
	   zongji += Number(document.getElementById('testList[' + index + '].gongzuo').value);
	   zongji += Number(document.getElementById('testList[' + index + '].xietiao').value);
	   zongji += Number(document.getElementById('testList[' + index + '].yingbian').value);
	   zongji += Number(document.getElementById('testList[' + index + '].zuzhi').value);
	   zongji += Number(document.getElementById('testList[' + index + '].xuexi').value);
	   document.getElementById('testList[' + index + '].zongji').innerText=zongji;
   }
   </script>
</html>