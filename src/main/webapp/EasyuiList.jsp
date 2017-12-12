<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- 引入EasyUI的样式文件-->
<link rel="stylesheet"
                 href="<%=request.getContextPath()%>/EasyUI/themes/default/easyui.css" type="text/css"/>

<!-- 引入EasyUI的图标样式文件-->
<link rel="stylesheet"
                 href="<%=request.getContextPath()%>/EasyUI/themes/icon.css" type="text/css"/>

</head>
<body class="easyui-layout">   
    <div data-options="region:'east',iconCls:'icon-reload',title:'East',split:true" style="width:100px;">
    </div>   
    <div data-options="region:'west',title:'West',split:true" style="width:260px;">
    <!-- 	 <h3><a href="javascript:changeCenter('stuList.jsp')">学生管理</a></h3>
    	<h3><a href="javascript:changeCenter('stuList2.jsp')">添加学生</a></h3> -->
    	
    	<ul id="tree-ul" ></ul>
    
    </div>   
    <div data-options="region:'center',title:'center title'" style="padding:5px;background:#eee;">
		<div id="tt" class="easyui-tabs" data-options="fit:true" >   
    <div title="首页" style="padding:20px;display:none;">   
       <center> 
       <h1>人生若只如初见，</h1></br>
               <h1>何事秋风悲画扇。</h1></br>
		     			<h1> 等闲变却故人心，</h1></br>
		             			<h1>却道故人心易变。</h1> </br> 
	  </center>       
    </div>    
</div>  
		
    </div>   

<!-- 引入JQuery -->
<script type="text/javascript"
                 src="<%=request.getContextPath()%>/EasyUI/jquery.min.js"></script>

<!-- 引入EasyUI -->
<script type="text/javascript"
                 src="<%=request.getContextPath()%>/EasyUI/jquery.easyui.min.js"></script>

<!-- 引入EasyUI的中文国际化js，让EasyUI支持中文 -->
<script type="text/javascript"
                 src="<%=request.getContextPath()%>/EasyUI/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript"
                 src="<%=request.getContextPath()%>/EasyUI/util-js.js"></script>
<script type="text/javascript"> 
$(function(){
	$('#tree-ul').tree({    
	    url:'<%=request.getContextPath() %>/Tree/querytree.do',
	    parentField:'pid',
	   	    onSelect: function(node){
	    	
//				alert(node.text);  // 在用户点击的时候提示
			if(node.url != null && node.url != ""){
				changetabs(node.text,node.url);
			}
			
			
		}

	});  
})



	function changetabs(titleStr,url){
		
		if($('#tt').tabs('exists',titleStr)){//表明选项卡是否存在
		
			$('#tt').tabs('selected',titleStr)
		}else{
			$('#tt').tabs('add',{//添加选项卡
				title: titleStr,
				closable:true,//显示关闭按钮
				selected:true,//选中当前选项卡
				state:'closed',
				href:"<%=request.getContextPath()%>"+url,
				iconCls:"icon-ok"
				//...
			});
		}
	}


</script>

</body>
</html>