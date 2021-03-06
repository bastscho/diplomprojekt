/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jpa.entities;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Jakob
 */
@Entity
@Table(name = "tpl_role")
@XmlRootElement
@NamedQueries(
{
    @NamedQuery(name = "TplRole.findAll", query = "SELECT t FROM TplRole t"),
    @NamedQuery(name = "TplRole.findByRoleId", query = "SELECT t FROM TplRole t WHERE t.roleId = :roleId"),
    @NamedQuery(name = "TplRole.findByName", query = "SELECT t FROM TplRole t WHERE t.name = :name"),
    @NamedQuery(name = "TplRole.findByNote", query = "SELECT t FROM TplRole t WHERE t.note = :note")
})
public class TplRole implements Serializable
{

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "role_id")
    private Integer roleId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "name")
    private String name;
    @Size(max = 45)
    @Column(name = "note")
    private String note;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "roleId")
    private Collection<TplUser> tplUserCollection;

    public TplRole()
    {
    }

    public TplRole(Integer roleId)
    {
        this.roleId = roleId;
    }

    public TplRole(Integer roleId, String name)
    {
        this.roleId = roleId;
        this.name = name;
    }

    public Integer getRoleId()
    {
        return roleId;
    }

    public void setRoleId(Integer roleId)
    {
        this.roleId = roleId;
    }

    public String getName()
    {
        return name;
    }

    public void setName(String name)
    {
        this.name = name;
    }

    public String getNote()
    {
        return note;
    }

    public void setNote(String note)
    {
        this.note = note;
    }

    @XmlTransient
    public Collection<TplUser> getTplUserCollection()
    {
        return tplUserCollection;
    }

    public void setTplUserCollection(Collection<TplUser> tplUserCollection)
    {
        this.tplUserCollection = tplUserCollection;
    }

    @Override
    public int hashCode()
    {
        int hash = 0;
        hash += (roleId != null ? roleId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object)
    {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TplRole))
        {
            return false;
        }
        TplRole other = (TplRole) object;
        if ((this.roleId == null && other.roleId != null) || (this.roleId != null && !this.roleId.equals(other.roleId)))
        {
            return false;
        }
        return true;
    }

    @Override
    public String toString()
    {
        return "jpa.entities.TplRole[ roleId=" + roleId + " ]";
    }
    
}
