<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
      <input type="text" id="userId" value="${userid }" name="userId">
      <form id="roleForm">
      </form>
      <script type="text/javascript">
          $(function(){
        	  $.ajax({
        		  url:"<%=request.getContextPath()%>/Role/roleNodes.do",
        		  data:{"id":$("#userId").val()},
        		  dataType:"json",
        		  type:"post",
        		  success:function(data){
        			  console.info(data)
        			// alert(data); 
        			 var str ="";
        			 for (var i = 0; i < data.list.length; i++) {
						//alert(data.list[i].name)
						var count=0;
						for (var j = 0; j < data.roles.length; j++) {
							if(data.roles[j].id==data.list[i].id){
								str+="<input type='checkbox' name='id' checked='checked' value='"+data.roles[j].id+"'>"+data.roles[j].jsname+"";
								count=1;
								break;
							}
							
						}
						if(count!=1){
							str+="<input type='checkbox' name='id'  value='"+data.list[i].id+"'>"+data.list[i].jsname+"";
						}
					}
        			 $("#roleForm").html(str);
        			 
        		  },error:function(){
        			  alert("错误");
        		  }
        	  })
          })
   


     </script>
</body>

</html>