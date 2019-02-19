
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.mysql.*;
public class abc {
	
	public static void main(String[]args) throws ClassNotFoundException, SQLException{
		String sql;
		ResultSet rs;
		Boolean b;
		String adminname="Bhushan";
		String adminpassword="neverask";
	
	
		Class.forName("com.mysql.jdbc.Driver");
	
	

		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bhush","root","root");
		sql="select adminusername,adminpassword from Adminn where adminusername=? and adminpassword=?";
		
			PreparedStatement ptmt=con.prepareStatement(sql);
			ptmt.setString(1,adminname);
			ptmt.setString(2,adminpassword);
			rs=ptmt.executeQuery();
			while(rs.next())
			{
				if(adminname.equals(rs.getString("adminusername"))&&adminpassword.equals(rs.getString("adminpassword")))
						{
					System.out.println(adminname);
						}
				else
				{
					System.out.println("invalidvalid");
				}
			}
	}

	
	
	
}
