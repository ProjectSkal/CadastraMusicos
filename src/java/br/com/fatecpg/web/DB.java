 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.web;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
/**
 *
 * @author a
 */
public class DB {
    private static ArrayList<Artista> artistas;
   
    public static int getArtistaIndex (Artista artista) {
        return artistas.indexOf(artista);
    }   
   
    public static ArrayList<Artista> getArtista(){
        if (artistas == null) {           
            //criou o arraylist de artistas
            artistas = new ArrayList<>();
           
            //criou as musicas
            Musica a1m1 = new Musica("Lost In The Echo", 190);
            Musica a1m2 = new Musica("Castle of Glass", 131);
           
            //criou o disco
            Disco a1d1 = new Disco("Living Things", 2012);
            //add as musicas no disco que foi criado
            a1d1.getMusicas().add(a1m1);
            a1d1.getMusicas().add(a1m2);
            
            //criou o artista
            Artista a1 = new Artista("Linkin Park", "Rock", 1998);
            //add o disco que foi criado com as musicas no artista
            a1.getDiscos().add(a1d1); 
            //add o artista no ArrayList
            artistas.add(a1);
            
            //criando musicas
            Musica a2m1 = new Musica("Sweet child of mine", 480);
            Musica a2m2 = new Musica("Paradise City", 510);
            
            //criando disco
            Disco a2d1 = new Disco("Appetite for destructions", 1987);
            //add musicas no disco que foi criado
            a2d1.getMusicas().add(a2m1);
            a2d1.getMusicas().add(a2m2);
            
            //criando musicas diferentes
            Musica a2m3 = new Musica("Psychosocial", 385);
            Musica a2m4 = new Musica("Duality", 410);
            //add essas novas musicas em outro disco
            Disco a2d2 = new Disco("Antennas to Hell", 2012);
            // add as musicas novas no disco novo
            a2d2.getMusicas().add(a2m3);
            a2d2.getMusicas().add(a2m4);
            
            //criando outro artista
            Artista a2 = new Artista("Slipknot", "Rock", 1995);
            a2.getDiscos().add(a2d1);
            a2.getDiscos().add(a2d2);
           
            //add artista no ArrayList
            artistas.add(a2);
        }
        
       return artistas;
   }
   
    public static ArrayList<Disco> getDiscos(){
        ArrayList<Disco> discos = new ArrayList<>();
        for (Artista artista: getArtista()) {
            for (Disco disco: artista.getDiscos()) {
                discos.add(disco);
            }
       }
       
       return discos;
   }
   
    public static Artista getArtista(Disco disco){
        for (Artista artista: getArtista()) {
            for (Disco discoDoArtista: artista.getDiscos()) {
                if (disco.equals(discoDoArtista)) {
                    return artista;
                }
            }
        }
        return null;
    }
   
    public static ArrayList<Musica> getMusicas(){
        ArrayList<Musica> musicas = new ArrayList<>();
        for (Artista artista: getArtista()) {
            for (Disco disco: artista.getDiscos()) {
                for(Musica música: disco.getMusicas()) {
                    musicas.add(música);
                }
            }
        }
        return musicas;
    }
   
    public static Disco getDisco(Musica musica){
        for (Disco disco: getDiscos()){
            for (Musica musicaDoDisco: disco.getMusicas()){
                if (musica.equals(musicaDoDisco)){
                    return disco;
                }
            }
        }
        return null;
    }
}