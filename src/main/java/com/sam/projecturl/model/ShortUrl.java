/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sam.projecturl.model;

import java.util.List;
import java.io.Serializable;
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
 * @author Quan
 */
@Entity
@NamedQuery(name = "ShortUrl.findByShortUrl",
        query = "select u from ShortUrl u where u.shortUrl = ?1")
public class ShortUrl implements Serializable {

    private Long id;
    private String longUrl;
    private String shortUrl;
    private String date;
    private Boolean publish;
    private Boolean destroy;
    private String Customize;
    private String idtest;
    private User user;
    private List<Analysis> analysis;
    private int virus;
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCustomize() {
        return Customize;
    }

    public void setCustomize(String Customize) {
        this.Customize = Customize;
    }

    public String getLongUrl() {
        return longUrl;
    }

    public void setLongUrl(String longUrl) {
        this.longUrl = longUrl;
    }

    public int getVirus() {
        return virus;
    }

    public void setVirus(int virus) {
        this.virus = virus;
    }
    
    public String getShortUrl() {
        return shortUrl;
    }

    public String getIdtest() {
        return idtest;
    }

    public void setIdtest(String idtest) {
        this.idtest = idtest;
    }

    public void setShortUrl(String shortUrl) {
        this.shortUrl = shortUrl;
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

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
    
    @ManyToOne()
    @JoinColumn(name = "user_id")
    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @OneToMany(mappedBy = "shortUrl")
    public List<Analysis> getAnalysis() {
        return analysis;
    }

    public void setAnalysis(List<Analysis> analysis) {
        this.analysis = analysis;
    }
}
