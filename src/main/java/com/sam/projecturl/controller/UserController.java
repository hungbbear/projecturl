/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sam.projecturl.controller;

import com.sam.projecturl.model.ShortUrl;
import com.sam.projecturl.service.ShortUrlService;
import com.sam.projecturl.service.UserService;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Hung
 */
@Controller
public class UserController {
    @Autowired
    private ShortUrlService shortUrlService;
    @Autowired
    private UserService userService;
    
    @RequestMapping(value = "/user", method = RequestMethod.GET)
    public ModelAndView userindex(HttpServletRequest request) {
        ModelAndView m = new ModelAndView("User/UserIndex");
        
        HttpSession session=request.getSession();
        String name=(String)session.getAttribute("name");
        System.out.println("sdsdsds"+name);
        
        ShortUrl su = new ShortUrl();
        List<ShortUrl> ls;
        if(!name.equals("")){
            ls=shortUrlService.findByUser(userService.findByName(name));
            request.setAttribute("lsuser", ls);
        } else
            ls=null;
        m.addObject("su", su);
        return m;
    }
    
    @RequestMapping(value = "/edit/user", method = RequestMethod.POST)
    public String userEdit(HttpServletRequest request) {
//        ModelAndView m = new ModelAndView("user/index");//?id="+request.getParameter("shorturl")
        String shorturl=request.getParameter("shorturl");
        String custom=request.getParameter("custom");
        String name=request.getParameter("name");;
        ShortUrl url=shortUrlService.findByShortURL(shorturl);
        if(url!=null){
            ShortUrl test=shortUrlService.findByShortURL(custom);
        if(test==null){
            url.setShortUrl(custom);
            shortUrlService.save(url);
        }
        
        }
        //ShortUrl a=shortUrlService.findByShortURL(custom);
//        Optional<ShortUrl> a =Optional.ofNullable(shortUrlService.findByShortURL(custom));
//        if(url!=null){
//            System.out.println("asdasd");
//        } else {
//            url.setShortUrl(custom);
//            shortUrlService.save(url);
//        }
//        return m;
        List<ShortUrl> ls;
        if(!name.equals("")){
            ls=shortUrlService.findByUser(userService.findByName(name));
            request.setAttribute("lsuser", ls);
        } else
            ls=null;

        //return new ModelAndView("/user/index",model);}
        return "User/UserIndex";
    }
}
