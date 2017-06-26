/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jpa.entities;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
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
@Table(name = "tpl_cluster")
@XmlRootElement
@NamedQueries(
{
    @NamedQuery(name = "TplCluster.findAll", query = "SELECT t FROM TplCluster t"),
    @NamedQuery(name = "TplCluster.findByClusterId", query = "SELECT t FROM TplCluster t WHERE t.clusterId = :clusterId"),
    @NamedQuery(name = "TplCluster.findByName", query = "SELECT t FROM TplCluster t WHERE t.name = :name")
})
public class TplCluster implements Serializable
{

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "cluster_id")
    private Integer clusterId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "name")
    private String name;
    @JoinColumn(name = "clusterSupervisor", referencedColumnName = "user_id")
    @ManyToOne
    private TplUser clusterSupervisor;
    @OneToMany(mappedBy = "clusterId")
    private Collection<TplSchool> tplSchoolCollection;

    public TplCluster()
    {
    }

    public TplCluster(Integer clusterId)
    {
        this.clusterId = clusterId;
    }

    public TplCluster(Integer clusterId, String name)
    {
        this.clusterId = clusterId;
        this.name = name;
    }

    public Integer getClusterId()
    {
        return clusterId;
    }

    public void setClusterId(Integer clusterId)
    {
        this.clusterId = clusterId;
    }

    public String getName()
    {
        return name;
    }

    public void setName(String name)
    {
        this.name = name;
    }

    public TplUser getClusterSupervisor()
    {
        return clusterSupervisor;
    }

    public void setClusterSupervisor(TplUser clusterSupervisor)
    {
        this.clusterSupervisor = clusterSupervisor;
    }

    @XmlTransient
    public Collection<TplSchool> getTplSchoolCollection()
    {
        return tplSchoolCollection;
    }

    public void setTplSchoolCollection(Collection<TplSchool> tplSchoolCollection)
    {
        this.tplSchoolCollection = tplSchoolCollection;
    }

    @Override
    public int hashCode()
    {
        int hash = 0;
        hash += (clusterId != null ? clusterId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object)
    {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TplCluster))
        {
            return false;
        }
        TplCluster other = (TplCluster) object;
        if ((this.clusterId == null && other.clusterId != null) || (this.clusterId != null && !this.clusterId.equals(other.clusterId)))
        {
            return false;
        }
        return true;
    }

    @Override
    public String toString()
    {
        return "jpa.entities.TplCluster[ clusterId=" + clusterId + " ]";
    }
    
}
