package model;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import java.util.ArrayList;

public class Usuario {
    
    private String nombre, email, pass;
    private int idUsuario;

    public Usuario(String nombre, String email, String pass, int idUsuario) {
        this.nombre = nombre;
        this.email = email;
        this.pass = pass;
        this.idUsuario = idUsuario;
    }

    public Usuario() {
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    @Override
    public String toString() {
        return "Usuario{" + "nombre=" + nombre + ", email=" + email + ", pass=" + pass + ", idUsuario=" + idUsuario + '}';
    }
    
    public static String toArrayJSon(ArrayList<Usuario> usuarios) {
        GsonBuilder builder = new GsonBuilder(); 
        builder.setPrettyPrinting();
        
        Gson gson = builder.create();
        String resp = gson.toJson(usuarios);
        return resp;
    }
}
