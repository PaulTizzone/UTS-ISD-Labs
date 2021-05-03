/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.isd.model.dao;

import uts.isd.model.User;
import java.sql.*;
/**
 *
 * @author pault
 */
public class UserManager {
    private Statement st;
    public UserManager(Connection conn) throws SQLException {
        st = conn.createStatement();
    }
    
    public User findUser(String email, String password) throws SQLException {
        String fetch = "SELECT * FROM ISDUSER.\"User\" WHERE EMAIL='" + email + "' AND PASSWORD='" + password + "'";
        ResultSet rs = st.executeQuery(fetch);
        while(rs.next()) {
            String userEmail = rs.getString(1);
            String userPassword = rs.getString(3);
            if (userEmail.equals(email) && userPassword.equals(password)) {
                String userName = rs.getString(2);
                String userGender = rs.getString(4);
                String userColour = rs.getString(5);
                return new User(userEmail, userName, userPassword, userGender, userColour);
            }
        }
        return null;
    }
    
    public void addUser(String name, String email, String password, String gender, String colour) throws SQLException {
        String columns = "INSERT INTO ISDUSER.\"User\"(\"NAME\",\"EMAIL\",\"PASSWORD\",\"GENDER\",\"COLOUR\") ";
        String values = "VALUES('" + name + "','" + email + "','" + password + "','" + gender + "','" + colour + "')";
        st.executeUpdate(columns + values);
    }
    
    public void updateUser(String name, String email, String password, String gender, String colour) throws SQLException {
        String update = "UPDATE ISDUSER.\"User\" SET \"NAME\"='" + name + "',EMAIL='" + email + "',PASSWORD='" + password + "',GENDER='" + gender + "',COLOUR='" + colour + "' WHERE EMAIL='" + email + "' AND PASSWORD='" + password + "'";
        st.executeUpdate(update);
    }
    
    public void deleteUser(String email) throws SQLException {
        String delete = "DELETE FROM ISDUSER.\"User\" WHERE EMAIL='" + email + "'";
        st.executeUpdate(delete);
    }
}
