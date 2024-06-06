package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class JobDAO {
    private String url = "jdbc:h2:tcp://localhost/~/job";
    private String user = "sa";
    private String password = "";
    
    public Job getJobByMbtiId(String mbtiId) {
    	String sql = "SELECT * FROM jobs WHERE MBTI_ID = ?";
        Job job = null;

        try (Connection conn = DriverManager.getConnection(url, user, password);
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setString(1, mbtiId);
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    int mbtiIdResult = rs.getInt("MBTI_ID");
                    String mbtiName = rs.getString("MBTI_NAME");
                    String mbtiType = rs.getString("MBTI_TYPE");
                    String mbtiImage = rs.getString("MBTI_IMAGE");
                    String characteristics = rs.getString("CHARACTERISTICS");
                    String jobDescription = rs.getString("JOB");

                    job = new Job(mbtiIdResult, mbtiName, mbtiType, mbtiImage, characteristics, jobDescription);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return job;
    }

    public List<Job> getAllJobs() {
        List<Job> jobs = new ArrayList<>();
        String sql = "SELECT * FROM jobs";
        
        try (Connection conn = DriverManager.getConnection(url, user, password);
                PreparedStatement pstmt = conn.prepareStatement(sql);
                ResultSet rs = pstmt.executeQuery()) {

               while (rs.next()) {
                   int mbtiId = rs.getInt("mbti_id");
                   String mbtiName = rs.getString("mbti_name");
                   String mbtiType = rs.getString("mbti_type");
                   String mbtiImage = rs.getString("mbti_image");
                   String characteristics = rs.getString("characteristics");
                   String job = rs.getString("job");

                   Job jobInfo = new Job(mbtiId, mbtiName, mbtiType, mbtiImage, characteristics, job);
                   jobs.add(jobInfo);
               }
           } catch (SQLException e) {
               e.printStackTrace();
           }
           return jobs;
       }

}
