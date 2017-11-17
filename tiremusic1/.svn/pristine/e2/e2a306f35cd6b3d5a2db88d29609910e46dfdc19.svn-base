package com.chinasofti.blc.tiremusic.downloadmusic.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chinasofti.blc.tiremusic.common.controller.BaseController;
import com.chinasofti.blc.tiremusic.downloadmusicservice.DownloadMusicService;
@WebServlet(value="/download/*",name="DownloadMusic")
public class DownloadMusic extends BaseController{
	private static final long serialVersionUID = 1L;
	private DownloadMusicService musicService=new DownloadMusicService();
	public void downloadmusic(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int uid=(int) req.getAttribute("uid");
		int songid=Integer.parseInt(req.getParameter("songid"));
		musicService.downloadmusic(uid, songid);
		
	}
	
	
	
	
	public void getdownloadmusiclist(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int uid=(int) req.getAttribute("uid");
		musicService.getmusiclist(uid);
	}

}
