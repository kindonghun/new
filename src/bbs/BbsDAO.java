package bbs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

public class BbsDAO {
	private Connection conn;
	private ResultSet rs;
	public  BbsDAO() { //������ ���ٰ�ü (�����͸� �ְ�,�����͸� �������°�)
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
	
	public String getDate() { //��¥
		String SQL= "SELECT NOW()";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				return rs.getString(1);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return ""; //�����ͺ��̽�����
	}
	public int getNext() {
		String SQL= "SELECT bbsID FROM BBS ORDER BY bbsID DESC";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				return rs.getInt(1)+1;
			}
			return 1; // ù��° �Խù��ΰ��
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //�����ͺ��̽�����
	}
	public int write(String bbsTitle,String userID , String bbsContent) {
		String SQL= "INSERT INTO BBS VALUES(?, ?, ?, ?, ?, ?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext()); //��ȣ
			pstmt.setString(2, bbsTitle); //������
			pstmt.setString(3, userID); //�ۼ��� iD
			pstmt.setString(4, getDate()); //��¥
			pstmt.setString(5, bbsContent);//����
			
			pstmt.setInt(6, 1);
			System.out.println("update");
			return pstmt.executeUpdate();
			}catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //�����ͺ��̽�����
	}
	public ArrayList<Bbs> getList(int pageNumber){
		String SQL= "SELECT * FROM BBS WHERE bbsID < ? AND bbsAvailable =1 ORDER BY bbsID DESC LIMIT 10";
		ArrayList<Bbs> list = new ArrayList<Bbs>();
		SimpleDateFormat b = new SimpleDateFormat("yyyy년MM월dd일 HH시mm분ss초");
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext()-(pageNumber -1 )*10);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				Bbs bbs=new Bbs();
				bbs.setBbsID(rs.getInt(1));
				bbs.setBbsTitle(rs.getString(2));
				bbs.setUserID(rs.getString(3));
				Timestamp a = rs.getTimestamp(4); //4 <- date자리
			
				bbs.setBbsDate(b.format(a));
				bbs.setBbsContent(rs.getString(1));
				bbs.setBbsAvailable(rs.getInt(1));
				list.add(bbs);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public boolean nextPage(int pageNumber) {
		String SQL = "SELECT * FROM BBS WHERE bbsID < ? AND bbsAvailable =1";
		try {	
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext() - (pageNumber -1 )*10);;
			if(rs.next()) {
				return true;
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return false;
	}
}

