package com.chinasofti.blc.tiremusic.music.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.chinasofti.blc.tiremusic.common.util.DBUtil;
import com.chinasofti.blc.tiremusic.music.entity.Music;

public class MusicDao {
	/**
	 * 查询并返回所有歌曲信息
	 * @return
	 */
	public List<Music> queryAllMusics() {
		Connection con =DBUtil.getConnection();
		QueryRunner qr = new QueryRunner();
		try {
			List<Music> list=qr.query(con, "select s.songid,s.songname,s.songerid,se.songername,a.albumid,a.albumname,s.schoolid,sc.schoolname,s.frontimg,s.songstate from song s join songer se on s.songerid= se.songerid join song_album sa on s.songid=sa.songid join album a on sa.albumid=a.albumid join school sc on s.schoolid=sc.schoolid",new BeanListHandler<>(Music.class));
			//System.out.println(list);
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtil.closeConnection(null, null, con);
		}
		return null;
	}
	/**
	 * 根据sql查询
	 * @param sql
	 * @return
	 */
	public List<Music> queryAllMusics(String sql) {
		Connection con =DBUtil.getConnection();
		QueryRunner qr = new QueryRunner();
		try {
			List<Music> list=qr.query(con, sql,new BeanListHandler<>(Music.class));
			//System.out.println(list);
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtil.closeConnection(null, null, con);
		}
		return null;
	}
	/**
	 * 分页加载music所有信息
	 * @param page
	 * @param row
	 * @return
	 */
	public List<Music> queryAllMusicsPage(String sql){
		Connection con =DBUtil.getConnection();
		QueryRunner qr = new QueryRunner();
		try {
			List<Music> list=qr.query(con, sql,new BeanListHandler<>(Music.class));
			//System.out.println(list);
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtil.closeConnection(null, null, con);
		}
		return null;
	}
}
