package com.chinasofti.blc.tiremusic.mv.service;

import java.util.List;

import com.chinasofti.blc.tiremusic.mv.dao.MvDao;
import com.chinasofti.blc.tiremusic.mv.entity.Mv;
/**
 * Mv服务类
 * @author Administrator
 *
 */
public class MvService {
	
	private MvDao mvDao =new MvDao();
	/**
	 * 查询并返回所有的MV
	 * @return
	 */
	public List<Mv> loadAllMv(){
		return mvDao.loadAllMv();
	}
	public List<Mv> loadAllMvByState(){
		return mvDao.loadAllMvByState();
	}
}
