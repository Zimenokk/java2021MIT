/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.dp2021.springMVCThymleafCRUD.repository;

import org.obrii.mit.dp2021.springMVCThymleafCRUD.Domain.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 *

 */
@Repository

public interface UserRepository extends CrudRepository<User, Long> {
    
}
