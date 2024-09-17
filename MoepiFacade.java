/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.moepi.bl;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import za.ac.moepi.entity.Moepi;

/**
 *
 * @author game
 */
@Stateless
public class MoepiFacade extends AbstractFacade<Moepi> implements MoepiFacadeLocal {

    @PersistenceContext(unitName = "MoepiTask1EJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public MoepiFacade() {
        super(Moepi.class);
    }
    
}
