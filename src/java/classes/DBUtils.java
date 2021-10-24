package classes;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author adnan
 *
 */
import java.sql.*;

/**
 *
 * @author Taliah Works as a utility class to provide different database related
 * functionalities.
 */
public final class DBUtils {

    static Connection con = null;

    //These statements will provide functionality for the admin
    static PreparedStatement query = null;

    static String url = "jdbc:mysql://localhost:3306/projectdb";
    static String username = "root";
    static String password = "root";

    /**
     * Initialization of the static members inside a static block
     */
    static {
        // Establishing the Connection
        try {
            con = DriverManager.getConnection(url, username, password);
            //Statement to register the Alumni member.
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /**
     * No parameters. Private to prevent the instantiation of the class objects.
     */
    private DBUtils() {
    }

    // Implmentation of the methods
    /**
     * Function for the registration of the user.
     *
     * @param fName
     * @param lName
     * @param regNum
     * @param email
     * @param pwd
     */
    public static void registerUser(String fName, String lName, String regNum, String email, String pwd) {
        try {
            query = con.prepareStatement("INSERT INTO alumni(firstName,lastName,regNum,email,password)"
                    + " VALUES('" + fName + "', '" + lName + "','" + regNum + "','" + email + "','" + pwd + "')");
            query.executeLargeUpdate();
        } catch (SQLException e) {
        }

    }

    /**
     *
     * @param email
     * @param regNum
     * @return
     */
    public static Boolean isNotMember(String email, String regNum) {
        try {
            query = con.prepareStatement("SELECT * FROM alumni");
            ResultSet rs = query.executeQuery();

            while (rs.next()) {
                if (rs.getString("regNum").equals(regNum) || rs.getString("email").equals(email)) {
                    return false;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return true;
    }

    /**
     *
     * @return the ResultSet containing all the alumni members.
     */
    public static ResultSet viewAlumniList() {
        try {
            query = con.prepareStatement("SELECT * FROM alumni");
            ResultSet rs = query.executeQuery();
            return rs;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    /**
     * Returns an alumnus based on their email address.
     *
     * @param email
     * @return
     */
    public static ResultSet viewAlumnus(String email) {
        ResultSet rs = null;
        try {
            query = con.prepareStatement("select * from alumni where email = '" + email.toLowerCase() + "'");
            rs = query.executeQuery();
            System.out.println(rs.getString("email"));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * Delete an Alumni member by his Registration Number.
     *
     * @param regNum
     */
    public static int deleteAlumni(String email) {
        int res = -1;
        try {
            query = con.prepareStatement("DELETE FROM alumni WHERE email = '" + email + "'");
            res = query.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
        return res;
    }

    /**
     *
     * @param title
     * @param desc
     * @param date
     * @param day
     * @param location
     */
    public static void addEvent(String title, String desc, String date, String day, String location) {
        try {
            query = con.prepareStatement("INSERT INTO events(title,description,date,day,location)"
                    + " VALUES('" + title + "', '" + desc + "','" + date + "','" + day + "','" + location + "')");
            query.executeLargeUpdate();
        } catch (SQLException e) {
        }

    }

    public static void removeEvent(int ID) {
        try {
            query = con.prepareStatement("DELETE FROM events WHERE eventID = '" + ID + "'");

        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    /**
     *
     * @param ID
     */
    public static void removePost(int ID) {
        try {
            query = con.prepareStatement("DELETE FROM posts WHERE postID = '" + ID + "'");

        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    /**
     *
     * @param title
     * @param desc
     * @param imgURL
     */
    public static void addPost(String title, String desc, String imgURL) {
        try {
            query = con.prepareStatement("INSERT INTO posts(title,description,imgURL)"
                    + " VALUES('" + title + "','" + desc + "','" + imgURL + "')");
            query.executeLargeUpdate();
        } catch (SQLException e) {
        }

    }

    /**
     *
     * @param title
     * @param desc
     * @param imgURL
     */
    public static void addNews(String title, String desc, String imgURL) {
        try {
            query = con.prepareStatement("INSERT INTO news(title,description,imgURL)"
                    + " VALUES('" + title + "','" + desc + "','" + imgURL + "')");
            query.executeLargeUpdate();
        } catch (SQLException e) {
        }

    }

    /**
     *
     * @param ID
     */
    public static void removeNews(int ID) {
        try {
            query = con.prepareStatement("DELETE FROM news WHERE postID = '" + ID + "'");

        } catch (SQLException e) {
            System.out.println(e);
        }
    }
}
