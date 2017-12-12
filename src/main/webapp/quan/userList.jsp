<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div id="org-layout" class="easyui-layout" data-options="fit:true">   
		<div data-options="region:'center',title:'center title',fit:true" style="background:#eee;">
		
				<!-- 	这是弹框修改 -->
				<!-- 	<div id="upd-dialog"></div> -->
				<table id="delete-datagird"></table>
<!-- 				分配角色的信息 -->
				<div id="roledialog"></div>
		</div>   
</div>

<script type="text/javascript">
		$(function(){
			search()
		})
/* ------------------------------------------------------------------------------------ */	
	// 		表格
	function search(){
		$('#delete-datagird').datagrid({    
		    url:'<%=request.getContextPath()%>/Tree/selecttzuser.do',    
		    pagination:true,
		    pageNumber:1,
		    pageSize:3,
		    pageList:[1,3,5,8],
		  
		   //这是取数据库中的值
		    columns:[[    
		          
		         {field:'userid',title:'用户编号',width:100},
		        {field:'username',title:'用户人员',width:100}, 
		        {field:'usersex',title:'性别',width:100},
		        {field:'userage',title:'年龄',width:100},
		        {field:'userimg',title:'头像',width:100},
		        {field:'zctime',title:'开始日期',width:100,
		        	
		        	formatter:function (value,row,index){
  		        		var simfomat=new Date();
  		        		simfomat.setTime(value);
  		        		return simfomat.toLocaleDateString();
  		        	} 
		        },
		        {field:'lasttime',title:'结束日期',width:100,
		        	
		        	formatter:function (value,row,index){
  		        		var simfomat=new Date();
  		        		simfomat.setTime(value);
  		        		return simfomat.toLocaleDateString();
  		        	} 
		        },
		       
		        {field:'shangji',title:'操作',width:100, 
			        formatter:function(value,row,index){
		        		return "<input type='button' value='角色分配' onclick='setRole("+row.userid+")'>";
		        	}
		        },
		    ]] ,
		    onLoadSuccess:function(data){  
   		        $('.pactupd').linkbutton({text:'',plain:true,iconCls:'icon-edit'}); 
   		        $('.pactdel').linkbutton({text:'',plain:true,iconCls:'icon-cancel'}); 
   		    } 
		    
		});


	}

		   function setRole(id){
			   $("#roledialog").dialog({
				    title: '分配角色',    
				    width: 400,    
				    height: 200,    
				    closed: false,    
				    cache: false,    
				    href: '<%=request.getContextPath()%>/Role/toYzRoleUser.do?userid='+id,    
				    buttons:[{		    	
						text:'保存',
						handler:function(){
							 var data=$("#roleForm").serialize();
							// alert(data+"------");
							
							$.ajax({
								url:"<%=request.getContextPath()%>/Role/addRoleUser.do",
								data:data+"&userId="+id,
								dataType:"json",
								type:"post",
								success:function(data){
									
									$("#roledialog").dialog("close");
									location.reload();
								},error:function(){
									alert("用户赋角色失败");
								}
							})
							
						}
					},{
						text:'关闭',
						handler:function(){
							
							$("#roledialog").dialog("close");
						}
					}]
			   })
		   }
		   
		
	

	
	
	
	
		</script>
	</body>