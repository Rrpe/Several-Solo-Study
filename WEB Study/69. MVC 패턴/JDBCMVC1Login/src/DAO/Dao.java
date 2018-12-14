package DAO;

import java.sql.*;
import javax.sql.*;
import javax.naming.*;

public class Dao {

	DataSource dataSource;
	public Dao() {
		Connection conn = null;
		PreparedStatement preparedStatement = null;

		try {
			Context context = new InitialContext();
			DataSource dataSource = (DataSource) context.lookup("java:comp/env/jdbc/Oracle11g");
			conn = dataSource.getConnection();

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	
	}
	
	public void join(String UTID, String UTPW, String UTNAME, String UTNIC){
		String UTID1 = UTID;
		String UTPW1 = UTPW;
		String UTNAME1 = UTNAME;
		String UTNIC1 = UTNIC;

		Connection conn = null;
		PreparedStatement preparedStatement = null;

		try {
			Context context = new InitialContext();
			DataSource dataSource = (DataSource) context.lookup("java:comp/env/jdbc/Oracle11g");
			conn = dataSource.getConnection();
			
			String query = "insert into UT1 (UTID, UTPW, UTNAME, UTNIC) values (?, ?, ?, ?)";
			preparedStatement = conn.prepareStatement(query);
			preparedStatement.setString(1, UTID1);
			preparedStatement.setString(2, UTPW1);
			preparedStatement.setString(3, UTNAME1);
			preparedStatement.setString(4, UTNIC1);
			
			int rn = preparedStatement.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			try {
				if (preparedStatement != null)
					preparedStatement.close();
				if (conn != null)
					conn.close();
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
	
	}
	
	public boolean login(String UTID, String UTPW) {
		Connection conn = null;
		PreparedStatement preparedStatement = null;

		String id = UTID;
		String password = UTPW;

		ResultSet rs = null; //db에서 값을 받아주는것

		try {
			Context context = new InitialContext();
			DataSource dataSource = (DataSource) context.lookup("java:comp/env/jdbc/Oracle11g");
			conn = dataSource.getConnection();

			String query = "SELECT * FROM UT1 WHERE UTID =? and UTPW=?";
			preparedStatement = conn.prepareStatement(query);

			preparedStatement.setString(1, id);
			preparedStatement.setString(2, password);

			rs = preparedStatement.executeQuery();

			while (rs.next()) {
				if (id.equals( rs.getString(1)) && password.equals(rs.getString(2))) {
						return true;
					}else{
						return false;
					}
				}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (preparedStatement != null)
					preparedStatement.close();
				if (conn != null)
					conn.close();
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
		return false;
	}
	
}
