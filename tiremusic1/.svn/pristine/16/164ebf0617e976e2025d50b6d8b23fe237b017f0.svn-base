package com.chinasofti.blc.tiremusic.mv.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.chinasofti.blc.tiremusic.common.util.DBUtil;
import com.chinasofti.blc.tiremusic.mv.entity.Mv;
/**
 * MV操作类
 * @author Administrator
 *
 */
public class MvDao {
	/**
	 * 查询并返回所有的MV
	 * @return
	 */
	public List<Mv> loadAllMv(){
		Connection connection= DBUtil.getConnection();
		QueryRunner queryRunner =new QueryRunner();
		try {
		List<Mv> list =queryRunner.query(connection,"select * from mv",new BeanListHandler<>(Mv.class));
		return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				DbUtils.close(connection);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return null;
	}
	/**
	 * 查询所有通过审核且上架的MV
	 * @return
	 */
	public List<Mv> loadAllMvByState(){
		Connection connection= DBUtil.getConnection();
		QueryRunner queryRunner =new QueryRunner();
		try {
		List<Mv> list =queryRunner.query(connection,"select * from mv where mvpustate=1 and mvstate=1",new BeanListHandler<>(Mv.class));
		return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				DbUtils.close(connection);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return null;
	}
}
