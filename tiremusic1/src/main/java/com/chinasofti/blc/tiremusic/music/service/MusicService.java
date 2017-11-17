package com.chinasofti.blc.tiremusic.music.service;

import java.sql.Types;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.chinasofti.blc.tiremusic.common.util.ConditionUtil;
import com.chinasofti.blc.tiremusic.music.dao.MusicDao;
import com.chinasofti.blc.tiremusic.music.entity.Music;

public class MusicService {

	private MusicDao musicDao =new MusicDao();
	
	public Map<String,Object> queryAllMusicsPage(int page,int rows,String songname,String schoolid,String songerid,String albumid){
		//拼接sql
		String sql="select * from song";
		ConditionUtil cu = new ConditionUtil(sql);
		cu.appendEquals(1, "songname", songname, Types.VARCHAR);
		cu.appendEquals(1, "schoolid", schoolid, Types.VARCHAR);
		cu.appendEquals(1, "songerid", songerid, Types.VARCHAR);
		cu.appendEquals(1, "albumid", albumid, Types.VARCHAR);
		//查询数量
		int total =musicDao.queryAllMusics(cu.toString()).size();
		//查询当前页面
		sql="select s.songid,s.songname,s.songerid,se.songername,a.albumid,a.albumname,s.schoolid,sc.schoolname,s.frontimg,s.songstate from song s join songer se on s.songerid= se.songerid join song_album sa on s.songid=sa.songid join album a on sa.albumid=a.albumid join school sc on s.schoolid=sc.schoolid ";
		cu=new ConditionUtil(sql);
		cu.appendEquals(1, "songname", songname, Types.VARCHAR);
		cu.appendEquals(1, "schoolid", schoolid, Types.VARCHAR);
		cu.appendEquals(1, "songerid", songerid, Types.VARCHAR);
		cu.appendEquals(1, "albumid", albumid, Types.VARCHAR);
		cu.appendLimit(page, rows);
		List<Music> list =musicDao.queryAllMusicsPage(sql);
		Map<String, Object> map =new HashMap<>();
		map.put("total", total);
		map.put("rows", list);
		return map;
	}
	/**
	 * 加载所有music信息
	 * @return
	 */
	public List<Music> queryAllMusics(){
		return musicDao.queryAllMusics();
	}
}
