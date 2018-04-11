/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sam.projecturl.model;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;

/**
 *
 * @author Quan
 */
@Entity
@NamedQueries({
    @NamedQuery(name = "User.findByUser",
        query = "select u from User u where u.idFace = ?1"),
    @NamedQuery(name = "User.findByNameAndPass",
        query = "select u from User u where u.name = ?1 AND u.password = ?2 ")
}) 
public class User implements Serializable {

    private Long id;
    private String name;
    private String password;
    private String email;
    private String phone;
    private String idFace;
    private String token;
    private String session;
    private String userhash;
    private String expire;
    
    public String getIdFace() {
        return idFace;
    }

    public void setIdFace(String idFace) {
        this.idFace = idFace;
    }
    private List<ShortUrl> shortUrl;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }
    
    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public String getSession() {
        return session;
    }

    public void setSession(String session) {
        this.session = session;
    }

    public String getUserhash() {
        return userhash;
    }

    public void setUserhash(String userhash) {
        this.userhash = userhash;
    }

    public String getExpire() {
        return expire;
    }

    public void setExpire(String expire) {
        this.expire = expire;
    }
    
    @OneToMany(mappedBy = "user")
    public List<ShortUrl> getShortUrl() {
        return shortUrl;
    }

    public void setShortUrl(List<ShortUrl> shortUrl) {
        this.shortUrl = shortUrl;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    public boolean CheckIdFace(String newid){
        if (newid == idFace){
            return true;
        } else {
            return false;
        }
        
    }
    
}
