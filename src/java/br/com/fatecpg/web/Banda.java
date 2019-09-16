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
public class Banda {
    private String nome;
    private String genero;
   
    public Banda(String nome, String genero) {
        this.nome = nome;
        this.genero = genero;
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
}
