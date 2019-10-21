/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.web;

import java.util.ArrayList;

/**
 *
 * @author a
 */
public class Disco {
    private String nome;
    private int ano;

    private ArrayList<Musica> musicas = new ArrayList<>();
    //construtor sem parametro
    public Disco() {
    }
    //construtor com todos os parametros
    public Disco(String nome, int ano) {
        this.nome = nome;
        this.ano = ano;
    }
    //referencia pra ficar mais facil usar o metodo do disco
    public Artista getArtista()
    {
        return DB.getArtista(this);
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

    public ArrayList<Musica> getMusicas() {
        return musicas;
    }

    public void setMusicas(ArrayList<Musica> musicas) {
        this.musicas = musicas;
    }
    
}
