package com.chinasofti.blc.tiremusic.user.usercontorller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UserRegisterContorller {
	public void userRegisterContorller(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uname = req.getParameter("uname");
		String realname = req.getParameter("realname");
		String upassword = req.getParameter("upassword");
		String uaddress = req.getParameter("uaddress");
		String uemail = req.getParameter("uemaisl");
		String utelephone = req.getParameter("utelephone");
		String uidnumber = req.getParameter("uidnumber");
		String avatar = req.getParameter("avatar");
		int usersex = Integer.parseInt(req.getParameter("usersex"));
		SimpleDateFormat lgd = new SimpleDateFormat("yyyy-MM-dd ");
		try {
			Date logindate = lgd.parse(req.getParameter("logindate"));
			Date userbirthday = lgd.parse(req.getParameter("userbirthday"));
		} catch (ParseException e) {
			e.printStackTrace();
		}
	}
}
