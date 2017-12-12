<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div id="org-layout" class="easyui-layout" data-options="fit:true">   
		<div data-options="region:'center',title:'center title',fit:true" style="background:#eee;">
		
				<!-- 	这是弹框修改 -->
				<!-- 	<div id="upd-dialog"></div> -->
				<table id="delete-datag"></table>
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
		$('#delete-datag').datagrid({ 
		    url:'<%=request.getContextPath()%>/Role/queryRoleTree.do',    
		    pagination:true,
		    pageNumber:1,
		    pageSize:3,
		    pageList:[1,3,5,8],
		   //这是取数据库中的值
		    columns:[[    
		          
		        {field:'id',title:'序号',width:100},
		        {field:'jsname',title:'用户人员',width:100}, 
		        {field:'shangji',title:'操作',width:100, 
			        formatter:function(value,row,index){
		        		return "<input type='button' value='权限分配' onclick='setRole("+row.id+")'>";
		        	}
		        },
		    ]] ,
		    onLoadSuccess:function(data){  
   		        $('.pactupd').linkbutton({text:'',plain:true,iconCls:'icon-edit'}); 
   		        $('.pactdel').linkbutton({text:'',plain:true,iconCls:'icon-cancel'}); 
   		    } 
		    
		})


	}

		    function setRole(id){
			   $("#roledialog").dialog({
				    title: '分配角色',    
				    width: 400,    
				    height: 200,
				    closed: false,    
				    cache: false,   
				    href: '<%=request.getContextPath()%>/Role/ToRoleTree.do?id='+id,    
				    buttons:[{		    	
						text:'保存',
						handler:function(){
							var nodestr = $('#qxtreeDemo').tree('getChecked');
							var s = '';
							for(var i=0; i<nodestr.length; i++){
								if (s != '') s += ',';
								s += nodestr[i].id;
							}
							$.ajax({
								url:"<%=request.getContextPath()%>/Role/addrole.do",
								type:"post",
								data:"ids="+s+"&id="+id,
								success:function(data){
									$("#delete-datag").dialog("close");
								},error:function(){
									alert("保存出错")
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