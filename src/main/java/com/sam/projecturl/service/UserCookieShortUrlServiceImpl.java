/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sam.projecturl.service;

import com.sam.projecturl.model.UserCookieShortUrl;
import com.sam.projecturl.repository.UserCookieShortUrlRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author USER
 */
@Service
public class UserCookieShortUrlServiceImpl implements UserCookieShortUrlService {

    @Autowired
    private UserCookieShortUrlRepository userCookieShortUrlRepository;

    @Override
    public void save(UserCookieShortUrl userCookieShortUrl) {
        userCookieShortUrlRepository.save(userCookieShortUrl);
    }

    @Override
    public UserCookieShortUrl findByUserCookieShortUrl(String shortUrl) {
        return userCookieShortUrlRepository.findByUserCookieShortUrl(shortUrl);
    }

    @Override
    public List<UserCookieShortUrl> findByIdCookie(String idCookie) {
        return userCookieShortUrlRepository.findByIdCookie(idCookie);
    }

    @Override
    public void delete(Long id) {
        userCookieShortUrlRepository.delete(id);
         }


  

    
    
}
