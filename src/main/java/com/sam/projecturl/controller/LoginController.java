/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sam.projecturl.controller;

import com.restfb.DefaultFacebookClient;
import com.restfb.FacebookClient;
import com.restfb.Version;
import com.restfb.types.User;
import com.sam.projecturl.service.ShortUrlService;
import com.sam.projecturl.service.UserCookieShortUrlService;
import com.sam.projecturl.service.UserService;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author hung
 */
@Controller
public class LoginController {
//    @Autowired
//    private ShortUrlService shortUrlService;
//
//    @Autowired
//    private UserCookieShortUrlService userCookieShortUrlService;

    @Autowired
    private UserService userService;
    
    @RequestMapping("fb")
    public String Login(HttpServletRequest request) {
        String access_token = (String) request.getParameter("access_token");
        FacebookClient facebookClient = new DefaultFacebookClient(access_token, Version.VERSION_2_12);
        User user = facebookClient.fetchObject("me", User.class);

        com.sam.projecturl.model.User us = userService.findByUser(user.getId());
        if (us == null) {
            com.sam.projecturl.model.User user1 = new com.sam.projecturl.model.User();
            user1.setIdFace(user.getId());
            user1.setName(user.getName());
            user1.setEmail(user.getEmail());

            userService.save(user1);
            HttpSession session = request.getSession();
             session.setAttribute("name", user.getName());
            return "User/UserIndex";
        }
        HttpSession session = request.getSession();
             session.setAttribute("name", user.getName());
        return "User/UserIndex";

    }
    @RequestMapping(value = "signup", method = RequestMethod.POST)
    public String signup(HttpServletRequest request) {
        String newName = request.getParameter("username");
        String newEmail = request.getParameter("email");
        String newPass = request.getParameter("password");
        String newPass2 = request.getParameter("password2");

        boolean hasUppercase = !newPass.equals(newPass.toLowerCase());
        boolean hasLowercase = !newPass.equals(newPass.toUpperCase());
        boolean hasNumber = newPass.matches(".*\\d.*");
        if (newName.length() > 0) {

            if (userService.findByName(newName) == null) {
                if (newEmail.length() == 0) {
                    request.setAttribute("error", "Vui Lòng Nhập Email! ");
                    return "Login/sign_up";

                }
                if (null != newEmail) {
                    String regex = "^([_a-zA-Z0-9-]+(\\.[_a-zA-Z0-9-]+)*@[a-zA-Z0-9-]+(\\.[a-zA-Z0-9-]+)*(\\.[a-zA-Z]{1,6}))?$";
                    Pattern pattern = Pattern.compile(regex);
                    Matcher matcher = pattern.matcher(newEmail);
                    if (!matcher.matches()) {
                        request.setAttribute("error", "Email Không Hợp Lệ! ");
                        return "Login/sign_up";

                    }
                }
                if (newPass.length() == 0) {
                    request.setAttribute("error", "Vui Lòng Nhập Password! ");
                    return "Login/sign_up";

                }
                if (!newPass.equals(newPass2)) {
                    request.setAttribute("error", "Password Không Khớp!");
                    return "Login/sign_up";
                }
                if (newPass.length() < 6) {
                    request.setAttribute("error", "Vui Lòng Nhập Mật Khẩu Trên 6 Ký Tự");
                    return "Login/sign_up";
                }
                if (!hasLowercase) {
                    request.setAttribute("error", "Mật Khẩu Phải Có Chữ Thường!");
                    return "Login/sign_up";
                }
                if (!hasUppercase) {
                    request.setAttribute("error", "Mật Khẩu Phải Có Chữ In Hoa!");
                    return "Login/sign_up";
                }
                if (!hasNumber) {
                    request.setAttribute("error", "Mật Khẩu Phải Có Chữ Số!");
                    return "Login/sign_up";
                } else {
                    com.sam.projecturl.model.User user1 = new com.sam.projecturl.model.User();
                    user1.setName(newName);
                    user1.setPassword(newPass);
                    user1.setEmail(newEmail);
                    userService.save(user1);
                    HttpSession session = request.getSession();
                    session.setAttribute("name", newName);
                    return "User/UserIndex";
                }
            }

            request.setAttribute("error", "User Name Đã Tồn Tại");
            return "Login/sign_up";
        } else {
            request.setAttribute("error", "Vui Lòng Nhập Username ");
            return "Login/sign_up";
        }
    }
}
