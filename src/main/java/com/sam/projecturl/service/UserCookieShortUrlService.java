/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sam.projecturl.service;

import com.sam.projecturl.model.UserCookieShortUrl;
import java.util.List;
import org.springframework.stereotype.Service;

/**
 *
 * @author USER
 */
@Service
public interface UserCookieShortUrlService {
    void save(UserCookieShortUrl userCookieShortUrl);

    UserCookieShortUrl findByUserCookieShortUrl(String shortUrl);
    
    List<UserCookieShortUrl> findByIdCookie(String idCookie);
    
    void delete(Long id); 
    
     
}
