package com.chinasofti.blc.tiremusic.music.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chinasofti.blc.tiremusic.common.controller.BaseController;
import com.chinasofti.blc.tiremusic.music.entity.Music;
import com.chinasofti.blc.tiremusic.music.service.MusicService;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
@WebServlet("/music/*")
public class MusicController extends BaseController{


	private static final long serialVersionUID = 1L;
	private MusicService musicService =new MusicService();
	/**
	 * 加载所有歌曲信息
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	public  void loadAllMusics(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int page =Integer.parseInt(req.getParameter("page"));
		int rows = Integer.parseInt(req.getParameter("rows"));
		//查询参数
		String songname = req.getParameter("songname");
		String schoolid = req.getParameter("schoolid");
		String songerid =req.getParameter("songerid");
		String albumid = req.getParameter("albumid");
		Map<String, Object> map =musicService.queryAllMusicsPage(page, rows, songname, schoolid, songerid, albumid);
		//System.out.println(map);
		//List<Music> list= musicService.queryAllMusics();
		resp.setCharacterEncoding("utf-8");
		resp.getWriter().write(JSONObject.fromObject(map).toString());
		//resp.getWriter().write(JSONArray.fromObject(list).toString());
	}

		
}
