/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.web;

/**
 *
 * @author a
 */
public class Musica {
    private String nome;
    private int duracao;
    //construtor sem parametro
    public Musica() {
    }
    //construtor com todos os parametros
    public Musica(String nome, int duracao) {
        this.nome = nome;
        this.duracao = duracao;
    }
    
    public Disco getDisco(){
        return DB.getDisco(this);
    }
    
    public Artista getArtista (){
        return getDisco().getArtista();
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getDuracao() {
        return duracao;
    }

    public void setDuracao(int duracao) {
        this.duracao = duracao;
    }
}
