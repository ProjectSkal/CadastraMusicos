
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
public class Artista {
    private String nome;
    private String genero;
    private int ano;

    private ArrayList<Disco> discos = new ArrayList<>();
    //construtor sem parametro
    public Artista() {
    }
    //construtor com todos os parametros 
    public Artista(String nome, String genero, int ano) {
        this.nome = nome;
        this.genero = genero;
        this.ano = ano;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }
    
    public int getAno() {
        return ano;
    }

    public void setAno(int ano) {
        this.ano = ano;
    }

    public ArrayList<Disco> getDiscos() {
        return discos;
    }

    public void setDiscos(ArrayList<Disco> discos) {
        this.discos = discos;
    }
}
