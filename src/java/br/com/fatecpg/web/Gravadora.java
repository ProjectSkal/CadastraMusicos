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
 * @author luizv
 */
public class Gravadora {
    
    private static ArrayList<Banda> bandas;
    
    //Retorna o numero da posição no vetor
    public static int getBandaIndex (Banda banda) {
        return bandas.indexOf(banda);
    }
    
    public static ArrayList<Banda> getBanda() {
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
    
    public static ArrayList<Album> getAlbuns() {
        ArrayList<Album> albuns = new ArrayList<>();
        for (Banda banda: getBanda()) {
            for (Album album: banda.getAlbuns()) {
                albuns.add(album);
            }
        }
       
        Collections.sort(albuns, new Comparator<Album> () {
            @Override
            public int compare(Album t, Album t1) {
                return t.getNome().compareTo(t1.getNome());
            }
        });
       
       return albuns;
    }
    
    public static ArrayList<Musica> getMusicas(){
        ArrayList<Musica> musicas = new ArrayList<>();
        for (Banda artista: getBanda()) {
            for (Album album: artista.getAlbuns()) {
                for(Musica música: album.getMusicas()) {
                    musicas.add(música);
                }
            }
        }
      
        Collections.sort(musicas, new Comparator<Musica>() {
            @Override
            public int compare (Musica o1, Musica o2) {
               return o1.getNome().compareTo(o2.getNome());
            }
        });
        return musicas;
    }
    
    public static Album getAlbum(Musica musica){
        for (Album album: getAlbuns()){
            for (Musica musicaDoDisco: album.getMusicas()){
                if (musica.equals(musicaDoDisco)){
                    return album;
                }
            }
        }
        return null;
    }
    
    public static Banda getBanda(Album album){
        for (Banda banda: getBanda()) {
            for (Album albumBanda: banda.getAlbuns()) {
                if (album.equals(albumBanda)) {
                    return banda;
                }
            }
        }
        return null;
    }
}
