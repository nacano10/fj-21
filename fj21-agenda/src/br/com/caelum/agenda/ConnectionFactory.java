package br.com.caelum.agenda;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {

	public Connection getConnection() {
		try {
			DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
			return DriverManager.getConnection("jdbc:mysql://localhost/fj21?useTimezone=true&serverTimezone=UTC", "root", "123456");
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

}