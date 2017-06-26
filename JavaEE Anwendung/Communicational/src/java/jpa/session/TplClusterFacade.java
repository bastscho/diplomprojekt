/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jpa.session;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import jpa.entities.TplCluster;

/**
 *
 * @author Jakob
 */
@Stateless
public class TplClusterFacade extends AbstractFacade<TplCluster>
{

    @PersistenceContext(unitName = "CommunicationalPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager()
    {
        return em;
    }

    public TplClusterFacade()
    {
        super(TplCluster.class);
    }
    
}
