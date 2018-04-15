/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sam.projecturl.service;


import com.sam.projecturl.model.User;
import com.sam.projecturl.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author TinNV0604
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public void save(User user) {
        userRepository.save(user);
    }
    
    
     @Override
    public User findByUser(String idFace) {
        return userRepository.findByUser(idFace);
    }
    
    @Override
    public User findByNameAndPass(String name, String password) {
        return userRepository.findByNameAndPass(name, password);
    }

    @Override
    public User findByName(String name) {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    return userRepository.findByName(name);}

    @Override
    public User findByUserhash(String sha256, String userhash) {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        return userRepository.findByUserhash(sha256, userhash);
    }
    
    
}
