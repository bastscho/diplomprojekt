/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jpa.session;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import jpa.entities.TplSchool;

/**
 *
 * @author Jakob
 */
@Stateless
public class TplSchoolFacade extends AbstractFacade<TplSchool>
{

    @PersistenceContext(unitName = "CommunicationalPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager()
    {
        return em;
    }

    public TplSchoolFacade()
    {
        super(TplSchool.class);
    }
    
}
