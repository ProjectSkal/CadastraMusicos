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
    public static ArrayList<Banda> getBandas() {
        if (bandas == null) {
            bandas = new ArrayList<>();
            bandas.add(new Banda("Linkin Park","Rock"));
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
