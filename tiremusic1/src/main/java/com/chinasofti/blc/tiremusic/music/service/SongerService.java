package com.chinasofti.blc.tiremusic.music.service;

import java.util.List;

import com.chinasofti.blc.tiremusic.music.dao.SongerDao;
import com.chinasofti.blc.tiremusic.music.entity.Songer;

public class SongerService {

	private SongerDao songerDao = new SongerDao();
	/**
	 * 查询并返回所有歌手信息
	 * @return
	 */
	public List<Songer> queryAllSongers(){
		return songerDao.queryAllSongers();
	}
}
