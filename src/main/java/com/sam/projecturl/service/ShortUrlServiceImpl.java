/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sam.projecturl.service;

import com.sam.projecturl.model.ShortUrl;
import com.sam.projecturl.model.User;
import com.sam.projecturl.repository.ShortUrlRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Quan
 */
@Service
public class ShortUrlServiceImpl implements ShortUrlService {

    @Autowired
    private ShortUrlRepository shortUrlRepository;

    @Override
    public void save(ShortUrl shortUrl) {
        shortUrlRepository.save(shortUrl);
    }

    @Override
    public ShortUrl findByShortURL(String shortUrl) {
        return shortUrlRepository.findByShortUrl(shortUrl);
    }

    @Override
    public List<ShortUrl> findByidtest(String idtest) {
        return shortUrlRepository.findByidtest(idtest);
    }

    @Override
    public List<ShortUrl> findByUser(User user) {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        return shortUrlRepository.findByUser(user);
    }

}
