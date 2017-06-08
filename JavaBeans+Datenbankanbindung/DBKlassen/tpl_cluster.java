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
public class tpl_cluster 
{
    private int id;
    private int supervisor;
    private String name;
    
    public tpl_cluster()
    {

    }

    public int getId() 
    {
        return id;
    }

    public int getSupervisor() 
    {
        return supervisor;
    }

    public String getName() 
    {
        return name;
    }

    public void setId(int id) 
    {
        this.id = id;
    }

    public void setSupervisor(int supervisor) 
    {
        this.supervisor = supervisor;
    }

    public void setName(String name) 
    {
        this.name = name;
    }
    
}
