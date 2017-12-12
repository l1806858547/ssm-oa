<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<script type="text/javascript" src="<%=request.getContextPath() %>/js3/jquery-2.1.1.min.js"></script>
<script src="<%=request.getContextPath() %>/js3/Highcharts-5.0.12/code/highcharts.js"></script>
<script src="<%=request.getContextPath() %>/js3/Highcharts-5.0.12/code/modules/exporting.js"></script>

<body>

<div id="container" style="min-width:400px;height:400px"></div>
<select id="zhu">
	<option value="column">柱形图</option>
	<option value="line">折线图</option>
	<option value="pie">饼状图</option>
</select>

</body>

<script type="text/javascript">
 $(function(){
	 zhuxing("column")
	 $("#zhu").change(function(){
		 zhuxing($("#zhu").val())
	 })
 })

	function zhuxing(obj){
		$.ajax({
			url:"<%=request.getContextPath()%>/bingController/queryBing.do",
			dataType:"json",
			type:"post",
			success:function(dat){
				Highcharts.chart('container',{
			        chart: {
			            plotBackgroundColor: null,
			            plotBorderWidth: null,
			            plotShadow: false,
			        },
			        title: {
			            text: '角色用户占比'
			        },
			        tooltip: {
			            headerFormat: '{series.name}<br>',
			            pointFormat: '{point.name}: <b>{point.y:1f}%</b>'
			        },
			        
			        
			        legend: {
		    	        layout: 'vertical',
		    	        align: 'right',
		    	        verticalAlign: 'middle'
		    	    },

			        
			        plotOptions: {
			            pie: {
			                allowPointSelect: true,
			                cursor: 'pointer',
			                dataLabels: {
			                    enabled: true,
			                    format: '<b>{point.name}</b>: {point.y:1f}%',
			                    style: {
			                        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
			                    }
			                }
			            }
			        },
			        series: [{
			            type: obj,
			            name: '角色用户占比',
			            data: dat
			        }]
			    });
			
			}
		})
	}
	



</script>

</html>