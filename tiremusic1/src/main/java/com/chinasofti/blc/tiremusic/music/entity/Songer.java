package com.chinasofti.blc.tiremusic.music.entity;
/**
 * 歌手实体类
 * @author Administrator
 *
 */
public class Songer {

	private int songerid;//歌手编号
	private String songername;//歌手
	public int getSongerid() {
		return songerid;
	}
	public void setSongerid(int songerid) {
		this.songerid = songerid;
	}
	public String getSongername() {
		return songername;
	}
	public void setSongername(String songername) {
		this.songername = songername;
	}
	public Songer() {
		super();
	}
	
}
