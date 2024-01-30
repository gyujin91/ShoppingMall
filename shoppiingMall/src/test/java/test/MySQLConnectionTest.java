package test;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.shopping.myapp.HomeController;



public class MySQLConnectionTest {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	//DB연결 변수
	private static final String DRIVER = "com.mysql.jdbc.Driver";
    private static final String URL = "jdbc:mysql://localhost:3306/spring_ex?useSSL=false&serverTimezone=Asia/Seoul";
    private static final String USER = "root";
    private static final String PASSWORD = "0000";
	
	@Test
	public void testConnection() throws Exception {
		Class.forName(DRIVER);	//드라이버 로딩
		try {
			Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
			logger.info("MySQL이 정상적으로 연결되었습니다.");
		} catch(Exception e) {
			e.printStackTrace();
		}
		//fail("Not yet implemented");
	}
}