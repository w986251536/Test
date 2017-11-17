package com.chinasofti.blc.tiremusic.downloadmusicdao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.chinasofti.blc.tiremusic.common.util.DBUtil;
import com.chinasofti.blc.tiremusic.musiclist.entity.Musiclist;

public class DownLoadMusicDao {
public boolean downloadmusic(int uid,int songid) {
	Connection con=null;
	PreparedStatement pst=null;
	con=DBUtil.getConnection();
	String sql="insert into download(?) values(?)";
	String sql1="insert into download_song(?) values(?)";
	try {
		con.setAutoCommit(false);
		pst=con.prepareStatement(sql);
		pst.setInt(1, uid);
		pst=con.prepareStatement(sql1);
	    pst.setInt(1, songid);
	    pst.executeUpdate();
	    con.commit();
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return true;
	
}
public List<Musiclist> getdownloadmusiclist(int uid){
	List<Musiclist> muscilists=new ArrayList<Musiclist>();
	Connection con=null;
	PreparedStatement pst=null;
	ResultSet rs=null;
	con=DBUtil.getConnection();
	String sql="select   songname,schoolname,songername,albumname from song,songer,school,album,song_album,download where song.songerid=songer.songerid and song.schoolid=school.schoolid and song.songid=song_album.songid and song_album.Albumid=album.albumid and  download.Downloadlistid=song.songid and  uid=? ";
	
	try {
		pst=con.prepareStatement(sql);
		pst.setInt(1, uid);
		rs=pst.executeQuery();
		while(rs.next()){
			Musiclist musiclist=new Musiclist();
			musiclist.setAlbumname(rs.getString("albumname"));
			musiclist.setSchoolname(rs.getString("schoolname"));
			musiclist.setSongername(rs.getString("songername"));
			musiclist.setSongname(rs.getString("songname"));
			muscilists.add(musiclist);
		}
	} catch (SQLException e) {
	
		e.printStackTrace();
	}
	
	return muscilists;
	
}
}
