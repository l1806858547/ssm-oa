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

<div id="containertt" style="min-width:400px;height:400px"></div>


</body>

<script type="text/javascript">


$(function () {
	//$("#container").highcharts()
	$.ajax({
		url:"<%=request.getContextPath()%>/bingController/queryYuan.do",
		dataType:"json",
		type:"post",
		success:function(dat){
			alert("123")
			Highcharts.chart('containertt',{
		        chart: {
		            plotBackgroundColor: null,
		            plotBorderWidth: null,
		            plotShadow: false,
		        },
		        xAxis: {
			    	categories: ['一月', '二月', '三月', '四月', '五月', '六月', '七月', '八月', '九月', '十月', '十一月', '十二月']
			    },

		        
		        title: {
		            text: '每月注册人数'
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
		            type: 'line',
		            name: '每月注册人数',
		            data: dat
		        }]
		    });
		
		}
	})
});


</script>

</html>