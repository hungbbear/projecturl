/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sam.projecturl.util;

import com.kanishka.virustotal.dto.FileScanReport;
import com.kanishka.virustotal.dto.ScanInfo;
import com.kanishka.virustotal.exception.APIKeyNotFoundException;
import com.kanishka.virustotal.exception.UnauthorizedAccessException;
import com.kanishka.virustotalv2.VirusTotalConfig;
import com.kanishka.virustotalv2.VirustotalPublicV2;
import com.kanishka.virustotalv2.VirustotalPublicV2Impl;
import com.sam.projecturl.model.ShortUrl;
import com.sam.projecturl.model.UserCookieShortUrl;
import com.sam.projecturl.service.ShortUrlService;
import java.io.UnsupportedEncodingException;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;

/**
 *
 * @author hung
 */

public class VirusUtil extends Thread{
    
    protected String api="29f6a681d261fd2fd99d71060e21b3d946e8eb2654f52272a8dd988d71528d16"; //b29fe1d4bd542a8316c363ac8ca845837de179a182b7e2afe169dab3fabbf1fe
    private ShortUrl su;
    
    public ShortUrl getSu() {
        return su;
    }
    
    public void setSu(ShortUrl su) {
        this.su = su;
    }
    
    @Override
    public void run() {
        if(su!=null) {
            System.out.println("URL: "+su.getLongUrl());
            try {

                VirusTotalConfig.getConfigInstance().setVirusTotalAPIKey(api);
                VirustotalPublicV2 virusTotalRef = new VirustotalPublicV2Impl();

                String urls[]={su.getLongUrl()};
                ScanInfo[] scanInfoArr = virusTotalRef.scanUrls(urls); // SCAN VIRUS

                FileScanReport[] reports = virusTotalRef.getUrlScanReport(urls, false); // GET REPORT

                FileScanReport report=reports[0];
                int totalvirus= report.getPositives(); // LAY KET QUA ?/total virus

                System.out.println("TEST KET QUA: "+totalvirus +" virus");
                
                EntityManagerFactory emFactory;
                emFactory = Persistence.createEntityManagerFactory("com.sam.projecturl");
                EntityManager em=emFactory.createEntityManager();
                em.getTransaction().begin();
                su.setVirus(totalvirus);
                em.merge(su);
                em.getTransaction().commit();
                em.close();
                emFactory.close();
                Thread.currentThread().interrupt();
            } catch (APIKeyNotFoundException ex) {
                System.err.println("API Key not found! " + ex.getMessage());
            } catch (UnsupportedEncodingException ex) {
                System.err.println("Unsupported Encoding Format!" + ex.getMessage());
            } catch (UnauthorizedAccessException ex) {
                System.err.println("Invalid API Key " + ex.getMessage());
            } catch (Exception ex) {
                System.err.println("Something Bad Happened! " + ex.getMessage());
            } 
        }
        
    }
}