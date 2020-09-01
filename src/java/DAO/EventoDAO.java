package DAO;

import interfaces.IDAO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Evento;
import utils.ConnectionFactory;
import utils.MotorSQL;

public class EventoDAO implements IDAO<Evento,Integer>{
    
    private final String SQL_FINDALL
            = "SELECT * FROM `eventos` WHERE 1=1 ";
    
    private MotorSQL motorSql;
    
    public EventoDAO() {
        motorSql = ConnectionFactory.selectDb();
    }

    @Override
    public ArrayList findAll(Evento bean) {
        ArrayList<Evento> eventos = new ArrayList<>();
        String sql = SQL_FINDALL;
        try {
            //1º) 
            motorSql.connect();
            if (bean != null) {
                if (bean.getIdevento()!= 0) {
                    sql += "AND ID_EVENTO='" + bean.getIdevento()+ "' ";
                }
                if (bean.getNombre() != null) {
                    sql += "AND NOMBRE='" + bean.getNombre() + "' ";
                }

                if (bean.getDescripcion()!= null) {
                    sql += "AND DESCRIPCION='" + bean.getDescripcion() + "' ";
                }
                
                if (bean.getImgEvento()!= null) {
                    sql += "AND IMGEVENTO='" + bean.getImgEvento() + "';";
                }
            }

            System.out.println(sql);
            ResultSet rs = motorSql.
                    executeQuery(sql);

            while (rs.next()) {
                Evento evento = new Evento();

                evento.setIdevento(rs.getInt(1));
                evento.setNombre(rs.getString(2));
                evento.setDescripcion(rs.getString(3));
                evento.setImgEvento(rs.getString(4));
                eventos.add(evento);

            }
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            motorSql.disconnect();
        }
        return eventos;
    }

    @Override
    public int add(Evento bean) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int delete(Integer Integer) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int update(Evento bean) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
