<%@ page import = "java.sql.*" %>
<% Statement stmt = null; ResultSet rs = null;
Class.forName("com.mysql.jdbc.Driver");
String dbUrl = "jdbc:mysql://localhost:3306/employees";
Connection conn = DriverManager.getConnection(dbUrl, "root", "mju");
try { stmt = conn.createStatement();
if(stmt.execute("select * from employees limit 10")) {
rs = stmt.getResultSet(); }
while(rs.next()) { out.println(rs.getString("firstName")); out.println(rs.getString("LastName"));
out.write("<br/>"); }
rs.close(); stmt.close();
} catch(Exception e) {
out.println("rs.next() ERROR");
}
conn.close(); %>
