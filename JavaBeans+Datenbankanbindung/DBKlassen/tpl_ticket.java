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
public class tpl_ticket 
{
    private int id;
    private int user_id;
    private String heading;
    private Date created;
    private Date closed;
    private int priority;
    
    public tpl_ticket()
    {

    }

    public int getId() 
    {
        return id;
    }

    public int getUser_id() 
    {
        return user_id;
    }

    public String getHeading() 
    {
        return heading;
    }

    public Date getCreated() 
    {
        return created;
    }

    public Date getClosed() 
    {
        return closed;
    }

    public int getPriority() 
    {
        return priority;
    }

    public void setId(int id) 
    {
        this.id = id;
    }

    public void setUser_id(int user_id) 
    {
        this.user_id = user_id;
    }

    public void setHeading(String heading) 
    {
        this.heading = heading;
    }

    public void setCreated(Date created) 
    {
        this.created = created;
    }

    public void setClosed(Date closed) 
    {
        this.closed = closed;
    }

    public void setPriority(int priority) 
    {
        this.priority = priority;
    }
    
}
