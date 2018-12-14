package net.member.db;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;

import javax.sql.*;
import javax.naming.*;

public class MemberDAO {

	public MemberDAO() {
		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/Oracle11g");
		} catch (Exception ex) {
			System.out.println("DB 연결 실패 : " + ex);
			return;
		}
	}

	public boolean signin(String id, String pass) {

		Connection conn = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM STUDENT WHERE ID=? AND PASS=?";

		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/Oracle11g");
			conn = ds.getConnection();

			PreparedStatement stmt = conn.prepareStatement(sql);

			stmt.setString(1, id);
			stmt.setString(2, pass);

			rs = stmt.executeQuery();

			while (rs.next()) {

				if (id.equals(rs.getString(1)) && pass.equals(rs.getString(2))) {
					return true;
				} else {
					return false;
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return false;
	}

	public boolean signup(String id, String pass, String mail, String name, String jumin, String adress, String mym) {

		Connection conn = null;
		String sql = "INSERT INTO STUDENT (ID, PASS, MAIL, NAME, JUMIN, ADRESS, MYM) VALUES (?, ?, ?, ?, ?, ?, ?)";

		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/Oracle11g");
			conn = ds.getConnection();

			PreparedStatement stmt = conn.prepareStatement(sql);

			stmt.setString(1, id);
			stmt.setString(2, pass);
			stmt.setString(3, mail);
			stmt.setString(4, name);
			stmt.setString(5, jumin);
			stmt.setString(6, adress);
			stmt.setString(7, mym);

			stmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public ArrayList<MemberBean> list() {

		ArrayList<MemberBean> dtos = new ArrayList<MemberBean>();
		Connection conn = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM STUDENT";
		PreparedStatement stmt = null;
		
		try {
			
			Context init = new InitialContext();
		      DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/Oracle11g");
		      conn = ds.getConnection();
		      
		      stmt = conn.prepareStatement(sql);
		      
		      rs = stmt.executeQuery();


			while (rs.next()) {
				String id = rs.getString("ID");
				String pass = rs.getString("PASS");
				String mail = rs.getString("MAIL");
				String name = rs.getString("NAME");
				String jumin = rs.getString("JUMIN");
				String adress = rs.getString("ADRESS");
				String mym = rs.getString("MYM");

				System.out.println(id + " " + pass + " " + mail + " " + name + " " + jumin + " " + adress + " " + mym);
				MemberBean dto = new MemberBean(id, pass, mail, name, jumin, adress, mym);
				dtos.add(dto);
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (stmt != null)
					stmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
		return dtos;
	}

}