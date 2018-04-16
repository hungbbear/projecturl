/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sam.projecturl.repository;

import com.sam.projecturl.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author TinNV0604
 */
@Repository
public interface UserRepository extends JpaRepository<User, Long>{
    User findByUser(String idFace);
    User findByNameAndPass(String name,String password);
    User findByName(String name);
    User findByUserhashAndSha256(String sha256, String userhash);
    User findByUserhash(String userhash);
}
