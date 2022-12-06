package player;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import player.Player;

public class PlayerDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public PlayerDAO() {
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
	
	public int getNext() {
		String SQL = "SELECT * FROM player ORDER BY playerName DESC";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1; // 첫 번째 게시물인 경우
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // 데이터베이스 오류
	}
	
	public ArrayList<Player> getList() {
		String SQL = "SELECT * FROM player ORDER BY playerName DESC";
		ArrayList<Player> list = new ArrayList<Player>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Player player = new Player();
				player.setPlayerName(rs.getString(1));
				player.setTeam(rs.getString(2));
				player.setPosition(rs.getString(3));
				player.setBacknumber(rs.getString(4));
				player.setNational(rs.getString(5));
				player.setHeight(rs.getString(6));
				player.setWeight(rs.getString(7));
				player.setBirth(rs.getString(8));
				player.setLeaguetype(rs.getString(9));
				list.add(player);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public ArrayList<Player> getSearch(String searchField, String searchText) {
		ArrayList<Player> list = new ArrayList<Player>();
		String SQL = "SELECT * FROM player WHERE " + searchField.trim();
		try {
            if(searchText != null && !searchText.equals("") ){//이거 빼면 안 나온다ㅜ 왜지?
                SQL +=" LIKE '%"+searchText.trim()+"%'";
            }
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Player player = new Player();
				player.setPlayerName(rs.getString(1));
				player.setTeam(rs.getString(2));
				player.setPosition(rs.getString(3));
				player.setBacknumber(rs.getString(4));
				player.setNational(rs.getString(5));
				player.setHeight(rs.getString(6));
				player.setWeight(rs.getString(7));
				player.setBirth(rs.getString(8));
				player.setLeaguetype(rs.getString(9));
				list.add(player);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public boolean nextPage(int pageNumber) {
		String SQL = "SELECT * FROM player";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1,  getNext()- (pageNumber - 1) * 10);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
}
