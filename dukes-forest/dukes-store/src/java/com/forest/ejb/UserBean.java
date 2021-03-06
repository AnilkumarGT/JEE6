/*
 * Copyright 2012 Oracle and/or its affiliates.
 * All rights reserved.  You may not modify, use,
 * reproduce, or distribute this software except in
 * compliance with  the terms of the License at:
 * http://developers.sun.com/license/berkeley_license.html
 */


/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.forest.ejb;

import com.forest.entity.Customer;
import com.forest.entity.Person;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;


/**
 *
 * @author markito
 */
@Stateless
public class UserBean extends AbstractFacade<Customer> {
    @PersistenceContext(unitName = "forestPU")
    private EntityManager em;

    public UserBean() {
        super(Customer.class);
    }

    protected EntityManager getEntityManager() {
        return em;
    }

    /**
     * Create a new user verifying if the user already exists
     * TODO: Create custom exceptions ?
     * @param customer
     * @return
     */
    public boolean createUser(Customer customer) {
        // check if user exists
        if (getUserByEmail(customer.getEmail()) == null) {
            super.create(customer);

            return true;
        } else {
            return false;
        }
    }

    public Person getUserByEmail(String email) {
        Query createNamedQuery = getEntityManager()
                                     .createNamedQuery("Person.findByEmail");

        createNamedQuery.setParameter("email", email);

        if (createNamedQuery.getResultList().size() > 0) {
            Person p = (Person) createNamedQuery.getSingleResult();
            System.out.println("User found: " + p);
            return p;
        } else {
            return null;
        }
    }
}
