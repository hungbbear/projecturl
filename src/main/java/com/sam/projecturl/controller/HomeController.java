/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sam.projecturl.controller;

import com.google.common.hash.Hashing;
import com.sam.projecturl.checkUrl.checkUrlExist;
import com.sam.projecturl.checkUrl.getTitleURLs;
import com.sam.projecturl.model.ShortUrl;
import com.sam.projecturl.model.User;
import com.sam.projecturl.model.UserCookieShortUrl;
import com.sam.projecturl.service.ShortUrlService;
import com.sam.projecturl.service.UserCookieShortUrlService;
import com.sam.projecturl.service.UserService;
import com.sam.projecturl.util.Utils;
import com.sam.projecturl.util.VirusUtil;
import com.sam.projecturl.util.VirusUtil2;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.time.ZonedDateTime;
import java.util.Collections;
import java.util.List;
import java.util.Vector;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Quan
 */
@Controller

public class HomeController {

    @Autowired
    private ShortUrlService shortUrlService;

    @Autowired
    private UserCookieShortUrlService userCookieShortUrlService;

    @Autowired
    private UserService userService;

    //** Index HOMEPAGE **
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView index(HttpServletRequest request, HttpServletResponse response)  {
        ModelAndView m = new ModelAndView("home/index");
        ModelAndView error = new ModelAndView("redirect:/");
        ShortUrl su = new ShortUrl();
        Cookie[] cookies;
        cookies = request.getCookies();
        String hash="";
        String session="";
        String expire="";
                
        if (cookies!=null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("hash")) {
                    hash=cookie.getValue();
                } else if(cookie.getName().equals("session")) {
                    session=cookie.getValue();
                } else if(cookie.getName().equals("expire")) {
                    expire=cookie.getValue();
                }
            }
            
            if(!hash.equals("")){
                if(session.equals("")&&expire.equals("")){
                    List<ShortUrl> ls=shortUrlService.findByUser(userService.findByUserhash(hash));
                    Vector vList = new Vector();
                    for (ShortUrl s : ls) {
                        vList.add(getTitleURLs.gettitleurls(s.getLongUrl()));
                    }
                    Collections.reverse(ls);
                    Collections.reverse(vList);
                    m.addObject("showSU", ls);
                    m.addObject("showSULL", vList);
                } else {
                    User user=userService.findByUserhashAndsha256(session, hash);
                    List<ShortUrl> ls=shortUrlService.findByUser(user);
                    Vector vList = new Vector();
                    for (ShortUrl s : ls) {
                        vList.add(getTitleURLs.gettitleurls(s.getLongUrl()));
                    }
                    Collections.reverse(ls);
                    Collections.reverse(vList);
                    m.addObject("showSU", ls);
                    m.addObject("showSULL", vList);
                }       
            }
        } else {
            User user=new User();
            user.setUserhash(DigestUtils.md5DigestAsHex(Utils.getSaltString().getBytes()));
            userService.save(user);
            Cookie cookie=new Cookie("hash",user.getUserhash());
            cookie.setMaxAge(24 * 60 * 60);
            response.addCookie(cookie);
            List<ShortUrl> ls=shortUrlService.findByUser(user);
            Vector vList = new Vector();
            for (ShortUrl s : ls) {
                vList.add(getTitleURLs.gettitleurls(s.getLongUrl()));
            }
            Collections.reverse(ls);
            Collections.reverse(vList);
            m.addObject("showSU", ls);
            m.addObject("showSULL", vList);
        }
        m.addObject("su", su);
        m.addObject("buttonCheck", "BẤm Vào nút này");
        return m;

    }

    @RequestMapping(value = "/", method = RequestMethod.POST)
    public String ShortenUrlUnsignup(@ModelAttribute(name = "su") ShortUrl su, ModelMap model, HttpServletRequest request) {
        String getCookieCurrent = null;
        List<ShortUrl> listShortLink=null;
        
        
        Cookie[] cookies = request.getCookies();
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("hash")) {
                getCookieCurrent = cookie.getValue();
            }
        }
        
        User user=userService.findByName(getCookieCurrent);
        if(user==null){
            user=new User();
            user.setUserhash(DigestUtils.md5DigestAsHex(Utils.getSaltString().getBytes()));
            userService.save(user);
        }
        
        checkUrlExist checkUrl = new checkUrlExist();
        model.addAttribute("buttonCheck", "Summit");
        model.addAttribute("Error", "");
        if (!checkUrl.isURL(su.getLongUrl()) && su.getLongUrl().equals("Paste a link to shorten it")) {
            model.addAttribute("Error", "Link không tồn tại");
        }

        if (checkUrl.isURLExit(su.getLongUrl())) {
            model.addAttribute("buttonCheck", "COPY");
        }
        
        if (!su.getLongUrl().equals("Paste a link to shorten it") && checkUrl.isURL(su.getLongUrl())) {
            String shortURL = Utils.getSaltString();
            su.setUser(user);
            su.setShortUrl(shortURL);
            shortUrlService.save(su);
            
            VirusUtil virusdetect = new VirusUtil();
            virusdetect.setSu(su);
            virusdetect.start();
            model.addAttribute("shortLink", "http://ngangon.tk/l/" + su.getShortUrl());
            model.addAttribute("buttonCheck", "COPY");
            listShortLink= shortUrlService.findByUser(user);
        }

         
//        Vector sullList = new Vector();
//        for (UserCookieShortUrl sull : showShortLink) {
//            String title = getTitleURLs.gettitleurls(sull.getLongUrl());
//
//            sullList.add(title);
//        }
        Collections.reverse(listShortLink);

        model.addAttribute("showSU", listShortLink);
        return "home/index";
    }
    
    @RequestMapping(value = "/insertsu", method = RequestMethod.POST)
    public String insertURL(@ModelAttribute(name = "su") ShortUrl su,HttpServletRequest request) {
        String shortURL = Utils.getSaltString();
        String name=request.getSession().getAttribute("name").toString();
        su.setShortUrl(shortURL);
        su.setVirus(0);
        com.sam.projecturl.model.User user =userService.findByName(name);
        su.setUser(user);
        su.setDate(String.valueOf(ZonedDateTime.now().toInstant().toEpochMilli()));
        shortUrlService.save(su);
        
        VirusUtil virus = new VirusUtil();
        virus.setSu(su);
        virus.start();
        
        List<ShortUrl> ls;
        if(!name.equals("")){
            ls=shortUrlService.findByUser(userService.findByName(name));
            request.setAttribute("lsuser", ls);
        } else
            ls=null;
        return "redirect:/user";
    }
    
    @RequestMapping(value = "l/{source}")///////REDIRECT TO LINK
    public String RedirectURL(@PathVariable(value = "source") final String source, HttpServletRequest request) {
        UserCookieShortUrl ksu = userCookieShortUrlService.findByUserCookieShortUrl(source);
        ShortUrl su;
        String longUrl="";
        int virus=0;
                
        if(ksu!=null){
            longUrl = ksu.getLongUrl();
            virus = ksu.getVirus();
        }
        if (ksu==null) {
            su=shortUrlService.findByShortURL(source);
            longUrl = su.getLongUrl();
            virus = su.getVirus();
        }
        
        request.setAttribute("su", longUrl);
        if(virus!=0)
            return "warm";
        else
            return "redirect:" + longUrl;
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String loginWithForm(HttpServletRequest request, HttpServletResponse response) {
        String nameCheck = request.getParameter("username");
        String passCheck = request.getParameter("password");
        List<ShortUrl> ls;
        
        Cookie[] cookies;
        cookies = request.getCookies();
        
        User user =userService.findByNameAndPass(nameCheck, passCheck);
        
        if (cookies!=null)
            return "redirect:/user";
        else
            if (user!=null) {
                Cookie session;
                Cookie hash;
                Cookie expire;
                String md5user=DigestUtils.md5DigestAsHex(nameCheck.getBytes());
                String sha1hex = Hashing.sha1().hashString(Utils.getSaltString(), StandardCharsets.UTF_8).toString();
                String exp=String.valueOf(ZonedDateTime.now().toInstant().toEpochMilli());
                
                user.setUserhash(md5user);
                user.setSha256(sha1hex);
                
                ShortUrl su = new ShortUrl();
                
                ls=shortUrlService.findByUser(user);
                request.setAttribute("lsuser", ls);

                request.setAttribute("su", su);
                
                session=new Cookie("session",sha1hex);
                session.setMaxAge(24 * 60 * 60);
                hash=new Cookie("hash",md5user);
                hash.setMaxAge(24 * 60 * 60);
                expire=new Cookie("expire",exp);
                expire.setMaxAge(24 * 60 * 60);
                
                response.addCookie(hash);
                response.addCookie(session);
                userService.save(user);
                
                return "redirect:/user";
            } else
                ls=null;
        request.setAttribute("error", "Username Hoặc Passowrd Không Hợp Lệ!!");
        return "Login/sign_in";
    }

    @RequestMapping(value = "edit", method = RequestMethod.POST)
    public String Edit(HttpServletRequest request) {
        String nameEdit = request.getParameter("username");
        String passEdit = request.getParameter("password");
         String mailEdit = request.getParameter("example-email");
        String pass2 = request.getParameter("password2");
        boolean hasUppercase = !passEdit.equals(passEdit.toLowerCase());
        boolean hasLowercase = !passEdit.equals(passEdit.toUpperCase());
        boolean hasNumber = passEdit.matches(".*\\d.*");
        com.sam.projecturl.model.User us = userService.findByName(nameEdit);
        if (us != null) {
            if (mailEdit.length() == 0) {
                request.setAttribute("error", "Vui Lòng Nhập Email! ");
                return "User/profile";

            }
            if (null != mailEdit) {
                String regex = "^([_a-zA-Z0-9-]+(\\.[_a-zA-Z0-9-]+)*@[a-zA-Z0-9-]+(\\.[a-zA-Z0-9-]+)*(\\.[a-zA-Z]{1,6}))?$";
                Pattern pattern = Pattern.compile(regex);
                Matcher matcher = pattern.matcher(mailEdit);
                if (!matcher.matches()) {
                    request.setAttribute("error", "Email Không Hợp Lệ! ");
                     return "User/profile";

                }
            }
            if (passEdit.length() == 0) {
                request.setAttribute("error", "Vui Lòng Nhập Password! ");
                return "User/profile";
            }
            if (!passEdit.equals(pass2)) {
                request.setAttribute("error", "Password Không Khớp!");
               return "User/profile";
            }
            if (passEdit.length() < 6) {
                request.setAttribute("error", "Vui Lòng Nhập Mật Khẩu Trên 6 Ký Tự");
                return "User/profile";
            }
            if (!hasLowercase) {
                request.setAttribute("error", "Mật Khẩu Phải Có Chữ Thường!");
                 return "User/profile";
            }
            if (!hasUppercase) {
                request.setAttribute("error", "Mật Khẩu Phải Có Chữ In Hoa!");
                return "User/profile";
            }
            if (!hasNumber) {
                request.setAttribute("error", "Mật Khẩu Phải Có Chữ Số!");
                return "User/profile";
            } else {
                us.setEmail(mailEdit);
                us.setPassword(passEdit);
                userService.save(us);
                return "User/UserIndex";
            }

        }
        return null;
    }


   
    //Chuyển Trang
    @RequestMapping("/login")
    public String login() {
        return "Login/sign_in";
    }
    
    @RequestMapping(value = "/signup", method = RequestMethod.GET)
    public String signup() {
        return "Login/sign_up";
    }

    @RequestMapping("/dashboard_5")
    public String dashboard_5() {
        return "User/dashboard_5";
    }

    @RequestMapping("/profile")
    public String profile() {
        return "User/profile";
    }

    @RequestMapping("/contacts")
    public String contacts() {
        return "User/contacts";
    }

    @RequestMapping("/mailbox")
    public String mailbox() {
        return "User/mailbox";
    }

    @RequestMapping("/mail_detail")
    public String mail_detail() {
        return "User/mail_detail";
    }

    @RequestMapping("/google_maps")
    public String google_maps() {
        return "User/google_maps";
    }

    @RequestMapping("/datamaps")
    public String datamaps() {
        return "User/datamaps";
    }

    @RequestMapping("/chat_view")
    public String chat_view() {
        return "User/chat_view";
    }

    //Khu Vực Test
    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public ModelAndView home() {
        ModelAndView m = new ModelAndView("home/index");
        ShortUrl su = new ShortUrl();
        m.addObject("su", su);
        return m;
    }

    @RequestMapping(value = "/home", method = RequestMethod.POST)
    public String home(@ModelAttribute(name = "su") ShortUrl su) {
        String shortURL = Utils.getSaltString();
        su.setShortUrl(shortURL);
        su.setVirus(0);
        su.setDate(String.valueOf(ZonedDateTime.now().toInstant().toEpochMilli()));
        shortUrlService.save(su);

        VirusUtil virus = new VirusUtil();
        virus.setSu(su);
        virus.start();        
        return "home";
    }
}
