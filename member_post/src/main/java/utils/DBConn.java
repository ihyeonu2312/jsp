package utils; //static 메서드로

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConn {
	public static Connection getConnection () throws ClassNotFoundException, SQLException {
		Class.forName("org.mariadb.jdbc.Driver");
		return DriverManager.getConnection("jdbc:mariadb://3.37.130.65:3306/post", "sample", "1234");
	}
}