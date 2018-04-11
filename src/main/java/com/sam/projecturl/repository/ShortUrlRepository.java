/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sam.projecturl.repository;

import com.sam.projecturl.model.ShortUrl;
import com.sam.projecturl.model.User;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Quan
 */
@Repository
 
public interface ShortUrlRepository extends JpaRepository<ShortUrl, Long> {
    ShortUrl findByShortUrl(String shortUrl);
    
     List<ShortUrl> findByidtest(String idtest);
    List<ShortUrl> findByUser(User user);
    
}
