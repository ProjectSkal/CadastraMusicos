/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.web;

/**
 *
 * @author luizv
 */
public class Musica {
    private String nome;
    private int ano;

    public Musica(String nome, int ano) {
        this.nome = nome;
        this.ano = ano;
    }
    
    public Album getAlbum(){
        return Gravadora.getAlbum(this);
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