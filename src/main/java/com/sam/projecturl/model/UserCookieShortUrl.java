/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sam.projecturl.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;

/**
 *
 * @author USER
 */
@Entity
@NamedQuery(name = "UserCookieShortUrl.findByUserCookieShortUrl",
        query = "select u from UserCookieShortUrl u where u.shortUrl = ?1 ")
public class UserCookieShortUrl implements Serializable {

    private Long id;
    private String longUrl;
    private String shortUrl;
    private Date date;
    private Boolean publish;
    private Boolean destroy;
    private String idCookie;
    private int virus;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public int getVirus() {
        return virus;
    }

    public void setVirus(int virus) {
        this.virus = virus;
    }
    
    public String getLongUrl() {
        return longUrl;
    }

    public void setLongUrl(String longUrl) {
        this.longUrl = longUrl;
    }

    public String getShortUrl() {
        return shortUrl;
    }

    public void setShortUrl(String shortUrl) {
        this.shortUrl = shortUrl;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Boolean getPublish() {
        return publish;
    }

    public void setPublish(Boolean publish) {
        this.publish = publish;
    }

    public Boolean getDestroy() {
        return destroy;
    }

    public void setDestroy(Boolean destroy) {
        this.destroy = destroy;
    }

    public String getIdCookie() {
        return idCookie;
    }

    public void setIdCookie(String idCookie) {
        this.idCookie = idCookie;
    }

   

}


