/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package albunsMusicas;

/**
 *
 * @author luizv
 */
public class Musica {
    private String nome;
    private String tempoo;
    private String Album;

    public Musica(String nome, String tempoo, String Album) {
        this.nome = nome;
        this.tempoo = tempoo;
        this.Album = Album;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getTempoo() {
        return tempoo;
    }

    public void setTempoo(String tempoo) {
        this.tempoo = tempoo;
    }

    public String getAlbum() {
        return Album;
    }

    public void setAlbum(String Album) {
        this.Album = Album;
    }
}
