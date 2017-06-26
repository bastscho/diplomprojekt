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
@Table(name = "tpl_ticket")
@XmlRootElement
@NamedQueries(
{
    @NamedQuery(name = "TplTicket.findAll", query = "SELECT t FROM TplTicket t"),
    @NamedQuery(name = "TplTicket.findByTicketId", query = "SELECT t FROM TplTicket t WHERE t.ticketId = :ticketId"),
    @NamedQuery(name = "TplTicket.findByHeading", query = "SELECT t FROM TplTicket t WHERE t.heading = :heading"),
    @NamedQuery(name = "TplTicket.findByCreated", query = "SELECT t FROM TplTicket t WHERE t.created = :created"),
    @NamedQuery(name = "TplTicket.findByClosed", query = "SELECT t FROM TplTicket t WHERE t.closed = :closed"),
    @NamedQuery(name = "TplTicket.findByPriority", query = "SELECT t FROM TplTicket t WHERE t.priority = :priority")
})
public class TplTicket implements Serializable
{

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ticket_id")
    private Integer ticketId;
    @Size(max = 45)
    @Column(name = "heading")
    private String heading;
    @Basic(optional = false)
    @NotNull
    @Column(name = "created")
    @Temporal(TemporalType.TIMESTAMP)
    private Date created;
    @Column(name = "closed")
    @Temporal(TemporalType.TIMESTAMP)
    private Date closed;
    @Column(name = "priority")
    private Integer priority;
    @JoinColumn(name = "user_id", referencedColumnName = "user_id")
    @ManyToOne(optional = false)
    private TplUser userId;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "ticketId")
    private Collection<TplNote> tplNoteCollection;

    public TplTicket()
    {
    }

    public TplTicket(Integer ticketId)
    {
        this.ticketId = ticketId;
    }

    public TplTicket(Integer ticketId, Date created)
    {
        this.ticketId = ticketId;
        this.created = created;
    }

    public Integer getTicketId()
    {
        return ticketId;
    }

    public void setTicketId(Integer ticketId)
    {
        this.ticketId = ticketId;
    }

    public String getHeading()
    {
        return heading;
    }

    public void setHeading(String heading)
    {
        this.heading = heading;
    }

    public Date getCreated()
    {
        return created;
    }

    public void setCreated(Date created)
    {
        this.created = created;
    }

    public Date getClosed()
    {
        return closed;
    }

    public void setClosed(Date closed)
    {
        this.closed = closed;
    }

    public Integer getPriority()
    {
        return priority;
    }

    public void setPriority(Integer priority)
    {
        this.priority = priority;
    }

    public TplUser getUserId()
    {
        return userId;
    }

    public void setUserId(TplUser userId)
    {
        this.userId = userId;
    }

    @XmlTransient
    public Collection<TplNote> getTplNoteCollection()
    {
        return tplNoteCollection;
    }

    public void setTplNoteCollection(Collection<TplNote> tplNoteCollection)
    {
        this.tplNoteCollection = tplNoteCollection;
    }

    @Override
    public int hashCode()
    {
        int hash = 0;
        hash += (ticketId != null ? ticketId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object)
    {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TplTicket))
        {
            return false;
        }
        TplTicket other = (TplTicket) object;
        if ((this.ticketId == null && other.ticketId != null) || (this.ticketId != null && !this.ticketId.equals(other.ticketId)))
        {
            return false;
        }
        return true;
    }

    @Override
    public String toString()
    {
        return "jpa.entities.TplTicket[ ticketId=" + ticketId + " ]";
    }
    
}
