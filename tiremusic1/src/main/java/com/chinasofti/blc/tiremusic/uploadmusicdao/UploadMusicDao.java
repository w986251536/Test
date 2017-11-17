package com.chinasofti.blc.tiremusic.uploadmusicdao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.chinasofti.blc.tiremusic.common.util.DBUtil;
import com.chinasofti.blc.tiremusic.downloadmusic.entity.DownloadMusic;


public class UploadMusicDao {
public boolean uploadmusic(int uid) {
	Connection con=null;
	PreparedStatement pst=null;
	con=DBUtil.getConnection();
	
	String sql="insert into upload(?,?) values(?,?)";
	String sql1="insert into song(?) values(?)";
	try {
		con.setAutoCommit(false);
		DownloadMusic downloadMusic=new DownloadMusic();
		pst=con.prepareStatement(sql);
		pst.setInt(1, uid);
		pst.setDate(2,(Date) new java.util.Date(downloadMusic.getUploadtime().getTime()));
		pst=con.prepareStatement(sql1);
		pst.setInt(1, downloadMusic.getUploadlistid());
		pst.executeUpdate();
		
	} catch (SQLException e) {
		e.printStackTrace();
	}
	
	return false;
	
}
}
