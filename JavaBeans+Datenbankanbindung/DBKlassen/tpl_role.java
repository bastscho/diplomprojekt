/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBKlassen;

/**
 *
 * @author Elias Gabl
 */
public class tpl_role 
{
    private int id;
    private String name;
    private String note;
    
    public tpl_role()
    {

    }

    public int getId() 
    {
        return id;
    }

    public String getName() 
    {
        return name;
    }

    public String getNote() 
    {
        return note;
    }

    public void setId(int id) 
    {
        this.id = id;
    }

    public void setName(String name) 
    {
        this.name = name;
    }

    public void setNote(String note) 
    {
        this.note = note;
    }
}
