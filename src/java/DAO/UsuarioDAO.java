
package DAO;

import interfaces.IDAO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Usuario;
import utils.ConnectionFactory;
import utils.MotorSQL;

public class UsuarioDAO implements IDAO<Usuario,Integer>{

    private final String SQL_FINDALL
            = "SELECT * FROM `usuarios` WHERE 1=1 ";

    private final String SQL_ADD
            = "INSERT INTO `usuarios` (`Nombre`, `Email`, `Pass`) VALUES ";

    private final String SQL_DELETE = "DELETE FROM `usuarios` WHERE ID_Usuario=";

    private final String SQL_UPDATE = "UPDATE `usuarios` SET ";

    private MotorSQL motorSql;
    
    public UsuarioDAO() {
        motorSql = ConnectionFactory.selectDb();
    }

    @Override
    public ArrayList<Usuario> findAll(Usuario bean) {
        ArrayList<Usuario> usuarios = new ArrayList<>();
        String sql = SQL_FINDALL;
        try {
            //1º) 
            motorSql.connect();
            if (bean != null) {
                if (bean.getIdUsuario() != 0) {
                    sql += "AND ID_USUARIO='" + bean.getIdUsuario()+ "' ";
                }
                if (bean.getNombre() != null) {
                    sql += "AND NOMBRE='" + bean.getNombre() + "' ";
                }

                if (bean.getEmail() != null) {
                    sql += "AND EMAIL='" + bean.getEmail() + "' ";
                }
                
                if (bean.getPass() != null) {
                    sql += "AND PASS='" + bean.getPass() + "';";
                }
            }

            System.out.println(sql);
            ResultSet rs = motorSql.
                    executeQuery(sql);

            while (rs.next()) {
                Usuario usuario = new Usuario();

                usuario.setIdUsuario(rs.getInt(1));
                usuario.setNombre(rs.getString(2));
                usuario.setEmail(rs.getString(3));
                usuario.setPass(rs.getString(4));

                usuarios.add(usuario);

            }
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            motorSql.disconnect();
        }
        return usuarios;
    }

    @Override
    public int add(Usuario bean) {
        int resp = 0;
        try {
            motorSql.connect();

            String sql = SQL_ADD + "('"
                    + bean.getNombre() + "', '"
                    + bean.getEmail() + "', '"
                    + bean.getPass() + "');";

//                    + bean.getsPuntuacion() + "',"
//                    + "CURRENT_DATE)";
            resp = motorSql.execute(sql);

        } catch (Exception e) {
            System.out.println(e);
        } finally {
            motorSql.disconnect();

        }
        if (resp > 0) {
            System.out.println("Usuario insertado con exito.");
        }
        return resp;
    }

    @Override
    public int delete(Integer id) {
        int resp = 0;
        motorSql.connect();
        try {
            String sql = SQL_DELETE + id;
            resp = motorSql.execute(sql);

        } catch (Exception e) {
            System.out.println(e);
        } finally {
            motorSql.disconnect();

        }
        if (resp > 0) {
            System.out.println("Borrado con exito.");
        } else {
            System.out.println("No se pudo borrar.");
        }
        return resp;
    }

    @Override
    public int update(Usuario bean) {
        int resp = 0;
        String sql;
        try {
            motorSql.connect();

            if (bean == null) {
                System.out.println("Introduzca datos a modificar");
            } else {
                sql = SQL_UPDATE;
                if (bean.getNombre() != null) {
                    sql += "NOMBRE='" + bean.getNombre() + "'";
                }

                if (bean.getEmail() != null) {
                    sql += "EMAIL='" + bean.getEmail() + "', ";
                }

                if (bean.getPass() != null) {
                    sql += "PASS='" + bean.getPass() + "'";
                }

                sql += " WHERE `ID_Usuario`=" + bean.getIdUsuario() + ";";
                System.out.println(sql);
                resp = motorSql.execute(sql);
            }

        } catch (Exception e) {
            System.out.println(e);
        } finally {
            motorSql.disconnect();
        }

        if (resp > 0) {
            System.out.println("Usuario actualizado con éxito.");
        } else {
            System.out.println("No se pudo actualizar.");
        }
        return resp;
    }

    public static void main(String[] args) {
        /*PRUEBAS UNITARIAS - TEST*/
        UsuarioDAO UsuarioDAO = new UsuarioDAO();
        
        
        
        //Findall - filtra segun campos que no son null o 0
//
//        Usuario usuario = new Usuario("David","mareca@gmail.com","12345",2);
//        
//        UsuarioDAO.findAll(usuario);
//
//////        //Add de registro
//        UsuarioDAO.add(usuario);
//
////        //Update del registro con id pelicula 1
//        UsuarioDAO.delete(2);
//        UsuarioDAO.delete(3);
//
////        //Delete del registro 2
    }

}
