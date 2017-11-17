<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String basepath = request.getContextPath();
	String lid=request.getParameter("lid");  
	String lname=request.getParameter("lname");
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
              <!-- <span class="pull-right text-sm">101,400 <br>Followers</span> -->
              <span class="h2 font-thin" id="lname"><%=lname %><label id="lid" style="display: none"><%=lid %></label></span>
            </div>
            <img class="img-full" src="images/m43.jpg" alt="...">
          </div>
          <!-- 这里是歌单里的歌曲列表 -->
          <ul id="songlistUL" class="list-group list-group-lg no-radius no-border no-bg m-t-n-xxs m-b-none auto">

          </ul>
        </section>
      </section>
    </aside>
    <!-- 收藏歌曲模态框 -->
	<div class="modal fade" id="addMusicInSongListModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="myModalLabel">收藏歌单</h4>
	      </div>
	      <div class="modal-body" style="padding-left: 150px">
	     		<label id="songid" style="display: none"></label>
	     		<label>您想放到哪个歌单里?</label><br/>
	     		<select id="addMusicInSongList" style="width: 150px">

	     		</select>
	     		<label id="addMusicInSongListerr" style="color: red"></label>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
	        <button type="button" class="btn btn-primary" onclick="addMusicInSongList()">保存</button>
	      </div>
	    </div>
	  </div>
	</div> <!-- 收藏歌曲模态框结束 -->
    <!-- / side content -->
    <section class="col-sm-4 no-padder bg">
      <section class="vbox">
        <section class="scrollable hover">
          <ul class="list-group list-group-lg no-bg auto m-b-none m-t-n-xxs">
            <li class="list-group-item clearfix">
              <a href="#" class="jp-play-me pull-right m-t-sm m-l text-md">
                <i class="icon-control-play text"></i>
                <i class="icon-control-pause text-active"></i>
              </a>
              <a href="#" class="pull-left thumb-sm m-r">
                <img src="images/m0.jpg" alt="...">
              </a>
              <a class="clear" href="#">
                <span class="block text-ellipsis">Little Town</span>
                <small class="text-muted">by Soph Ashe</small>
              </a>
            </li>
            <li class="list-group-item clearfix">
              <a href="#" class="jp-play-me pull-right m-t-sm m-l text-md">
                <i class="icon-control-play text"></i>
                <i class="icon-control-pause text-active"></i>
              </a>
              <a href="#" class="pull-left thumb-sm m-r">
                <img src="images/a1.png" alt="...">
              </a>
              <a class="clear" href="#">
                <span class="block text-ellipsis">Get lacinia odio sem nec elit</span>
                <small class="text-muted">by Filex</small>
              </a>
            </li>
            <li class="list-group-item clearfix">
              <a href="#" class="jp-play-me pull-right m-t-sm m-l text-md">
                <i class="icon-control-play text"></i>
                <i class="icon-control-pause text-active"></i>
              </a>
              <a href="#" class="pull-left thumb-sm m-r">
                <img src="images/a2.png" alt="...">
              </a>
              <a class="clear" href="#">
                <span class="block text-ellipsis">Donec sed odio du</span>
                <small class="text-muted">by Dan Doorack</small>
              </a>
            </li>
            <li class="list-group-item clearfix">
              <a href="#" class="jp-play-me pull-right m-t-sm m-l text-md">
                <i class="icon-control-play text"></i>
                <i class="icon-control-pause text-active"></i>
              </a>
              <a href="#" class="pull-left thumb-sm m-r">
                <img src="images/a3.png" alt="...">
              </a>
              <a class="clear" href="#">
                <span class="block text-ellipsis">Curabitur blandit tempu</span>
                <small class="text-muted">by Foxes</small>
              </a>
            </li>
            <li class="list-group-item clearfix">
              <a href="#" class="jp-play-me pull-right m-t-sm m-l text-md">
                <i class="icon-control-play text"></i>
                <i class="icon-control-pause text-active"></i>
              </a>
              <a href="#" class="pull-left thumb-sm m-r">
                <img src="images/a4.png" alt="...">
              </a>
              <a class="clear" href="#">
                <span class="block text-ellipsis">Urna mollis ornare vel eu leo</span>
                <small class="text-muted">by Chris Fox</small>
              </a>
            </li>
            <li class="list-group-item clearfix">
              <a href="#" class="jp-play-me pull-right m-t-sm m-l text-md">
                <i class="icon-control-play text"></i>
                <i class="icon-control-pause text-active"></i>
              </a>
              <a href="#" class="pull-left thumb-sm m-r">
                <img src="images/a5.png" alt="...">
              </a>
              <a class="clear" href="#">
                <span class="block text-ellipsis">Faucibus dolor auctor</span>
                <small class="text-muted">by Lauren Taylor</small>
              </a>
            </li>
            <li class="list-group-item clearfix">
              <a href="#" class="jp-play-me pull-right m-t-sm m-l text-md">
                <i class="icon-control-play text"></i>
                <i class="icon-control-pause text-active"></i>
              </a>
              <a href="#" class="pull-left thumb-sm m-r">
                <img src="images/a6.png" alt="...">
              </a>
              <a class="clear" href="#">
                <span class="block text-ellipsis">Praesent commodo cursus magn</span>
                <small class="text-muted">by Chris Fox</small>
              </a>
            </li>
            <li class="list-group-item clearfix">
              <a href="#" class="jp-play-me pull-right m-t-sm m-l text-md">
                <i class="icon-control-play text"></i>
                <i class="icon-control-pause text-active"></i>
              </a>
              <a href="#" class="pull-left thumb-sm m-r">
                <img src="images/a7.png" alt="...">
              </a>
              <a class="clear" href="#">
                <span class="block text-ellipsis">Vestibulum id</span>
                <small class="text-muted">by Milian</small>
              </a>
            </li>
            <li class="list-group-item clearfix">
              <a href="#" class="jp-play-me pull-right m-t-sm m-l text-md">
                <i class="icon-control-play text"></i>
                <i class="icon-control-pause text-active"></i>
              </a>
              <a href="#" class="pull-left thumb-sm m-r">
                <img src="images/a8.png" alt="...">
              </a>
              <a class="clear" href="#">
                <span class="block text-ellipsis">Blandit tempu</span>
                <small class="text-muted">by Amanda Conlan</small>
              </a>
            </li>
            <li class="list-group-item clearfix">
              <a href="#" class="jp-play-me pull-right m-t-sm m-l text-md">
                <i class="icon-control-play text"></i>
                <i class="icon-control-pause text-active"></i>
              </a>
              <a href="#" class="pull-left thumb-sm m-r">
                <img src="images/a9.png" alt="...">
              </a>
              <a class="clear" href="#">
                <span class="block text-ellipsis">Vestibulum ullamcorpe quis malesuada augue mco rpe</span>
                <small class="text-muted">by Dan Doorack</small>
              </a>
            </li>
            <li class="list-group-item clearfix">
              <a href="#" class="jp-play-me pull-right m-t-sm m-l text-md">
                <i class="icon-control-play text"></i>
                <i class="icon-control-pause text-active"></i>
              </a>
              <a href="#" class="pull-left thumb-sm m-r">
                <img src="images/a10.png" alt="...">
              </a>
              <a class="clear" href="#">
                <span class="block text-ellipsis">Natis ipsum ac feugiat</span>
                <small class="text-muted">by Hamburg</small>
              </a>
            </li>
            <li class="list-group-item clearfix">
              <a href="#" class="jp-play-me pull-right m-t-sm m-l text-md">
                <i class="icon-control-play text"></i>
                <i class="icon-control-pause text-active"></i>
              </a>
              <a href="#" class="pull-left thumb-sm m-r">
                <img src="images/a0.png" alt="...">
              </a>
              <a class="clear" href="#">
                <span class="block text-ellipsis">Sec condimentum au</span>
                <small class="text-muted">by Amanda Conlan</small>
              </a>
            </li>
          </ul>
        </section>
      </section>
    </section>
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
  function loadMusicInfo() {
		var lid=$('#lid').text();
  		$.post("/tiremusic/songlist/showAllMusicByListId.do",{lid:lid},function(data){
			$('#songlistUL li').remove();
  			for (var i = 0; i < data.length; i++) {
				$('#songlistUL').append('<li class="list-group-item"><div class="pull-right m-l"><a href="#" class="m-r-sm"><i class="icon-cloud-download"></i></a><a href="javascript:addMusic('+data[i].songid+','+lid+')"><i class="icon-plus"></i></a><a href="javascript:removeMusic('+data[i].songid+','+lid+')"><i class="icon-trash"></i></a></div><a href="#" class="jp-play-me m-r-sm pull-left"><i class="icon-control-play text"></i><i class="icon-control-pause text-active"></i></a><div class="clear text-ellipsis"><span>'+data[i].songname+'</span><span class="text-muted">------'+data[i].songername+'</span></div></li>');
			}
  		},"json");
  		$.post("/tiremusic/songlist/showAllMusicList.do",function(data){
			$('#addMusicInSongList option').remove();
			for (var i = 0; i < data.length; i++) {
				$('#addMusicInSongList').append('<option value="'+data[i].songlistid+'">'+data[i].songlistname+'</option>');
			}
  		},"json");
	}
  	//收藏歌单模态框
  	function addMusic(sid,lid) {  		
		$('#songid').text(sid);
  		$('#addMusicInSongListModal').modal('show');
	}
  
	//收藏歌曲
	function addMusicInSongList() {
		var sid=$('#songid').text();
  		var lid=$('#addMusicInSongList').val();
		$.post("/tiremusic/songlist/addMusicToList.do",{lid:lid,sid:sid},function(data){
  			if(data=="true"){
				$('#addMusicInSongListerr').text("");
				$('#songid').text("");
				loadMusicInfo();
  		  		$('#addMusicInSongListModal').modal('hide');
  			}else{
				$('#addMusicInSongListerr').text(data);
  			}
  		},"text");   
	}
	//从歌单中移除歌曲
  	function removeMusic(sid,lid) {
  		$.post("/tiremusic/songlist/deleteMusicInList.do",{lid:lid,sid:sid},function(data){
  			if(data=="true"){
  				loadMusicInfo();
  			}else{
  			}
  		},"text"); 
	}
  	
  
	$(function() {
		loadMusicInfo();
	});
  </script>
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>