package club;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ClubDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public ClubDAO() {
		try {
			String dbID = "root";
			String dbPWD = "1542684";
			String dbPORT = "3306";
			String dbNAME = "league";
			String TIMEZONE = "serverTimezone=UTC";
			String dbURL = "jdbc:mysql://localhost:" + dbPORT + "/" + dbNAME + "?" + TIMEZONE;
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPWD);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<Club> getList() {
		String SQL = "SELECT * FROM club";
		ArrayList<Club> list = new ArrayList<Club>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Club club = new Club();
				club.setClubRank(rs.getString(1));
				club.setClubName(rs.getString(2));
				club.setClubMatch(rs.getString(3));
				club.setPts(rs.getString(4));
				club.setWin(rs.getString(5));
				club.setDraw(rs.getString(6));
				club.setLose(rs.getString(7));
				club.setGf(rs.getString(8));
				club.setGa(rs.getString(9));
				club.setGd(rs.getString(10));
				club.setRecent(rs.getString(11));
				club.setLeaguetype(rs.getString(12));
				list.add(club);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
