package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public UserDAO() { //������ ���ٰ�ü (�����͸� �ְ�,�����͸� �������°�)
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
					return 1; //�α��μ���
				}
				else 
					return 0; //��й�ȣ ����ġ
			}
			return -1; //���̵𰡾���
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -2; //�����ͺ��̽� ����
	}
	
	public int join(User user) { //ȸ�����Ա��
		String SQL= "INSERT INTO USER VALUE(?,?,?,?,?)"; //user ���� ���������� �����Ҽ��ֵ��� 
		try {											  //SQL�� ����
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user.getUserID());
			pstmt.setString(2, user.getUserPassword());
			pstmt.setString(3, user.getUserName());
			pstmt.setString(4, user.getUserGender());
			pstmt.setString(5, user.getUserEmail());
			return pstmt.executeUpdate();
			//-1 �� �ƴѰ�� ȸ�������� ���������� ���԰���
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //�����ͺ��̽� ����
	}

}
