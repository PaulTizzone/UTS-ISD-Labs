/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.isd.controller;

import java.sql.*;
import java.util.*;
import java.util.logging.*;
import uts.isd.model.User;
import uts.isd.model.dao.DBConnector;
import uts.isd.model.dao.DBManager;

/**
 *
 * @author pault
 */
public class TestDB {
    private static Scanner in = new Scanner(System.in);
    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        try {
            DBConnector connector = new DBConnector();
            Connection conn = connector.openConnection();
            DBManager db = new DBManager(conn);
            
            /*
            // Add to Database
            System.out.print("User email: ");
            String email = in.nextLine();
            System.out.print("User name: ");
            String name = in.nextLine();
            System.out.print("User password: ");
            String password = in.nextLine();
            System.out.print("User gender: ");
            String gender = in.nextLine();
            System.out.print("User favourite colour: ");
            String colour = in.nextLine();
            db.addUser(name, email, password, gender, colour);
            System.out.println("User is added to the database.");
            */
            
            /*
            // Find a user by username / password
            System.out.print("User email: ");
            String email = in.nextLine();
            System.out.print("User password: ");
            String password = in.nextLine();
            User user = db.findUser(email, password);
            System.out.println("Name: " + user.getName());
            System.out.println("Gender: " + user.getGender());
            System.out.println("Favourite colour: " + user.getFavouriteColour());
            */
            
            /*
            // Update a user's information
            System.out.print("User email: ");
            String email = in.nextLine();
            System.out.print("User name: ");
            String name = in.nextLine();
            System.out.print("User password: ");
            String password = in.nextLine();
            System.out.print("User gender: ");
            String gender = in.nextLine();
            System.out.print("User favourite colour: ");
            String colour = in.nextLine();
            db.updateUser(name, email, password, gender, colour);
            System.out.println("User is updated.");
            */
            
            /*
            // Delete a user
            System.out.print("User email: ");
            String email = in.nextLine();
            db.deleteUser(email);
            System.out.println("User deleted.");
            */

            connector.closeConnection();
        }
        catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(TestDB.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
