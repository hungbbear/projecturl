/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sam.projecturl.service;


import com.sam.projecturl.model.User;

/**
 *
 * @author TinNV0604
 */
public interface UserService {
    void save(User user);
    
    User findByUser(String idFace);
    User findByNameAndPass(String name,String password);
    User findByName(String name);
    User findByCookie(String sha256, String userhash);
}
