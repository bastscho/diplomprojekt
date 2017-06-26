/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jpa.session;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import jpa.entities.TplNote;

/**
 *
 * @author Jakob
 */
@Stateless
public class TplNoteFacade extends AbstractFacade<TplNote>
{

    @PersistenceContext(unitName = "CommunicationalPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager()
    {
        return em;
    }

    public TplNoteFacade()
    {
        super(TplNote.class);
    }
    
}
