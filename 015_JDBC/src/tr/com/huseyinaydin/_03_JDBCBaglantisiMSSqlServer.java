package tr.com.huseyinaydin;

import java.sql.*;

public class _03_JDBCBaglantisiMSSqlServer {

	public static void main(String[] args) {
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			String baglantiURL = "jdbc:sqlserver://localhost:52633;" + "databaseName=Okul;" + "user=root;"
					+ "password=toor";

			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			con = DriverManager.getConnection(baglantiURL);

			String SQL_ARA = "SELECT * FROM Ogrenci";
			stmt = con.createStatement();

			rs = stmt.executeQuery(SQL_ARA);

			boolean kayitlar = rs.next();

			if (!kayitlar) {
				System.out.println("KAYIT YOK");
				return;
			} else {
				do {
					String ADI = null;
					ADI = rs.getString("Adi");
					System.out.println(rs.getString(1) + " " + ADI + " " + rs.getString("Soyadi"));
				} while (rs.next());
			}

		} catch (Exception e) {
			System.out.println("HATA : " + e);
		} finally {
			if ((stmt != null) || (rs != null) || (con != null)) {
				try {
					stmt.close();
				} catch (Exception e) {
					System.out.println("HATA : " + e);
				}
			}
		}
	}
}