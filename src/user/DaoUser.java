package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class DaoUser {
    private Connection conn;
    private PreparedStatement pstmt;
    private ResultSet rs;
//  Connection conn = null;
//    PreparedStatement pstmt = null;
//    ResultSet rs = null;
    
//    String url = "jdbc:mysql://localhost:5600/book_db?useUnicode=true&characterEncoding=utf8";
//
//    String user = "tester1";
//    String passwd = "";
//
//    try {
//        Class.forName("com.mysql.jdbc.Driver");
//        conn = DriverManager.getConnection(url, user, passwd);
//    } catch (ClassNotFoundException e) {
//        e.printStackTrace();
//    } catch (SQLException e) {
//        e.printStackTrace();
//    }
//    return conn;
    
    
    // login.jsp 
    
    public DaoUser(){
        String dbURL = "jdbc:mysql://localhost:3306/BBS?useUnicode=true&characterEncoding=utf8";
        String dbID = "root";
        String dbPassword = "dowkdowk1";
        
        try {
            //String dbURL = "jdbc:mysql://localhost:3306/BBS?useUnicode=true&characterEncoding=utf8";
        
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public int login(String userID, String userPassword){
        
        String SQL = "SELECT userPassword FROM user WHERE userID = ?";
        try {
            pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, userID);
            rs = pstmt.executeQuery();
            if(rs.next()){
                if(rs.getString(1).equals(userPassword)){
                    return 1;  // success
                }
                else
                    return 0; // password error
            }
            return -1; // id not found 
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -2;  // database error
    }
    
    public int join(User user){
        String SQL = "INSERT INTO user VALUES ( ? , ? , ? , ? , ? )" ;
        try{
            pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, user.getUserID() );
            pstmt.setString(2, user.getUserPassword() );
            pstmt.setString(3, user.getUserName() );
            pstmt.setString(4, user.getUserGender() );
            pstmt.setString(5, user.getUserEmail() );
            return pstmt.executeUpdate();
        } catch(Exception e){
            e.printStackTrace();
        }
        return -1;  // 데이터베이스 오류
    }
    
}
