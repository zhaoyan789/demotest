<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path=request.getContextPath();
%>    

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="<%=request.getContextPath() %>/css/index_work.css" rel="stylesheet">
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.form.js"></script>
<script type="text/javascript" src="js/jquery.validate.js"></script>
<title>Insert title here</title>
</head>
<body>


	<h2>三级联动</h2>
	
	<select class = "provence" name = "pid">
		<option>--请选择--</option>
		
	</select>
	<select class = "city" name = "pid">
		<option>--请选择--</option>
	</select>
	<select class = "town" name = "pid">
		<option>--请选择--</option>
	</select>
	

	<script type="text/javascript">
	
		var pid = 0;
		
		var addressName = "provence"
		
		showAddress(pid,addressName);
	
		$(".provence").change(function(){
			
			pid = $(this).val();
			
			addressName = "city";
			
			showAddress(pid,addressName);
			
		})
		
		$(".city").change(function(){
			
			pid = $(this).val();
			
			addressName = "town";
			
			showAddress(pid,addressName);
			
		})
		
		
		
		function showAddress(pid,addressName){
			
			$.post("address",{pid:pid},function(obj){
				
				/* console.log(obj); */
				
				$("."+addressName+" option:gt(0)").remove();
				
				for(var i in obj){
					
					$("."+addressName+" ").append("<option value="+obj[i].id+" >"+obj[i].name+"</option>")
					
				}
				
			},"json");
			
			
		};
		
	
	
	</script>










</body>
</html>