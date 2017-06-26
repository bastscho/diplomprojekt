/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jpa.entities;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Jakob
 */
@Entity
@Table(name = "tpl_user")
@XmlRootElement
@NamedQueries(
{
    @NamedQuery(name = "TplUser.findAll", query = "SELECT t FROM TplUser t"),
    @NamedQuery(name = "TplUser.findByUserId", query = "SELECT t FROM TplUser t WHERE t.userId = :userId"),
    @NamedQuery(name = "TplUser.findByFirstname", query = "SELECT t FROM TplUser t WHERE t.firstname = :firstname"),
    @NamedQuery(name = "TplUser.findByLastname", query = "SELECT t FROM TplUser t WHERE t.lastname = :lastname"),
    @NamedQuery(name = "TplUser.findByEmail", query = "SELECT t FROM TplUser t WHERE t.email = :email"),
    @NamedQuery(name = "TplUser.findByPassword", query = "SELECT t FROM TplUser t WHERE t.password = :password"),
    @NamedQuery(name = "TplUser.findByLastlogin", query = "SELECT t FROM TplUser t WHERE t.lastlogin = :lastlogin"),
    @NamedQuery(name = "TplUser.findByPhone", query = "SELECT t FROM TplUser t WHERE t.phone = :phone"),
    @NamedQuery(name = "TplUser.findByCreated", query = "SELECT t FROM TplUser t WHERE t.created = :created")
})
public class TplUser implements Serializable
{

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "user_id")
    private Integer userId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 32)
    @Column(name = "firstname")
    private String firstname;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 32)
    @Column(name = "lastname")
    private String lastname;
    // @Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message="Invalid email")//if the field contains email address consider using this annotation to enforce field validation
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 128)
    @Column(name = "email")
    private String email;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 128)
    @Column(name = "password")
    private String password;
    @Column(name = "lastlogin")
    @Temporal(TemporalType.TIMESTAMP)
    private Date lastlogin;
    // @Pattern(regexp="^\\(?(\\d{3})\\)?[- ]?(\\d{3})[- ]?(\\d{4})$", message="Invalid phone/fax format, should be as xxx-xxx-xxxx")//if the field contains phone or fax number consider using this annotation to enforce field validation
    @Size(max = 24)
    @Column(name = "phone")
    private String phone;
    @Column(name = "created")
    @Temporal(TemporalType.TIMESTAMP)
    private Date created;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "userId")
    private Collection<TplTicket> tplTicketCollection;
    @JoinColumn(name = "role_id", referencedColumnName = "role_id")
    @ManyToOne(optional = false)
    private TplRole roleId;
    @JoinColumn(name = "school_id", referencedColumnName = "school_id")
    @ManyToOne(optional = false)
    private TplSchool schoolId;
    @OneToMany(mappedBy = "clusterSupervisor")
    private Collection<TplCluster> tplClusterCollection;

    public TplUser()
    {
    }

    public TplUser(Integer userId)
    {
        this.userId = userId;
    }

    public TplUser(Integer userId, String firstname, String lastname, String email, String password)
    {
        this.userId = userId;
        this.firstname = firstname;
        this.lastname = lastname;
        this.email = email;
        this.password = password;
    }

    public Integer getUserId()
    {
        return userId;
    }

    public void setUserId(Integer userId)
    {
        this.userId = userId;
    }

    public String getFirstname()
    {
        return firstname;
    }

    public void setFirstname(String firstname)
    {
        this.firstname = firstname;
    }

    public String getLastname()
    {
        return lastname;
    }

    public void setLastname(String lastname)
    {
        this.lastname = lastname;
    }

    public String getEmail()
    {
        return email;
    }

    public void setEmail(String email)
    {
        this.email = email;
    }

    public String getPassword()
    {
        return password;
    }

    public void setPassword(String password)
    {
        this.password = password;
    }

    public Date getLastlogin()
    {
        return lastlogin;
    }

    public void setLastlogin(Date lastlogin)
    {
        this.lastlogin = lastlogin;
    }

    public String getPhone()
    {
        return phone;
    }

    public void setPhone(String phone)
    {
        this.phone = phone;
    }

    public Date getCreated()
    {
        return created;
    }

    public void setCreated(Date created)
    {
        this.created = created;
    }

    @XmlTransient
    public Collection<TplTicket> getTplTicketCollection()
    {
        return tplTicketCollection;
    }

    public void setTplTicketCollection(Collection<TplTicket> tplTicketCollection)
    {
        this.tplTicketCollection = tplTicketCollection;
    }

    public TplRole getRoleId()
    {
        return roleId;
    }

    public void setRoleId(TplRole roleId)
    {
        this.roleId = roleId;
    }

    public TplSchool getSchoolId()
    {
        return schoolId;
    }

    public void setSchoolId(TplSchool schoolId)
    {
        this.schoolId = schoolId;
    }

    @XmlTransient
    public Collection<TplCluster> getTplClusterCollection()
    {
        return tplClusterCollection;
    }

    public void setTplClusterCollection(Collection<TplCluster> tplClusterCollection)
    {
        this.tplClusterCollection = tplClusterCollection;
    }

    @Override
    public int hashCode()
    {
        int hash = 0;
        hash += (userId != null ? userId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object)
    {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TplUser))
        {
            return false;
        }
        TplUser other = (TplUser) object;
        if ((this.userId == null && other.userId != null) || (this.userId != null && !this.userId.equals(other.userId)))
        {
            return false;
        }
        return true;
    }

    @Override
    public String toString()
    {
        return "jpa.entities.TplUser[ userId=" + userId + " ]";
    }
    
}
