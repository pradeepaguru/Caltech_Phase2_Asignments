package jdbc_assignments;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

public class CustomerTable {

	// JDBC URL, username and password of MySQL server
	private static final String url = "jdbc:mysql://localhost:3306/cutomer_table";
	private static final String user = "root";
	private static final String password = "root";
	static Scanner input = new Scanner(System.in);

	Connection con;
	PreparedStatement prSt;
	Statement stmt;
	private static ResultSet rs;

	public static void main(String[] args) {
		boolean choice = true;

		CustomerTable ct = new CustomerTable();

		while (choice) {
			System.out.println("=============PREPARED STATEMENT MENU=================");
			System.out.println("1. Insert the new Customer Record");
			System.out.println("2. Update the Customer Record");
			System.out.println("3. Delete the Customer Record");
			System.out.println("4. Get the Total Counts of Records");
			System.out.println("5. Show all the Customer Records");
			System.out.println("6. Exit ");
			System.out.println("====================================================");
			System.out.println("Enter your choice from (1-6): ");

			int number = input.nextInt();
			System.out.println("You entered option" + number);

			switch (number) {
			case 1:
				ct.insertCustomerRecord();
				break;
			case 2:
				ct.updateCustomerRecord();
				break;

			case 3:
				ct.deleteCustomerRecord();
				break;
			case 4:
				ct.showTotalRecords();
				break;

			case 5:
				ct.showAllCustomerRecords();
				break;

			}

			System.out.println("Would you like to enter another option Y/N");
			String choose = input.next();
			if (choose.equalsIgnoreCase("N")) {
				choice = false;
				input.close();

				System.out.println("Thank you");
			}

		}
	}

	public void insertCustomerRecord() {

		String query = "insert into customer(custid,custname,orderNo,city) values(?,?,?,?)";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, user, password);

			prSt = con.prepareStatement(query);

			// Take user input for insertion
			Scanner input = new Scanner(System.in);

			System.out.print("Enter the Customerid:  ");
			int cid = input.nextInt();
			System.out.println();

			System.out.print("Enter the Customer Name:  ");
			String cname = input.next();
			System.out.println();

			System.out.print("Enter the Order Number:  ");
			int orderNo = input.nextInt();
			System.out.println();

			System.out.print("Enter the City:  ");
			String city = input.next();
			System.out.println();

			prSt.setInt(1, cid);
			prSt.setString(2, cname);
			prSt.setInt(3, orderNo);
			prSt.setString(4, city);

			int count = prSt.executeUpdate();

			// show the number of records
			stmt = con.createStatement();

			String query1 = "select * from customer";
			ResultSet rs = stmt.executeQuery(query1);
			System.out.println("Id    Name    OrderNo  City");

			while (rs.next()) {
				int id = rs.getInt("custid");
				String name = rs.getString("custname");
				int order = rs.getInt("orderNo");
				String ccity = rs.getString("city");
				System.out.println(id + "    " + name + "    " + order + "  " + ccity);
			}

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (prSt != null)
					prSt.close();
				if (con != null)
					con.close();
			} catch (Exception ex) {
			}
		}
	}

	public void updateCustomerRecord() {


		System.out.println("Enter the option to update the customer details:  ");
		System.out.println("For Name - 1 ");
		System.out.println("For City - 2 ");

		int option = input.nextInt();
		System.out.println("You entered option ->" + option);

		switch (option) {
		case 1:

			String sqlUpdate = "UPDATE customer SET custname= ? WHERE custid = ?";

			try {
				try {
					Class.forName("com.mysql.jdbc.Driver");
					con = DriverManager.getConnection(url, user, password);
				} catch (ClassNotFoundException e) {
					e.printStackTrace();
				}
				prSt = con.prepareStatement(sqlUpdate);

				// Take user input for insertion

				System.out.print("Enter the customer id:  ");
				int cid = input.nextInt();
				System.out.println();

				System.out.print("Enter the name  need to be updated:  ");
				String name = input.next();
				System.out.println();

				prSt.setString(1, name);
				prSt.setInt(2, cid);

				int rowAffected = prSt.executeUpdate();
				System.out.println(String.format("Row affected %d", rowAffected));

			} catch (SQLException ex) {
				System.out.println(ex.getMessage());
			}
			break;

		case 2:

			String sqlUpdate1 = "UPDATE customer SET city= ? WHERE custid = ?";

			try {
				try {
					Class.forName("com.mysql.jdbc.Driver");
					con = DriverManager.getConnection(url, user, password);
				} catch (ClassNotFoundException e) {
					e.printStackTrace();
				}
				prSt = con.prepareStatement(sqlUpdate1);

				// Take user input for insertion

				System.out.print("Enter the customer id:  ");
				int cid = input.nextInt();
				System.out.println();

				System.out.print("Enter the city  need to be updated:  ");
				String name = input.next();
				System.out.println();

				prSt.setString(1, name);
				prSt.setInt(2, cid);

				int rowAffected = prSt.executeUpdate();
				System.out.println(String.format("Row affected %d", rowAffected));

			} catch (SQLException ex) {
				System.out.println(ex.getMessage());
			}
			break;

		}

	}

	public void deleteCustomerRecord() {
		{
			String sqlUpdate = "DELETE from customer where custid=?";

			try {
				try {
					Class.forName("com.mysql.jdbc.Driver");
					con = DriverManager.getConnection(url, user, password);
				} catch (ClassNotFoundException e) {
					e.printStackTrace();
				}
				prSt = con.prepareStatement(sqlUpdate);

				// Take user input for insertion
				Scanner input = new Scanner(System.in);

				System.out.print("Enter the empid:  ");
				int eid = input.nextInt();
				System.out.println();

				prSt.setInt(1, eid);
				prSt.executeUpdate();

				System.out.println("Record deleted successfully");
			} catch (SQLException ex) {
				System.out.println(ex.getMessage());
			}
		}
	}

	public void showAllCustomerRecords() {
		String query1 = "select * from customer";

		try {
			try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			// opening database connection to MySQL server
			con = DriverManager.getConnection(url, user, password);

			// getting Statement object to execute query
			stmt = con.createStatement();

			rs = stmt.executeQuery(query1);

			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				int order = rs.getInt(3);
				String city = rs.getString(4);
				System.out.printf("Custid : %d, custname: %s, orderNo : %s %n, city :%s ", id, name, order, city);
			}
		} catch (SQLException sqlEx) {
			sqlEx.printStackTrace();
		} finally {
			// close connection ,stmt and resultset here
			try {
				con.close();
			} catch (SQLException se) {
				/* can't do anything */ }
			try {
				stmt.close();
			} catch (SQLException se) {
				/* can't do anything */ }
			try {
				rs.close();
			} catch (SQLException se) {
				/* can't do anything */ }
		}
	}
	
	public void showTotalRecords(){
		
		String query1 = "SELECT COUNT(*) from customer";

		try {
			try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			// opening database connection to MySQL server
			con = DriverManager.getConnection(url, user, password);

			// getting Statement object to execute query
			 prSt = con.prepareStatement(query1);
			 int count = prSt.executeUpdate();
			
			
            System.out.printf("Total Records are", count);
	            
			
		} catch (SQLException sqlEx) {
			sqlEx.printStackTrace();
		} finally {
			// close connection ,stmt and resultset here
			try {
				con.close();
			} catch (SQLException se) {
				/* can't do anything */ }
			try {
				stmt.close();
			} catch (SQLException se) {
				/* can't do anything */ }
			try {
				rs.close();
			} catch (SQLException se) {
				/* can't do anything */ }
		}
	}

}
