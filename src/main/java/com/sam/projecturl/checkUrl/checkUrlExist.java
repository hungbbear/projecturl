/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sam.projecturl.checkUrl;

/**
 *
 * @author USER
 */
public class checkUrlExist {

     public boolean isURL(String url) {
        if (url == null) {
            return false;
        }
        // Assigning the url format regular expression
        String urlPattern = "^http(s{0,1})://[a-zA-Z0-9_/\\-\\.]+\\.([A-Za-z/]{2,5})[a-zA-Z0-9_/\\&\\?\\+\\=\\-\\.\\~\\%]*";
        return url.matches(urlPattern);
    }
     
     public boolean isURLExit(String url) {
         try{
        if (!url.equals(null) && !url.equals("Paste a link to shorten it")) {
           String[] arStr = url.split("\\/");
           if(arStr[2].equals("localhost:18141")&&arStr[3].equals("ProjectURL")){
                    return true;
                }
        }}catch(Exception e){
            return false;
        }
        // Assigning the url format regular expression
       
       return false;
    }
     
}
