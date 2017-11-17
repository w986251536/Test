$(document).ready(function(){
  // video

  $("#jplayer_1").jPlayer({
    ready: function () {
      $(this).jPlayer("setMedia", {
        title: "aaa",
        m4v: "/tiremusic/mv/IWantYoutoKnow.mp4",
        ogv: "/tiremusic/mv/IWantYoutoKnow.mp4",
       //地址
        webmv: "/tiremusic/mv/IWantYoutoKnow.mp4",
       //图片
        poster: "images/m42.jpg"
      });
    },
    swfPath: "js",
    supplied: "webmv, ogv, m4v",
    size: {
      width: "100%",
      height: "auto",
      cssClass: "jp-video-360p"
    },
    globalVolume: true,
    smoothPlayBar: true,
    keyEnabled: true
  });

});

function show(){
  var myPlaylist = new jPlayerPlaylist({
	jPlayer: "#jplayer_N",
    cssSelectorAncestor: "#jp_container_N"
  }, [
   
  ], {
    playlistOptions: {
      enableRemoveControls: true,
      autoPlay: true
    },
    swfPath: "js/jPlayer",
    supplied: "webmv, ogv, m4v, oga, mp3",
    smoothPlayBar: true,
    keyEnabled: true,
    audioFullScreen: false
  });
  $.post('/tiremusic/songaudition/listenSong.do',function(data){
	for(var i=0;i<data.length;i++){
		myPlaylist.add({
		  title:data[i].songname,
		  artist:data[i].songer,
		  mp3:data[i].songurl,
		  poster: "/tiremusic/chahua/images/m0.jpg"
		});
	}
  },'json');
  
  $(document).on($.jPlayer.event.pause, myPlaylist.cssSelector.jPlayer,  function(){
    $('.musicbar').removeClass('animate');
    $('.jp-play-me').removeClass('active');
    $('.jp-play-me').parent('li').removeClass('active');
  });

  $(document).on($.jPlayer.event.play, myPlaylist.cssSelector.jPlayer,  function(){
    $('.musicbar').addClass('animate');
  });

  $(document).on('click', '.jp-play-me', function(e){
    e && e.preventDefault();
    var $this = $(e.target);
    if (!$this.is('a')) $this = $this.closest('a');

    $('.jp-play-me').not($this).removeClass('active');
    $('.jp-play-me').parent('li').not($this.parent('li')).removeClass('active');

    $this.toggleClass('active');
    $this.parent('li').toggleClass('active');
    if( !$this.hasClass('active') ){
      myPlaylist.pause();
    }else{
      var i = Math.floor(Math.random() * (1 + 7 - 1));
      myPlaylist.play(i);
    }
    
  });
}
