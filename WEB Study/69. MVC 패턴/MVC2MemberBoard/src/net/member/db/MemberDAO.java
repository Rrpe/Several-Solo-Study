package net.member.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {
	Connection conn = null;
	ResultSet rs = null;
	PreparedStatement stmt = null;
	
	public MemberDAO() {
		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/Oracle11g");
			conn = ds.getConnection();
		} catch (Exception ex) {
			System.out.println("DB 연결 실패 : " + ex);
			return;
		}
	}

	public boolean login(String MEMBER_ID, String MEMBER_PW) {

		
		String sql = "SELECT * FROM STUDENT WHERE ID=? AND PASS=?";

		try {

			PreparedStatement stmt = conn.prepareStatement(sql);

			stmt.setString(1, MEMBER_ID);
			stmt.setString(2, MEMBER_PW);

			rs = stmt.executeQuery();

			while (rs.next()) {

				if (MEMBER_ID.equals(rs.getString(1)) && MEMBER_PW.equals(rs.getString(2))) {
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

	public boolean join(String MEMBER_ID, String MEMBER_PW, String MEMBER_EMAIL, String MEMBER_NAME, String MEMBER_JUMIN, String MEMBER_ADRESS, String MEMBER_MYM) {

		
		String sql = "INSERT INTO STUDENT (ID, PASS, MAIL, NAME, JUMIN, ADRESS, MYM) VALUES (?, ?, ?, ?, ?, ?, ?)";

		try {

			PreparedStatement stmt = conn.prepareStatement(sql);

			stmt.setString(1, MEMBER_ID);
			stmt.setString(2, MEMBER_PW);
			stmt.setString(3, MEMBER_EMAIL);
			stmt.setString(4, MEMBER_NAME);
			stmt.setString(5, MEMBER_JUMIN);
			stmt.setString(6, MEMBER_ADRESS);
			stmt.setString(7, MEMBER_MYM);

			stmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public ArrayList<MemberBean> list() {

		ArrayList<MemberBean> dtos = new ArrayList<MemberBean>();
		String sql = "SELECT * FROM STUDENT";
		
		
		try {
			
		      
		    stmt = conn.prepareStatement(sql);
		      
		    rs = stmt.executeQuery();


			while (rs.next()) {
				String MEMBER_ID = rs.getString("ID");
				String MEMBER_PW = rs.getString("PASS");
				String MEMBER_EMAIL = rs.getString("MAIL");
				String MEMBER_NAME = rs.getString("NAME");
				String MEMBER_JUMIN = rs.getString("JUMIN");
				String MEMBER_ADRESS = rs.getString("ADRESS");
				String MEMBER_MYM = rs.getString("MYM");

				System.out.println(MEMBER_ID + " " + MEMBER_PW + " " + MEMBER_EMAIL + " " + MEMBER_NAME + 
						" " + MEMBER_JUMIN + " " + MEMBER_ADRESS + " " + MEMBER_MYM);
				MemberBean dto = new MemberBean(MEMBER_ID, MEMBER_PW, MEMBER_EMAIL, MEMBER_NAME, MEMBER_JUMIN, MEMBER_ADRESS, MEMBER_MYM);
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

	public void delete(String MEMBER_ID) {

		try {

			String query = "DELETE FROM STUDENT WHERE ID = ?";
			stmt = conn.prepareStatement(query);
			stmt.setString(1, MEMBER_ID);
			stmt.executeUpdate();

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			try {
				if (conn != null)
					conn.close();
				if (stmt != null)
					stmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
	}

	public MemberBean infolist(String MEMBER_ID) {

		MemberBean dto = null;
		String ID = MEMBER_ID;

		try {

			String query = "SELECT * from STUDENT WHERE ID = ?";
			stmt = conn.prepareStatement(query);
			stmt.setString(1, MEMBER_ID);
			rs = stmt.executeQuery();

			while (rs.next()) {
				ID = rs.getString("ID");
				String MEMBER_PW = rs.getString("PASS");
				String MEMBER_EMAIL = rs.getString("MAIL");
				String MEMBER_NAME = rs.getString("NAME");
				String MEMBER_JUMIN = rs.getString("JUMIN");
				String MEMBER_ADRESS = rs.getString("ADRESS");
				String MEMBER_MYM = rs.getString("MYM");

				dto = new MemberBean(MEMBER_ID, MEMBER_PW, MEMBER_EMAIL, MEMBER_NAME, MEMBER_JUMIN, MEMBER_ADRESS, MEMBER_MYM);
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
		return dto;
	}
}