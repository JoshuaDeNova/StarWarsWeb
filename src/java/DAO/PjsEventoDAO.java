/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Personaje;
import model.PjsEvento;
import utils.ConnectionFactory;
import utils.MotorSQL;

/**
 *
 * @author Joshua
 */
public class PjsEventoDAO {
    
    private final String SQL_FINDBYEVENTO
            = "SELECT * FROM `personajes` WHERE 1=1 ";
    
    private MotorSQL motorSQL;
    
    public PjsEventoDAO(){
        motorSQL = ConnectionFactory.selectDb();
    }
    
    public ArrayList<Personaje> findByEvento (PjsEvento bean){
        ArrayList<Personaje> personajes = new ArrayList<>();
        String sql = SQL_FINDBYEVENTO;
        try {
            motorSQL.connect();
            if(bean != null){
                if(bean.getEvento() != 0){
                    sql += "AND `ID_Personaje` IN (SELECT `personaje` FROM `pjseventos` WHERE `evento`=" + bean.getEvento() + ");";
                    System.out.println(sql);
                }
            }
            
            System.out.println(sql);
            ResultSet rs = motorSQL.executeQuery(sql);
            
            while(rs.next()){
                PjsEvento personajEvento = new PjsEvento();
                Personaje personaje = new Personaje();
                
                personajEvento.setEvento(rs.getInt(1));
                
                personaje.setIdPersonaje(rs.getInt(1));
                personaje.setNombre(rs.getString(2));
                personaje.setPoder(rs.getString(3));
                personaje.setGenero(rs.getString(4));
                personaje.setDescripcion(rs.getString(5));
                personaje.setPersonajeImg(rs.getString(6));
                personaje.setPlaneta(rs.getInt(7));

                personajes.add(personaje);
            }
            
            System.out.println("");
            
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            motorSQL.disconnect();
        }
        
        return personajes;
    }
    
    public static void main(String[] args) {
//        /*PRUEBAS UNITARIAS - TEST*/
//        PjsEventoDAO personajEventoDao = new PjsEventoDAO();
//        PjsEvento personajEvento = new PjsEvento(0, 2);
//        
//        
//        ArrayList<Personaje> personajes = personajEventoDao.findByEvento(personajEvento);
//        System.out.println(personajes.toString());
//        
////        PeliculaDAO.update(new Pelicula("Los miminiwini",null,null,null,null,null,1));
////        
////        //Findall - filtra segun campos que no son null o 0
////        ArrayList<Pelicula> peliculas = 
////                PeliculaDAO.findAll(new Pelicula("Vengadores",null,null,null,null,null,0));
////        System.out.println(peliculas.toString());
//////
////        Pelicula peliprueba = new Pelicula("Los miminiwini","Comedia","Me gusta el trailer","La imagen to pro","Todo bien montadito",2);
////
////////        //Add de registro
////        peliculaDAO.add(peliprueba);
////
//////        //Update del registro con id pelicula 1
////        peliculaDAO.update(new Pelicula("Te hundo la puta vida", null, null, null, null, 3));
////
//////        //Delete del registro 2
        
    }
}
