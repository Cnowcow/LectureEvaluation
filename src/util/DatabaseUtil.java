package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseUtil {

    public static Connection getConnection() {
        try {
            String url = "jdbc:mysql://localhost:3306/LectureEvaluation?serverTimezone=Asia/Seoul";
            String user = "root";
            String password = "mysql";
            Class.forName("com.mysql.jdbc.Driver"); // 이 부분은 최신 MySQL 드라이버에서는 필요하지 않습니다.
            Connection conn = DriverManager.getConnection(url, user, password);
            return conn; // Connection 객체를 반환            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
