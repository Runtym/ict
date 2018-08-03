package com.ict.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CarService {

	private static String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private static String id = "ictu";
	private static String pwd = "12345678";
	private static String driver = "oracle.jdbc.driver.OracleDriver";

	public List<Map<String, String>> getCarList(String carName) {
		List<Map<String, String>> carList = new ArrayList<Map<String, String>>();
		Connection con = null;
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, id, pwd);
			System.out.println("접속 완료!!");
			String sql = "select carNo, carName, carPrice, carVendor from car";
			if (carName != null) {
				sql += " where carName like '%' || ? || '%'";
			}
			PreparedStatement ps = con.prepareStatement(sql);
			if (carName != null) {
				ps.setString(1, carName);
			}
			ResultSet rs = ps.executeQuery();
			Map<String, String> car;
			System.out.println(con);
			while (rs.next()) {
				car = new HashMap<String, String>();
				car.put("name", rs.getString("carName"));
				car.put("price", rs.getString("carPrice"));
				car.put("vendor", rs.getString("carVendor"));
				carList.add(car);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (con != null) {
				try {
					con.close();
				} catch (SQLException se) {
					se.printStackTrace();
				}
			}
			con = null;
		}
		return carList;
	}
}
