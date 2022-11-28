package user;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	private Connection conn; // 데이터베이스에 접근하게 해주는 하나의 객체
	private PreparedStatement pstmt;
	private ResultSet rs; // 정보를 담을 수 있는 객체

	public UserDAO() {
		try {
			String dbID = "root";
			String dbPWD = "1542684";
			String dbPORT = "3306";
			String dbNAME = "league";
			String TIMEZONE = "serverTimezone=UTC";

			String Query = "jdbc:mysql://localhost: " + dbPORT + "/" + dbNAME + "?" + TIMEZONE;
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(Query, dbID, dbPWD);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
