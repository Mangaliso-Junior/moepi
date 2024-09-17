/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.moepi.bl;

import java.util.List;
import javax.ejb.Local;
import za.ac.moepi.entity.Moepi;

/**
 *
 * @author game
 */
@Local
public interface MoepiFacadeLocal {

    void create(Moepi moepi);

    void edit(Moepi moepi);

    void remove(Moepi moepi);

    Moepi find(Object id);

    List<Moepi> findAll();

    List<Moepi> findRange(int[] range);

    int count();
    
}
