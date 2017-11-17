package com.chinasofti.blc.tiremusic.user.userdao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.chinasofti.blc.tiremusic.common.util.DBUtil;
import com.chinasofti.blc.tiremusic.user.entity.User;

public class UserRegisterDao {
	public boolean addUserDao(){
		User user = new User();
		Connection con = DBUtil.getConnection();
		PreparedStatement ps = null;
		ResultSet rs=null;
		try {
			ps=con.prepareStatement("insert into user name(uname,realname,upassword,uaddress,uemail,utelephone,uidnumber,avatar,lgoindate,usersex,userbirthday) values(?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, user.getUname());
			ps.setString(3, user.getRealname());
			ps.setString(2, user.getUpassword());
			ps.setString(4, user.getUaddress());
			ps.setString(5, user.getUemail());
			ps.setString(6, user.getUtelephone());
			ps.setString(7, user.getUidnumber());
			ps.setString(8, user.getAvatar());
			//ps.setString(9, user.getLogindate());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
}
