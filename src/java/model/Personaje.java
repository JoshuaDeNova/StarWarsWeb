/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import java.util.ArrayList;

/**
 *
 * @author Joshua
 */
public class Personaje {

    
    private String nombre, poder, genero, descripcion, personajeImg;
    private int ID_Personaje, planeta;

    public Personaje(String nombre, String poder, String genero, String descripcion, String personajeImg, int idPersonaje, int planeta) {
        this.nombre = nombre;
        this.poder = poder;
        this.genero = genero;
        this.descripcion = descripcion;
        this.personajeImg = personajeImg;
        this.ID_Personaje = idPersonaje;
        this.planeta = planeta;
    }

    public Personaje() {
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getPoder() {
        return poder;
    }

    public void setPoder(String poder) {
        this.poder = poder;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getPersonajeImg() {
        return personajeImg;
    }

    public void setPersonajeImg(String personajeImg) {
        this.personajeImg = personajeImg;
    }

    public int getIdPersonaje() {
        return ID_Personaje;
    }

    public void setIdPersonaje(int idPersonaje) {
        this.ID_Personaje = idPersonaje;
    }

    public int getPlaneta() {
        return planeta;
    }

    public void setPlaneta(int planeta) {
        this.planeta = planeta;
    }
    
    public static String toArrayJson(ArrayList<Personaje> personajes) {
        GsonBuilder builder = new GsonBuilder(); 
        builder.setPrettyPrinting();
        
        Gson gson = builder.create();
        String resp = gson.toJson(personajes);
        return resp;
    }

    @Override
    public String toString() {
        return "Personaje{" + "nombre=" + nombre + ", poder=" + poder + ", genero=" + genero + ", descripcion=" + descripcion + ", personajeImg=" + personajeImg + ", idPersonaje=" + ID_Personaje + ", planeta=" + planeta + '}';
    }
}
