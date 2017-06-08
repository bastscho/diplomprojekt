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
public class tpl_note 
{
    private int id;
    private int ticket_id;
    private Date created;
    private String text;
    
    public tpl_note()
    {

    }

    public int getId() 
    {
        return id;
    }

    public int getTicket_id() 
    {
        return ticket_id;
    }

    public Date getCreated() 
    {
        return created;
    }

    public String getText() 
    {
        return text;
    }

    public void setId(int id) 
    {
        this.id = id;
    }

    public void setTicket_id(int ticket_id) 
    {
        this.ticket_id = ticket_id;
    }

    public void setCreated(Date created) 
    {
        this.created = created;
    }

    public void setText(String text) 
    {
        this.text = text;
    }
}
