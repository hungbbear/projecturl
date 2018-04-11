/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sam.projecturl.repository;

import com.sam.projecturl.model.UserCookieShortUrl;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author USER
 */

    @Repository
 
public interface UserCookieShortUrlRepository extends JpaRepository<UserCookieShortUrl, Long> {
    UserCookieShortUrl findByUserCookieShortUrl(String shortUrl);
    
     List<UserCookieShortUrl> findByIdCookie(String idCookie);
    
    
}


