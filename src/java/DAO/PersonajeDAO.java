/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import interfaces.IDAO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Personaje;
import utils.ConnectionFactory;
import utils.MotorSQL;

/**
 *
 * @author Joshua
 */
public class PersonajeDAO implements IDAO<Personaje, Integer> {

    private final String SQL_FINDALL
            = "SELECT * FROM `personajes` WHERE 1=1 ";
    
    private MotorSQL motorSql;
    
    public PersonajeDAO() {
        motorSql = ConnectionFactory.selectDb();
    }

    @Override
    public int add(Personaje bean) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int delete(Integer Integer) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    @Override
    public ArrayList<Personaje> findAll(Personaje bean) {
        ArrayList<Personaje> personajes = new ArrayList<>();
        String sql = SQL_FINDALL;
        try {
            //1º) 
            motorSql.connect();
            if (bean != null) {
                if (bean.getIdPersonaje()!= 0) {
                    sql += "AND ID_PERSONAJE='" + bean.getIdPersonaje() + "' ";
                }
                if (bean.getNombre() != null) {
                    sql += "AND NOMBRE='" + bean.getNombre() + "' ";
                }
                
                if (bean.getPoder() != null) {
                    sql += "AND PODER='" + bean.getPoder()+ "' ";
                }
                
                if (bean.getGenero()!= null) {
                    sql += "AND GENERO='" + bean.getGenero()+ "' ";
                }

                if (bean.getDescripcion() != null) {
                    sql += "AND DESCRIPCION='" + bean.getDescripcion() + "' ";
                }
                
                if (bean.getPersonajeImg()!= null) {
                    sql += "AND PERSONAJEIMG='" + bean.getPersonajeImg()+ "' ";
                }

                if (bean.getPlaneta()!= 0) {
                    sql += "AND PLANETA='" + bean.getPlaneta() + "';";
                }
            }

            System.out.println(sql);
            ResultSet rs = motorSql.
                    executeQuery(sql);

            while (rs.next()) {
                Personaje personaje = new Personaje();

                personaje.setIdPersonaje(rs.getInt(1));
                personaje.setNombre(rs.getString(2));
                personaje.setPoder(rs.getString(3));
                personaje.setGenero(rs.getString(4));
                personaje.setDescripcion(rs.getString(5));
                personaje.setPersonajeImg(rs.getString(6));
                personaje.setPlaneta(rs.getInt(7));
                
                personajes.add(personaje);
            }
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            motorSql.disconnect();
        }
        return personajes;
    }

    @Override
    public int update(Personaje bean) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
