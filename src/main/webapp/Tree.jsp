<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		<ul id="tree-role" ></ul>
      <input type="text" id="usid" value="${jid}" name="usid">
      <form id="qxtreeDemo">
      </form>
      <script type="text/javascript">
       $(function(){
    	   alert(123);
		$('#tree-role').tree({
			url:'<%=request.getContextPath()%>/Role/querytree.do',
			data:"id="+$("#usid").val(),
			 type:"post",
     		dataType:"json",
 		    checkbox:true,
 		    cascadeCheck:false,
 		    success:function(result){
 		    	var nodes =$('#qxtreeDemo').tree('getChildren');
 		    	var str="";
 		    	for (var i = 0; i < nodes.length; i++) {
    				for (var j = 0; j < result.length; j++) {
						 if(result[j].id==nodes[i].id){
							 var node = $('#qxtreeDemo').tree('find', result[j].id);//找到id为”tt“这个树的节点id为”1“的对象
							 $('#qxtreeDemo').tree('check', node.target);//设置选中该节点
							break;
						}
    				}
				}
 		    }
			
			
		  })
      })

     </script>
</body>

</html>