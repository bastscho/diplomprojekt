/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBKlassen;

import java.util.Date;

/**
 *
 * @author Elias Gabl
 */
public class tpl_user 
{
    private int id;
    private int role_id;
    private int school_id;
    private String firstname;
    private String lastname;
    private String email;
    private String password;
    private Date lastlogin;
    private String phone;
    private Date created;
    
    public tpl_user()
    {

    }

    public int getId() 
    {
        return id;
    }

    public int getRole_id() 
    {
        return role_id;
    }

    public int getSchool_id() 
    {
        return school_id;
    }

    public String getFirstname() 
    {
        return firstname;
    }

    public String getLastname() 
    {
        return lastname;
    }

    public String getEmail() 
    {
        return email;
    }

    public String getPassword() 
    {
        return password;
    }

    public Date getLastlogin() 
    {
        return lastlogin;
    }

    public String getPhone() 
    {
        return phone;
    }

    public Date getCreated() 
    {
        return created;
    }

    public void setId(int id) 
    {
        this.id = id;
    }

    public void setRole_id(int role_id) 
    {
        this.role_id = role_id;
    }

    public void setSchool_id(int school_id) 
    {
        this.school_id = school_id;
    }

    public void setFirstname(String firstname) 
    {
        this.firstname = firstname;
    }

    public void setLastname(String lastname) 
    {
        this.lastname = lastname;
    }

    public void setEmail(String email) 
    {
        this.email = email;
    }

    public void setPassword(String password) 
    {
        this.password = password;
    }

    public void setLastlogin(Date lastlogin) 
    {
        this.lastlogin = lastlogin;
    }

    public void setPhone(String phone) 
    {
        this.phone = phone;
    }

    public void setCreated(Date created) 
    {
        this.created = created;
    }
}
