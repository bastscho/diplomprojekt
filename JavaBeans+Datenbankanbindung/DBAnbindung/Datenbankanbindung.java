/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBAnbindung;

import DBKlassen.tpl_cluster;
import DBKlassen.tpl_note;
import DBKlassen.tpl_role;
import DBKlassen.tpl_school;
import DBKlassen.tpl_ticket;
import DBKlassen.tpl_user;
import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Logger;

/**
 *
 * @author Elias Gabl
 */
public class Datenbankanbindung 
{
    //DOTO Richtige werte einfuellen 
    private String url = "jdbc:mysql://localhost:3306/java_ee_database";
    private String username = "root";
    private String password = "";
    
    public Datenbankanbindung()
    {
    
    }
 
    /**
     * Diese Methode stellt die verbindung zu der Datenbank her und erzeugt ein 
     * Statement element um eien Query abzuschicken.
     * @return ein Statement um eine SQLQuerey abzusenden, bei einem Fehler kommt der wert null zurueck.
     */
    public Statement dbconnect()
    {   
        try
        {
            Connection connection = (Connection) DriverManager.getConnection(url, username, password);
            Statement stmt = connection.createStatement();
            return stmt;
        }
        catch(SQLException e)
        {
            return null;
        }
    }
    
    
    public ArrayList getRoles()
    {
        ArrayList <tpl_role> roles = new ArrayList<>();
        
        String value = "role_id";
        String value1 = "name";
        String value2 = "note";
        try 
        {
            ResultSet rs = dbconnect().executeQuery("SELECT * FROM tpl_role");
          
            while(rs.next())
            {
                tpl_role role = new tpl_role();
                
                role.setName(rs.getString(value1));
                role.setId(rs.getInt(value));
                role.setNote(rs.getString(value2));
                
                roles.add(role);
            }
            rs.close();
            return roles;
        } 
        catch (SQLException ex) 
        {
            return null;
        }
    }
    
    public ArrayList getUsers()
    {
        ArrayList <tpl_user> users = new ArrayList<>();
        
        String value = "user_id";
        String value1 = "role_id";
        String value2 = "school_id";
        String value3 = "firstname";
        String value4 = "lastname";
        String value5 = "email";
        String value6 = "password";
        String value7 = "lastlogin";
        String value8 = "phone";
        String value9 = "created";
        
        try 
        {
            ResultSet rs = dbconnect().executeQuery("SELECT * FROM tpl_user");
          
            while(rs.next())
            {
                tpl_user user = new tpl_user();
                
                user.setId(rs.getInt(value));
                user.setRole_id(rs.getInt(value1));
                user.setSchool_id(rs.getInt(value2));
                user.setFirstname(rs.getString(value3));
                user.setLastname(rs.getString(value4));
                user.setEmail(rs.getString(value5));
                user.setPassword(rs.getString(value6));
                user.setLastlogin(rs.getDate(value7));
                user.setPhone(rs.getString(value8));
                user.setCreated(rs.getDate(value9));
                
                users.add(user);
            }
            rs.close();
            return users;
        } 
        catch (SQLException ex) 
        {
            return null;
        }
    }
    
    public ArrayList getTickets()
    {
        ArrayList <tpl_ticket> tickets = new ArrayList<>();
        
        String value = "ticket_id";
        String value1 = "user_id";
        String value2 = "heading";
        String value3 = "created";
        String value4 = "closed";
        String value5 = "priority";
        
        try 
        {
            ResultSet rs = dbconnect().executeQuery("SELECT * FROM tpl_ticket");
          
            while(rs.next())
            {
                tpl_ticket ticket = new tpl_ticket();
                
                ticket.setId(rs.getInt(value));
                ticket.setUser_id(rs.getInt(value1));
                ticket.setHeading(rs.getString(value2));
                ticket.setCreated(rs.getDate(value3));
                ticket.setClosed(rs.getDate(value4));
                ticket.setPriority(rs.getInt(value5));
                
                tickets.add(ticket);
            }
            rs.close();
            return tickets;
        } 
        catch (SQLException ex) 
        {
            return null;
        }
    }
    
    public ArrayList getNotes()
    {
        ArrayList <tpl_note> notes = new ArrayList<>();
        
        String value = "note_id";
        String value1 = "ticket_id";
        String value2 = "created";
        String value3 = "text";
        
        try 
        {
            ResultSet rs = dbconnect().executeQuery("SELECT * FROM tpl_note");
          
            while(rs.next())
            {
                tpl_note note = new tpl_note();
                
                note.setId(rs.getInt(value));
                note.setTicket_id(rs.getInt(value1));
                note.setCreated(rs.getDate(value2));
                note.setText(rs.getString(value3));
                
                notes.add(note);
            }
            rs.close();
            return notes;
        } 
        catch (SQLException ex) 
        {
            return null;
        }
    }
    
    public ArrayList getCluster()
    {
        ArrayList <tpl_cluster> clusters = new ArrayList<>();
        
        String value = "cluster_id";
        String value1 = "clusterSupervisor";
        String value2 = "name";
        
        try 
        {
            ResultSet rs = dbconnect().executeQuery("SELECT * FROM tpl_cluster");
          
            while(rs.next())
            {
                tpl_cluster cluster = new tpl_cluster();
                
                cluster.setId(rs.getInt(value));
                cluster.setSupervisor(rs.getInt(value1));
                cluster.setName(rs.getString(value2));
                
                clusters.add(cluster);
            }
            rs.close();
            return clusters;
        } 
        catch (SQLException ex) 
        {
            return null;
        }
    }
    
    public ArrayList getSchool()
    {
        ArrayList <tpl_school> schools = new ArrayList<>();
        
        String value = "school_id";
        String value1 = "cluster_id";
        String value2 = "designation";
        String value3 = "address";
        String value4 = "name";
        
        try 
        {
            ResultSet rs = dbconnect().executeQuery("SELECT * FROM tpl_school");
          
            while(rs.next())
            {
                tpl_school school = new tpl_school();
                
                school.setId(rs.getInt(value));
                school.setCluster_id(rs.getInt(value1));
                school.setDesignation(rs.getString(value2));
                school.setAddress(rs.getString(value3));
                school.setName(rs.getString(value4));
                
                schools.add(school);
            }
            rs.close();
            
            return schools;
        } 
        catch (SQLException ex) 
        {
            return null;
        }
    }
    
    public String insertRole(String name, String note)
    {
        try
        {
            dbconnect().executeUpdate("INSERT INTO tpl_role (name, note) VALUES (\""+ name +"\", \""+ note +"\")");
            return "Das Insert hat funktioniert";
        }
        catch(SQLException e)
        {
            return null;
        }
    }
    public String insertUser(int role_id, int school_id, String firstname, String lastname, String email, String password, Date lastlogin, String phone, Date created)
    {
        try
        {
            dbconnect().executeUpdate("INSERT INTO tpl_user (role_id, school_id, firstname, lastname, email, password, lastlogin, phone, created) "
                    + "VALUES ("+ role_id +", "+ school_id +", \""+ firstname +"\", \""+ lastname +"\", \""+ email +"\", \"" +password+"\", \"" +lastlogin+"\", \"" +phone+"\", \"" +created+"\")"); 
            return "Das Insert hat funktioniert";
        }
        catch(SQLException e)
        {
            return null;
        }
    }
    public String insertTicket(int user_id, String heading, Date created, Date closed, int priority)
    {
        try
        {
            dbconnect().executeUpdate("INSERT INTO tpl_ticket (user_id, heading, created, closed, priority) VALUES (\""+ user_id +"\", \""+ heading +"\", \""+ created +"\", \""+ closed +"\", \""+ priority +"\")");
            return "Das Insert hat funktioniert";
        }
        catch(SQLException e)
        {
            return null;
        }
    }
    public String insertNote(int ticket, Date created, String text)
    {
        try
        {
            dbconnect().executeUpdate("INSERT INTO tpl_note (ticket_id, created, text) VALUES (\""+ ticket +"\", \""+ created +"\", \""+ text +"\")");
            return "Das Insert hat funktioniert";
        }
        catch(SQLException e)
        {
            return null;
        }
    }
    public String insertCluster(int clusterSuper, String name)
    {
        try
        {
            dbconnect().executeUpdate("INSERT INTO tpl_cluster (clusterSupervisor, name) VALUES (\""+ clusterSuper +"\", \""+ name +"\")");
            return "Das Insert hat funktioniert";
        }
        catch(SQLException e)
        {
            return null;
        }
    }
    public String insertSchool(int cluser_id, String designation, String address, String name)
    {
        try
        {
            dbconnect().executeUpdate("INSERT INTO tpl_school(cluster_id, designation, address, name) VALUES (\""+ cluser_id +"\", \""+ designation +"\", \""+ address +"\", \""+ name +"\")");
            return "Das Insert hat funktioniert";
        }
        catch(SQLException e)
        {
            return null;
        }
    }
   
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) 
    {
        Datenbankanbindung con = new Datenbankanbindung();
        
//            tpl_role role = (tpl_role) (con.getRoles().get(0));
//            System.out.println(role.getName());
//            System.out.println(role.getId());
//            System.out.println(role.getNote());
            //franz.insertrole("huber","bubble");
    }
}
