/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Joshua
 */
public class PjsEvento {
    
    private int personaje;
    private int evento;

    public PjsEvento(int personaje, int evento) {
        this.personaje = personaje;
        this.evento = evento;
    }

    public PjsEvento() {
    }

    public int getPersonaje() {
        return personaje;
    }

    public void setPersonaje(int personaje) {
        this.personaje = personaje;
    }

    public int getEvento() {
        return evento;
    }

    public void setEvento(int evento) {
        this.evento = evento;
    }

    @Override
    public String toString() {
        return "PjsEvento{" + "personaje=" + personaje + ", evento=" + evento + '}';
    }
}
