<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String basepath = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>歌曲管理主界面</title>
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
 	<div id="">
 		<form action="" id="searchForm">
 			<table>
 				<tr>
 					<td>歌曲名：</td>
 					<td><input type="text" name="Songname"/></td>
 					<td>流派：</td>
 					<td>
 						<select name="schoolid"style="width: 120px;">
							<option value="">------请选择------</option>
						</select>
 					</td>
 					<td>歌手：</td>
 					<td>
	 					<select name="songerid"style="width: 120px;">
							<option value="">------请选择------</option>
						</select>
					</td>
 					<td>专辑：</td>
 					<td>
 						<select name="albumid"style="width: 120px;">
							<option value="">------请选择------</option>
						</select>
 					</td>
 					<td>
 						<a id="btn_3" href="javascript:searchSong()" class="easyui-linkbutton" data-options="iconCls:'icon-search'">查询</a>
 					</td>
 				</tr>
 			</table>
 		</form>
 	</div>
	<table id="dg"></table>  
	<div id="win_1">
		<form action="" id="">
			歌曲名称：<input type="text" name="songname"/><br/>
			歌手名称：<select name="songerid"style="width: 120px;">
						<option value="">------请选择------</option>
					</select><br/>
			专辑名称：<select name="albumid"style="width: 120px;">
						<option value="">------请选择------</option>
					</select><br/>
			流派名称：<select name="schoolid"style="width: 120px;">
						<option value="">------请选择------</option>
					</select><br/>
			歌曲封面:<input class="easyui-filebox" style="width:150px;margin-top: 15px" data-options="buttonText:'选择文件'"><br/>
			<a id="btn_1" href="javascript:addSong()" class="easyui-linkbutton" data-options="iconCls:'icon-add'">添加歌曲</a>
		</form>
	</div>  
	<div id="win_2">
		<form action="">
			歌曲名称：<input type="text" name="Songname"/><br/>
			歌手名称：<select name="songerid"style="width: 120px;">
						<option value="">------请选择------</option>
					</select><br/>
			专辑名称：<select name="albumid"style="width: 120px;">
						<option value="">------请选择------</option>
					</select><br/>
			流派名称：<select name="schoolid"style="width: 120px;">
						<option value="">------请选择------</option>
					</select><br/>
			
			<a id="btn_2" href="javascript:editSong()" class="easyui-linkbutton" data-options="iconCls:'icon-edit'">修改歌曲</a>
		</form>
	</div>  
	<script type="text/javascript" src="<%=basepath %>/easyui/jquery.min.js"></script>
	<script type="text/javascript" src="<%=basepath %>/easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="<%=basepath %>/easyui/locale/easyui-lang-zh_CN.js"></script> 
	<script type="text/javascript">
	//初始化新窗口
	$('#win_1').window({  
		title:'添加歌曲',
	    width:600,    
	    height:400,    
	    modal:true,
	    closed:true
	});
	$('#win_2').window({  
		title:'修改歌曲',
	    width:600,    
	    height:400,    
	    modal:true,
	    closed:true
	});
	//加载用户信息
	$('#dg').datagrid({    
	    url:'<%=basepath %>/music/loadAllMusics.do', 
	    rownumbers:true,
	    singleSelect:true,
	    pagination:true,
	    height:460,
	    singleSelect:true,
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
		}],
	    columns:[[
	    	{field:'checkbox',title:'',width:100,checkbox:true}, 
	        {field:'songid',title:'歌曲编号',width:100,align:'center'},    
	        {field:'songname',title:'歌曲名称',width:100,align:'center'},    
	        {field:'songerid',title:'歌手id',width:100,hidden:true},
	        {field:'songername',title:'歌手',width:100,align:'center'},
	        {field:'albumid',title:'专辑编号',width:100,hidden:true},
	        {field:'albumname',title:'专辑',width:100,align:'center'},
	        {field:'schoolid',title:'流派编号',width:100,hidden:true},
	        {field:'schoolname',title:'流派',width:100,align:'center'},
	        {field:'frontimg',title:'歌曲封面',width:100,align:'center'},
	        {field:'songstate',title:'歌曲状态',width:100,align:'center'}
	    ]]    
	}); 
	//页面加载后查询流派
	$(function(){
		$.post('<%=basepath %>/school/loadAllSchools.do',function(data){
			for(var i=0;i<data.length;i++){
				$('#searchForm select[name="schoolid"]').append('<option value="'+data[i].schoolid+'">'+data[i].schoolname+'</option>');
			}
		},'json');
	});
	//页面加载完毕后一步查询所有歌手和专辑、
	$(function(){
		$.post('<%=basepath %>/songer/loadAllSongers.do',function(data){
			for(var i=0;i<data.length;i++){
				$('#searchForm select[name="songerid"]').append('<option value="'+data[i].songerid+'">'+data[i].songername+'</option>');
				//二级联动
				$('#searchForm select[name="songerid"]').change(function(){
					var songerid=$(this).val();
					//alert(songerid);
					$.post('<%=basepath %>/album/loadAllAlbumsBySongerid.do',{songerid:songerid},function(data ){
						//先删
						$('#searchForm select[name="albumid"] option:not(:first)').remove();
						for(var j=0;j<data.length;j++){
							$('#searchForm select[name="albumid"]').append('<option value="'+data[j].albumid+'">'+data[j].albumname+'</option>');
						}
					},'json');
				});
			}
		},'json');		
	});
	
	//查询歌曲
	function searchSong(){
		//获取查询参数
		var songname = $('#searchForm input[name="songname"]').val();
		var schoolid = $('#searchForm select[name="schoolid"]').val();
		var songerid = $('#searchForm select[name="songerid"]').val();
		var albumid = $('#searchForm select[name="albumid"]').val();
		//查询
		$('#dg').datagrid('load',{
			songname: songname,
			schoolid: schoolid,
			songerid: songerid,
			albumid: albumid
		});	
	}
	
	</script>
</body>
</html>