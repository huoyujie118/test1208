package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import util.DbUtil;
import bean.Say;
import bean.User;

public class SayDao {
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
    //清除
	public void clearUp() {
		try {
			if (rs != null)
				rs.close();
			if (ps != null)
				ps.close();
			if (conn != null)
				ps.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
//登陆
	public User login(User u) {
		String sql = null;
		DbUtil db = new DbUtil();
		conn = db.getConn();
		sql = "select * from users where username=?and password=?";
		try {
			System.out.print("1111:");
			System.out.println(u);
			ps = conn.prepareStatement(sql);
			ps.setString(1, u.getUsername());
			ps.setString(2, u.getPassword());
			rs = ps.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			if (rs.next()) {
			} else {
				u = null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return u;
	}
//添加流言
	public boolean save(Say s) {
		try {
			String sql = "insert into fruit_say values(default,?,?,?)";
			conn = new DbUtil().getConn();
			ps = conn.prepareStatement(sql);
			ps.setString(1, s.getSay_content());
			ps.setString(2, s.getSay_time());
			ps.setString(3, s.getSay_username());
			int i = ps.executeUpdate();
			if (i > 0)
				return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	// ��ѯ��������
	@SuppressWarnings("all")
	public List<Say> findAll() {
		List<Say> alist = new ArrayList(20);
		try {
			String sql = "select * from fruit_say ";
			conn = new DbUtil().getConn();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				Say s = new Say();
				s.setSay_id(rs.getInt(1));
				s.setSay_content(rs.getString(2));
				s.setSay_time(rs.getString(3));
				s.setSay_username(rs.getString(4));
				alist.add(s);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return alist;
	}
	
	
	public boolean delete(Say s) {
		try {
			String sql = "DELETE FROM fruit_say WHERE say_id = ?";
			conn = new DbUtil().getConn();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, s.getSay_id());
			
			int i = ps.executeUpdate();
			if (i > 0)
				return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	public static void main(String[] args) {
		SayDao dao=new SayDao();
		Say s=new Say();
		s.setSay_id(21);
		boolean f=dao.delete(s);
		System.out.println(f);
	}

}
