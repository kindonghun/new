package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public UserDAO() { //데이터 접근객체 (데이터를 넣고,데이터를 가져오는곳)
		try {
			String dbURL= "jdbc:mysql://localhost:3306/BBS";
			String dbID= "root";
			String dbPassword ="4556";
			Class.forName("com.mysql.jdbc.Driver");
			conn= DriverManager.getConnection(dbURL,dbID,dbPassword);
			System.out.println("Connection Success!");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	public int login(String userID, String userPassword) {
		
		
		try {
			String SQL="SELECT userPassword FROM USER WHERE userID=?";
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(userPassword)) {
					return 1; //로그인성공
				}
				else 
					return 0; //비밀번호 불일치
			}
			return -1; //아이디가없음
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -2; //데이터베이스 오류
	}
	
	public int join(User user) { //회원가입기능
		String SQL= "INSERT INTO USER VALUE(?,?,?,?,?)"; //user 문의 순차적으로 대입할수있도록 
		try {											  //SQL에 대입
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user.getUserID());
			pstmt.setString(2, user.getUserPassword());
			pstmt.setString(3, user.getUserName());
			pstmt.setString(4, user.getUserGender());
			pstmt.setString(5, user.getUserEmail());
			return pstmt.executeUpdate();
			//-1 이 아닌경우 회원가입을 정상적으로 가입가능
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //데이터베이스 오류
	}
}
