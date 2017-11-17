package com.chinasofti.blc.tiremusic.mv.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.RepaintManager;

import com.chinasofti.blc.tiremusic.common.controller.BaseController;
import com.chinasofti.blc.tiremusic.mv.entity.Mv;
import com.chinasofti.blc.tiremusic.mv.service.MvService;

import net.sf.json.JSONArray;
@WebServlet("/MV/*")
/**
 * MV控制类
 * @author Administrator
 *
 */
public class MvController extends BaseController{
	
	private MvService mvService =new MvService();
	private static final long serialVersionUID = 1L;
	/**
	 * 查看所有的MV
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	public void loadAllMv(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Mv> list = mvService.loadAllMv();
		resp.setCharacterEncoding("utf-8");
		resp.getWriter().write(JSONArray.fromObject(list).toString());
	}
	public void loadAllMvByState(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Mv> list = mvService.loadAllMvByState();
		
		resp.setCharacterEncoding("utf-8");
		resp.getWriter().write(JSONArray.fromObject(list).toString());
	}
}
