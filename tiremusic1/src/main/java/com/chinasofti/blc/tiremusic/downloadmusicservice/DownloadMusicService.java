package com.chinasofti.blc.tiremusic.downloadmusicservice;

import java.util.List;

import com.chinasofti.blc.tiremusic.downloadmusicdao.DownLoadMusicDao;
import com.chinasofti.blc.tiremusic.musiclist.entity.Musiclist;

public class DownloadMusicService {
	private DownLoadMusicDao dao=new DownLoadMusicDao();
public boolean downloadmusic(int uid,int songid) {
	return dao.downloadmusic(uid, songid);
}
public List<Musiclist> getmusiclist(int uid){
	return dao.getdownloadmusiclist(uid);
}
}
