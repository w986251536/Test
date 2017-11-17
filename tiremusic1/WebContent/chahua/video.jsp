<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.List" %>
<%@ page language="java" import="com.chinasofti.blc.tiremusic.mv.entity.Mv"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String basepath = request.getContextPath();
	Object mvlist =request.getSession().getAttribute("mvlist"); 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Cloud Music</title>
<meta name="description" content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<link rel="stylesheet" href="<%=basepath %>/chahua/js/jPlayer/jplayer.flat.css" type="text/css" />
<link rel="stylesheet" href="<%=basepath %>/chahua/css/bootstrap.css" type="text/css" />
<link rel="stylesheet" href="<%=basepath %>/chahua/css/animate.css" type="text/css" />
<link rel="stylesheet" href="<%=basepath %>/chahua/css/font-awesome.min.css" type="text/css" />
<link rel="stylesheet" href="<%=basepath %>/chahua/css/simple-line-icons.css" type="text/css" />
<link rel="stylesheet" href="<%=basepath %>/chahua/css/font.css" type="text/css" />
<link rel="stylesheet" href="<%=basepath %>/chahua/css/app.css" type="text/css" />
<link rel="stylesheet" type="text/css" href="<%=basepath %>/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="<%=basepath %>/easyui/themes/icon.css">  
</head>
<body>
	
<section id="content">
    <section class="vbox" id="bjax-el">
      <section class="scrollable padder-lg">
        <h3 class="font-thin m-b">Video List</h3>
        <div class="row row-sm" id="mv">
        
		          <div class="col-xs-6 col-sm-4 col-md-3">
		            <div class="item">
		              <div class="pos-rlt">
		                <div class="item-overlay opacity r r-2x bg-black">
		                  <div class="center text-center m-t-n">
		                    <a href="videoplay.jsp "><i class="fa fa-play-circle i-2x"></i></a>
		                  </div>
		                </div>
		                <a href="videoplay.jsp"><img src="images/m40.jpg" alt="" class="r r-2x img-full"></a>
		              </div>
		              <div class="padder-v">
		                <a href="videoplay.jsp" class="text-ellipsis"><%=mvlist %></a>
		              </div>
		            </div>
		          </div>
         </div>	
	<script src="<%=basepath %>/chahua/js/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="<%=basepath %>/chahua/js/bootstrap.js"></script>
	<!-- App -->
	<script src="<%=basepath %>/chahua/js/app.js"></script>  
	<script src="<%=basepath %>/chahua/js/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="<%=basepath %>/chahua/js/app.plugin.js"></script>
	<script type="text/javascript" src="<%=basepath %>/easyui/jquery.min.js"></script>
	<script type="text/javascript" src="<%=basepath %>/easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="<%=basepath %>/easyui/locale/easyui-lang-zh_CN.js"></script> 
	<script type="text/javascript" src="<%=basepath %>/chahua/js/jPlayer/jquery.jplayer.min.js"></script>
	<script type="text/javascript" src="<%=basepath %>/chahua/js/jPlayer/add-on/jplayer.playlist.min.js"></script>
	<script type="text/javascript">
		
		$(function(){
			alert(mvlist);
			$.post('/tiremusic/MV/loadAllMvByState.do',function(data){
					alert(data[0].mvname);
				  },'json');
		});
	 </script>
</body>
</html>