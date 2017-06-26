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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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
@Table(name = "tpl_school")
@XmlRootElement
@NamedQueries(
{
    @NamedQuery(name = "TplSchool.findAll", query = "SELECT t FROM TplSchool t"),
    @NamedQuery(name = "TplSchool.findBySchoolId", query = "SELECT t FROM TplSchool t WHERE t.schoolId = :schoolId"),
    @NamedQuery(name = "TplSchool.findByDesignation", query = "SELECT t FROM TplSchool t WHERE t.designation = :designation"),
    @NamedQuery(name = "TplSchool.findByAddress", query = "SELECT t FROM TplSchool t WHERE t.address = :address"),
    @NamedQuery(name = "TplSchool.findByName", query = "SELECT t FROM TplSchool t WHERE t.name = :name")
})
public class TplSchool implements Serializable
{

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "school_id")
    private Integer schoolId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "designation")
    private String designation;
    @Size(max = 45)
    @Column(name = "address")
    private String address;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "name")
    private String name;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "schoolId")
    private Collection<TplUser> tplUserCollection;
    @JoinColumn(name = "cluster_id", referencedColumnName = "cluster_id")
    @ManyToOne
    private TplCluster clusterId;

    public TplSchool()
    {
    }

    public TplSchool(Integer schoolId)
    {
        this.schoolId = schoolId;
    }

    public TplSchool(Integer schoolId, String designation, String name)
    {
        this.schoolId = schoolId;
        this.designation = designation;
        this.name = name;
    }

    public Integer getSchoolId()
    {
        return schoolId;
    }

    public void setSchoolId(Integer schoolId)
    {
        this.schoolId = schoolId;
    }

    public String getDesignation()
    {
        return designation;
    }

    public void setDesignation(String designation)
    {
        this.designation = designation;
    }

    public String getAddress()
    {
        return address;
    }

    public void setAddress(String address)
    {
        this.address = address;
    }

    public String getName()
    {
        return name;
    }

    public void setName(String name)
    {
        this.name = name;
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

    public TplCluster getClusterId()
    {
        return clusterId;
    }

    public void setClusterId(TplCluster clusterId)
    {
        this.clusterId = clusterId;
    }

    @Override
    public int hashCode()
    {
        int hash = 0;
        hash += (schoolId != null ? schoolId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object)
    {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TplSchool))
        {
            return false;
        }
        TplSchool other = (TplSchool) object;
        if ((this.schoolId == null && other.schoolId != null) || (this.schoolId != null && !this.schoolId.equals(other.schoolId)))
        {
            return false;
        }
        return true;
    }

    @Override
    public String toString()
    {
        return "jpa.entities.TplSchool[ schoolId=" + schoolId + " ]";
    }
    
}
