package businessLogic;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;




public class CSDL {
	
	private static Connection ketNoi;
	public static Connection getKetNoi() {
		String url = "jdbc:mysql://localhost:3306/minishop248";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			ketNoi = DriverManager.getConnection(url, "root", "");
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return ketNoi;
	}
}
