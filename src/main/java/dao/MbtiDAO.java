package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Mbti;
import model.Select;

public class MbtiDAO {
	private final String JDBC_URL ="jdbc:h2:tcp://localhost/~/job";
	private final String DB_USER ="sa";
	private final String DB_PASS ="";
	
	public Mbti findByLogin(Select select) {
		Mbti mbti = null;
		
		try {Class.forName("org.h2.Driver");
	}catch(ClassNotFoundException e) {
		throw new IllegalStateException("JDBCドライバを読み込めませんでした");
	}
		try(Connection conn = DriverManager.getConnection(
			JDBC_URL,DB_USER,DB_PASS)){
			
			String sql = "SELECT MBTI_ID,MBTI_NAME,MBTI_TYPE,MBTI_IMAGE,CHARACTER,JOB FROM JOBS WHERE MBTI_ID = ?";
			PreparedStatement pStmt = conn.prepareStatement(sql);
			pStmt.setInt(1, select.getMbtiId());
			
			ResultSet rs = pStmt.executeQuery();
			
			if(rs.next()) {
				int mbtiId = rs.getInt("MBTI_ID");
				String mbtiName = rs.getString("MBTI_NAME");
				String mbtiType = rs.getString("MBTI_TYPE");
				String mbtiImage = rs.getString("MBTI_IMAGE");
				String character = rs.getString("CHARACTER");
				String job = rs.getString("JOB");
				mbti = new Mbti(mbtiId, mbtiName, mbtiType, mbtiImage, character, job);
			}
		}catch(SQLException e) {
			e.printStackTrace();
			return null;
		}
		return mbti;
		}

}
