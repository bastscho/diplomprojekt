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
public class tpl_school 
{
    private int id;
    private int cluster_id;
    private String designation;
    private String address;
    private String name;
    
    public tpl_school()
    {

    }

    public int getId() 
    {
        return id;
    }

    public int getCluster_id() 
    {
        return cluster_id;
    }

    public String getDesignation() 
    {
        return designation;
    }

    public String getAddress() 
    {
        return address;
    }

    public String getName() 
    {
        return name;
    }

    public void setId(int id) 
    {
        this.id = id;
    }

    public void setCluster_id(int cluster_id) 
    {
        this.cluster_id = cluster_id;
    }

    public void setDesignation(String designation) 
    {
        this.designation = designation;
    }

    public void setAddress(String address) 
    {
        this.address = address;
    }

    public void setName(String name) 
    {
        this.name = name;
    }
    
}
