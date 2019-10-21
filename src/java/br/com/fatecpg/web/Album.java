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
public class Album {
    
    private static ArrayList<Musica> musicas = new ArrayList<>();
    private String nome;
    private int ano;

    public Album(String nome, int ano) {
        this.nome = nome;
        this.ano = ano;
    }
    
    public Banda getBanda() {
        return Gravadora.getBanda(this);
    }
    
    public static ArrayList<Musica> getMusicas() {     
        return musicas;        
    }
    
    public void setMusicas(ArrayList<Musica> musicas) {     
        this.musicas = musicas;        
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getAno() {
        return ano;
    }

    public void setAno(int ano) {
        this.ano = ano;
    }    
}
