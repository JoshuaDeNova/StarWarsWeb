/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package action;

import DAO.UsuarioDAO;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Usuario;

/**
 *
 * @author Sony
 */
public class UsuarioAction implements interfaces.Action{
    
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) {
        String cadDestino = "";
        String action = (String) request.getParameter("ACTION");
        String[] arrayAction = action.split("\\.");
        switch (arrayAction[1]) {

            case "FIND_ALL":
                cadDestino = findAll(request, response);
                break;
                
            case "LOGGIN":
                cadDestino = loggin(request, response);
                break;
                
            case "ADD":
                cadDestino = addUser(request, response);
                break;
        }

        return cadDestino;
    }
    
     private String findAll(HttpServletRequest request, HttpServletResponse response) {

        UsuarioDAO usuarioDao = new UsuarioDAO();
        ArrayList<Usuario> usuarios = usuarioDao.findAll(null);
        return Usuario.toArrayJSon(usuarios);

    }

    private String loggin(HttpServletRequest request, HttpServletResponse response) {
        //PARÁMETROS
        String email =  request.getParameter("EMAIL");
        String password = request.getParameter("PASSWORD");
        Usuario usuario = new Usuario();
            usuario.setEmail(email);
            usuario.setPass(password);
        
        UsuarioDAO usuarioDao = new UsuarioDAO();
        ArrayList<Usuario> usuarios 
                = usuarioDao.findAll(usuario);
        return Usuario.toArrayJSon(usuarios);
    }

    private String addUser(HttpServletRequest request, HttpServletResponse response) {
        String nombre = request.getParameter("NAME");
        String email = request.getParameter("CORREO");
        String password = request.getParameter("CONTRASENA");
        
        Usuario usuario = new Usuario();
            usuario.setEmail(email);

        
        UsuarioDAO usuarioDao = new UsuarioDAO();
        ArrayList <Usuario> usuarios 
                = usuarioDao.findAll(usuario);
        if(usuarios.size() == 1){
            return "este usuario esta ya registrado";
        }else{
            usuario.setNombre(nombre);
            usuario.setPass(password);
            usuarioDao.add(usuario);
            return "usuario insertado con éxito";
        }
    }
}
