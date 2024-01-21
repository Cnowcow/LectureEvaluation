package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseUtil {

    public static Connection getConnection() {
        try {
            String url = "jdbc:mysql://localhost:3306/lectureevaluation?serverTimezone=Asia/Seoul";
//            String url = "jdbc:mysql://49.50.167.118:3306/lectureevaluation?serverTimezone=Asia/Seoul&useUnicode=true&characterEncoding=UTF-8";
            String user = "root";
            String password = "mysql";
//            String password = "Dlwpdud123!@#";
            Class.forName("com.mysql.jdbc.Driver"); // 이 부분은 최신 MySQL 드라이버에서는 필요하지 않습니다.
            Connection conn = DriverManager.getConnection(url, user, password);
            return conn; // Connection 객체를 반환            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}