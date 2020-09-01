package model;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import java.util.ArrayList;

public class Evento {
    
    private String nombre, descripcion, imgEvento;
    private int id_evento;

    public Evento(String nombre, String descripcion, String imgEvento, int id_evento) {
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.imgEvento = imgEvento;
        this.id_evento = id_evento;
    }

    public Evento() {
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getImgEvento() {
        return imgEvento;
    }

    public void setImgEvento(String imgEvento) {
        this.imgEvento = imgEvento;
    }

    public int getIdevento() {
        return id_evento;
    }

    public void setIdevento(int idevento) {
        this.id_evento = idevento;
    }

    @Override
    public String toString() {
        return "Evento{" + "nombre=" + nombre + ", descripcion=" + descripcion + ", imgEvento=" + imgEvento + ", idevento=" + id_evento + '}';
    }
    
    public static String toArrayJSon(ArrayList<Evento> eventos) {
        GsonBuilder builder = new GsonBuilder(); 
        builder.setPrettyPrinting();
        
        Gson gson = builder.create();
        String resp = gson.toJson(eventos);
        return resp;
    }
}
