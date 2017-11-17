package com.chinasofti.blc.tiremusic.music.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chinasofti.blc.tiremusic.common.controller.BaseController;
import com.chinasofti.blc.tiremusic.music.entity.Songer;
import com.chinasofti.blc.tiremusic.music.service.SongerService;

import net.sf.json.JSONArray;
@WebServlet("/songer/*")
public class SongerController extends BaseController{

	private static final long serialVersionUID = 1L;
	private SongerService songerService =new SongerService();
	/**
	 * 异步加载所有歌手
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	public void loadAllSongers(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Songer> list=songerService.queryAllSongers();
		resp.setCharacterEncoding("utf-8");
		resp.getWriter().write(JSONArray.fromObject(list).toString());
	}
	
	
}
