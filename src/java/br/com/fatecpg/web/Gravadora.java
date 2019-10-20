/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.web;

import java.util.ArrayList;

/**
 *
 * @author luizv
 */
public class Gravadora {
    
    private static ArrayList<Banda> bandas;
    
    //Retorna o numero da posição no vetor
    public static int getBandaIndex (Banda banda) {
        return bandas.indexOf(banda);
    }
    
    public static ArrayList<Banda> getBandas() {
        if (bandas == null) {
            bandas = new ArrayList<>();
            
            // Criando Musica
            Musica music1 =  new Musica("Numb",2003);
            Musica music2 =  new Musica("Faint",2003);
            Musica music3 =  new Musica("Session",2003);
            
            // Criando Album
            Album alb1 = new Album("Meteora",2003);
            Album alb2 = new Album("Living Things",2012);
            
            // adicionando musica ao album
            alb1.getMusicas().add(music1);
            alb1.getMusicas().add(music2);
            alb1.getMusicas().add(music3);
            
            // Criando Banda
            Banda band = new Banda("Linkin Park", "Rock");
            
            band.getAlbuns().add(alb1);
            
            bandas.add(band);
        }        
        return bandas;
    }    
    public static void addBandas (Banda b){
        getBandas().add(b);
    
    }    
    public static void setBandas (int cont, Banda b){
        getBandas().set(cont, b);
    }
        
    public static void removeBandas (int cont){
        getBandas().remove(cont);
    }
}
