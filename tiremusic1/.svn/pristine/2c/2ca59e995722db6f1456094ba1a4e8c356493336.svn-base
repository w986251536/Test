<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String basepath = request.getContextPath();
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
</head>
<body>
<section class="w-f-md">
  <section class="hbox stretch bg-black dker">
    <!-- side content -->
    <aside class="col-sm-5 no-padder" id="sidebar">
      <section class="vbox animated fadeInUp">
        <section class="scrollable">
          <div class="m-t-n-xxs item pos-rlt">
            <div class="top text-right">
              <span class="musicbar animate bg-success bg-empty inline m-r-lg m-t" style="width:25px;height:30px">
                <span class="bar1 a3 lter"></span>
                <span class="bar2 a5 lt"></span>
                <span class="bar3 a1 bg"></span>
                <span class="bar4 a4 dk"></span>
                <span class="bar5 a2 dker"></span>
              </span>
            </div>
            <div class="bottom gd bg-info wrapper-lg">
              <span class="pull-right text-sm">1 <br>关注</span>
              <span class="h2 font-thin">音乐试听TOP榜</span>
            </div>
            <img class="img-full" src="images/m44.jpg" alt="...">
          </div>
          <ul class="list-group list-group-lg no-radius no-border no-bg m-t-n-xxs m-b-none auto" id="list">
          </ul>
        </section>
      </section>
    </aside>
    <!-- / side content -->
  </section>
</section>
 <script src="<%=basepath %>/chahua/js/jquery.min.js"></script>
  <!-- Bootstrap -->
  <script src="<%=basepath %>/chahua/js/bootstrap.js"></script>
  <!-- App -->
  <script src="<%=basepath %>/chahua/js/app.js"></script>  
  <script src="<%=basepath %>/chahua/js/slimscroll/jquery.slimscroll.min.js"></script>
  <script src="<%=basepath %>/chahua/js/app.plugin.js"></script>
  <script type="text/javascript" src="<%=basepath %>/chahua/js/jPlayer/jquery.jplayer.min.js"></script>
  <script type="text/javascript" src="<%=basepath %>/chahua/js/jPlayer/add-on/jplayer.playlist.min.js"></script>
  <script type="text/javascript" src="<%=basepath %>/chahua/js/jPlayer/demo.js"></script>
  <script type="text/javascript">
  	$(function() {
		$.post("/tiremusic/Statistics/getAuditionTop.do",{"num":10},function(data){
			//alert(data.length);
			for(var i = 1;i<=data.length;i++){
				$("#list").append('<li class="list-group-item"> '+
			              '<div class="pull-right m-l">'+
			                '<a href="#" class="m-r-sm"><i class="icon-cloud-download"></i></a>'+
			                '<a href="#" ><i class="icon-plus"></i></a>'+
			              '</div>'+
			              '<a href="#" class="jp-play-me m-r-sm pull-left">'+
			               ' <i class="icon-control-play text"></i>'+
			               ' <i class="icon-control-pause text-active"></i>'+
			              '</a>'+
			             ' <div class="clear text-ellipsis" id="8">'+
			              '  <span>'+data[i-1].songname+'</span>'+
			               ' <span class="text-muted">-------'+data[i-1].songername+'</span>'+
			              '</div>'+
			            '</li>')
			}
		},"json");
	});
  </script>
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>