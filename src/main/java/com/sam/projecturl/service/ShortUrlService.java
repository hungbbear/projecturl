/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sam.projecturl.service;

import com.sam.projecturl.model.ShortUrl;
import com.sam.projecturl.model.User;
import java.util.List;
import org.springframework.stereotype.Service;

/**
 *
 * @author Quan
 */
@Service
public interface ShortUrlService {

    void save(ShortUrl shortUrl);

    ShortUrl findByShortURL(String shortUrl);
    
List<ShortUrl> findByidtest(String idtest);
List<ShortUrl> findByUser(User user);
}
