/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jpa.entities;

import java.io.Serializable;
import java.util.Date;
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
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Jakob
 */
@Entity
@Table(name = "tpl_note")
@XmlRootElement
@NamedQueries(
{
    @NamedQuery(name = "TplNote.findAll", query = "SELECT t FROM TplNote t"),
    @NamedQuery(name = "TplNote.findByNoteId", query = "SELECT t FROM TplNote t WHERE t.noteId = :noteId"),
    @NamedQuery(name = "TplNote.findByCreated", query = "SELECT t FROM TplNote t WHERE t.created = :created"),
    @NamedQuery(name = "TplNote.findByText", query = "SELECT t FROM TplNote t WHERE t.text = :text")
})
public class TplNote implements Serializable
{

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "note_id")
    private Integer noteId;
    @Basic(optional = false)
    @NotNull
    @Column(name = "created")
    @Temporal(TemporalType.TIMESTAMP)
    private Date created;
    @Size(max = 255)
    @Column(name = "text")
    private String text;
    @JoinColumn(name = "ticket_id", referencedColumnName = "ticket_id")
    @ManyToOne(optional = false)
    private TplTicket ticketId;

    public TplNote()
    {
    }

    public TplNote(Integer noteId)
    {
        this.noteId = noteId;
    }

    public TplNote(Integer noteId, Date created)
    {
        this.noteId = noteId;
        this.created = created;
    }

    public Integer getNoteId()
    {
        return noteId;
    }

    public void setNoteId(Integer noteId)
    {
        this.noteId = noteId;
    }

    public Date getCreated()
    {
        return created;
    }

    public void setCreated(Date created)
    {
        this.created = created;
    }

    public String getText()
    {
        return text;
    }

    public void setText(String text)
    {
        this.text = text;
    }

    public TplTicket getTicketId()
    {
        return ticketId;
    }

    public void setTicketId(TplTicket ticketId)
    {
        this.ticketId = ticketId;
    }

    @Override
    public int hashCode()
    {
        int hash = 0;
        hash += (noteId != null ? noteId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object)
    {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TplNote))
        {
            return false;
        }
        TplNote other = (TplNote) object;
        if ((this.noteId == null && other.noteId != null) || (this.noteId != null && !this.noteId.equals(other.noteId)))
        {
            return false;
        }
        return true;
    }

    @Override
    public String toString()
    {
        return "jpa.entities.TplNote[ noteId=" + noteId + " ]";
    }
    
}
