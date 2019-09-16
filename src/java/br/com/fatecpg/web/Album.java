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
    
    private static ArrayList<Musica> musicas;
    private String nome;
    private String banda;
    private int ano;

    public Album(String nome, String banda, int ano) {
        this.nome = nome;
        this.banda = banda;
        this.ano = ano;
    }
    
    public static ArrayList<Musica> getMusicas() {
        if (musicas == null) {
            musicas = new ArrayList<>();
            musicas.add(new Musica("Numb","Meteora","Linkin Park",2003));
            musicas.add(new Musica("Faint","Meteora","Linkin Park",2003));
            musicas.add(new Musica("Session","Meteora","Linkin Park",2003));
        }        
        return musicas;        
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getBanda() {
        return banda;
    }

    public void setBanda(String banda) {
        this.banda = banda;
    }

    public int getAno() {
        return ano;
    }

    public void setAno(int ano) {
        this.ano = ano;
    } 
    
}
