/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


/**
 *
 * @author USER
 */

package com.sam.projecturl.checkUrl;
import java.io.BufferedReader;
import java.io.Console;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.util.Scanner;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
 
public class getTitleURLs {
   public static String gettitleurls(String longLink){
        InputStream response = null;
        try {
            

            URLConnection openConnection = new URL(longLink).openConnection();
            //openConnection.addRequestProperty("User-Agent","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_2) AppleWebKit/537.36(KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36");
            response = openConnection.getInputStream();

           Scanner scanner = new Scanner(response,"UTF-8");
        String responseBody = scanner.useDelimiter("\\A").next();
        String titleURL = responseBody.substring(responseBody.indexOf("<title>") + 7, responseBody.indexOf("</title>"));
        
        String titleFace = "id=\"facebook\"";
        
        if(titleURL.indexOf(titleFace)==26){
            return "Log into Facebook | Facebook";
        }else
            
      return responseBody.substring(responseBody.indexOf("<title>") + 7, responseBody.indexOf("</title>"));


        } catch (IOException ex) {
            ex.printStackTrace();
            return null;
        } finally {
            try {
                response.close();
            } catch (IOException ex) {
                ex.printStackTrace();
            }
        }
      
   }
   
    public static void main(String[] args) throws UnsupportedEncodingException {
        
       System.out.println(gettitleurls("https://www.youtube.com/watch?v=scCDgyjgsc8"));
        System.out.println(gettitleurls("https://wiki.jenkins.io/display/JENKINS/Pipeline+Maven+Plugin"));

    }
   
}