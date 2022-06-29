package event.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class ConnectionManager {
	
	
	private ConnectionManager(){
		//private constructor
	}
	
	/**
	 * Connection instance
	 */
	private Connection connection = getConnection();

	private static ConnectionManager instance = null;
	
	public static ConnectionManager getInstance(){
		if (instance==null)
			instance = new ConnectionManager();
		return instance;
	}
	
	/**
	 * Getting connection from connection pool.
	 *
	 * @see ConnectionPool
	 * @throws SQLException
	 */
	@SuppressWarnings("deprecation")
	Connection getConnection() {

				try {
					Class.forName("org.postgresql.Driver").newInstance();
				} catch (InstantiationException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				} catch (IllegalAccessException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				} catch (ClassNotFoundException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
		
		String username = "lcfcfvjrfszxcn";
		String password = "6f718053b9309dae6636b1e3cbe96f494bb5a7dedcde53905abc136271b076b0";
		String dbUrl = "postgres://lcfcfvjrfszxcn:6f718053b9309dae6636b1e3cbe96f494bb5a7dedcde53905abc136271b076b0@ec2-52-44-13-158.compute-1.amazonaws.com:5432/d307gkiuptv6lj";
		try {
			return DriverManager.getConnection(dbUrl, username, password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return connection;
	}
}