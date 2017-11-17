<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String basepath = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>MV主界面</title>
<link rel="stylesheet" type="text/css" href="<%=basepath %>/easyui/themes/bootstrap/easyui.css">
<link rel="stylesheet" type="text/css" href="<%=basepath %>/easyui/themes/icon.css">
<style type="text/css">
	input {
		margin-top: 15px;	
	}
	#btn_1{
		margin:10px 0px 0px 100px; 
	}
	#btn_2{
		margin:10px 0px 0px 100px; 
	}
	select {
		margin-top: 10px;	
	}
</style>
</head>
<body>
 	
	<table id="dg">
		
	</table>  
	<div id="win_1">
		<form action="">
			MV名称：<input  name="mvname"  type= "text"  style="width: 150px"/></br>
			发行时间:<input class="easyui-datetimebox" name="releasetime"  data-options="required:true,showSeconds:false" style="width:150px"></br> 
			MV封面:<input name="frontimg" class="easyui-filebox" style="width:150px"/></br>
			MV:<input name="mv" class="easyui-filebox" style="width:150px"/></br>
			MV介绍：<input  name="mvtext"  type= "text"  style="width:150px"/></br>
			<a id="btn_1" href="javascript:addMV()" class="easyui-linkbutton" data-options="iconCls:'icon-add'">添加MV</a>
		</form>
	</div>  
	<div id="win_2">
		
	</div>  

	<div id="win_3">
	</div> 
	<script type="text/javascript" src="<%=basepath %>/easyui/jquery.min.js"></script>
	<script type="text/javascript" src="<%=basepath %>/easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="<%=basepath %>/easyui/locale/easyui-lang-zh_CN.js"></script> 

	<script type="text/javascript">
	//增加MV
	function addMV(){
		$.post("/tiremusic/Mv/addMv.do",{mvname:"mvname",releasetime:"releasetime",frontimg:"frontimg",mv:"mv",mvtext:"mvtext"},function(result){
		    $("span").html(result);
		  });
	}
	//修改时间
	function parseJSONDate(json){
		var year = json.year+1900;
		var month = json.month+1;
		var date =json.date;
		return year+"-"+(month>10?month:("0"+month))+"-"+(date>10?date:("0"+date));
	}
	//初始化新窗口
	$('#win_1').window({  
		title:'添加MV',
	    width:600,    
	    height:400,    
	    modal:true,
	    closed:true
	});
	$('#win_2').window({  
		title:'修改MV',
	    width:600,    
	    height:400,    
	    modal:true,
	    closed:true
	});
	$('#win_3').window({  
		title:'播放MV',
	    width:600,    
	    height:400,    
	    modal:true,
	    closed:true,
	  
	});
	//加载MV信息
	$('#dg').datagrid({    
	    url:'/tiremusic/MV/loadAllMv.do', 
	    rownumbers:true,
	    singleSelect:true,
	    pagination:true,
	    height:460,
	   
	    toolbar: [{
			iconCls: 'icon-add',
			text:'增加',
			handler: function(){
				$('#win_1').window('open');
			}
		},'-',{
			iconCls: 'icon-remove',
			text:'删除',
			handler: function(){
				$.messager.alert('警告','服务器发生错误！请稍后重试');    
				$.messager.confirm('确认','您确认想要删除记录吗？',function(r){    
				    if (r){    
				        alert('确认删除');    
				    }    
				}); 
			}
		},'-',{
			iconCls: 'icon-edit',
			text:'修改',
			handler: function(){
				$('#win_2').window('open');
			}
		},'-',{
			iconCls: 'icon-tip',
			text:'播放',
			handler: function(){
				$('#win_3').window('open');
			}
		}],

	    columns:[[ 
	    	{field:'checkbox',title:'',width:100,checkbox:true}, 
<<<<<<< .mine
	        {field:'mvid',title:'MV编号',width:100},
	        {field:'mvname',title:'MV名称',width:100},
	        {field:'location',title:'MV地址',width:100},
=======
	        {field:'mvid',title:'MV编号',width:100,align:'center'},    
>>>>>>> .r101
	        {field:'songid',title:'歌曲id',width:100,hidden:true},    
<<<<<<< .mine
	        {field:'releasetime',title:'发行时间',width:100,
	        	formatter: function(value,row,index){
	        		return parseJSONDate(value);
	        }
	        	
	        },
	        
	        {field:'downloadtimes',title:'下载次数',width:100},
	        {field:'frontimg',title:'MV封面',width:100},
	        {field:'mvpustate',title:'MV审核状态',width:100,
	        	formatter: function(value,row,index){
					if (value==1){
						return '已通过审核';
					} else {
						return '未通过审核';
					}
				}	
	        },{field:'mvstate',title:'MV状态',width:100,
	        	formatter: function(value,row,index){
					if (value==1){
						return '上架中';
					} else {
						return '已下架';
					}
				}	
	        },
	        
=======
	        {field:'songname',title:'歌曲名称',width:100,align:'center'},
	        {field:'releasetime',title:'发行时间',width:100,align:'center'},
	        {field:'downloadtimes',title:'下载次数',width:100,align:'center'},
	        {field:'frontimg',title:'MV封面',width:100,align:'center'}
>>>>>>> .r101
	    ]]    
	    
	}); 
		
	</script>
</body>
</html>