/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package action;

import DAO.PersonajeDAO;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Personaje;

/**
 *
 * @author Joshua
 */
public class PersonajeAction implements interfaces.Action{

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) {
        String cadDestino = "";
        String action = (String) request.getParameter("ACTION");
        String[] arrayAction = action.split("\\.");
        switch (arrayAction[1]) {

            case "FIND_ALL":
                cadDestino = findAll(request, response);
                break;
        }

        return cadDestino;
    }

    private String findAll(HttpServletRequest request, HttpServletResponse response) {
        int idPersonaje = 0;
        Personaje personaje = new Personaje();
        
        if(request.getParameter("INFOPERSONAJE") != null){
            idPersonaje = Integer.parseInt(request.getParameter("INFOPERSONAJE"));
            personaje.setIdPersonaje(idPersonaje);
        }
        
        PersonajeDAO personajeDao = new PersonajeDAO();
        ArrayList<Personaje> personajes = personajeDao.findAll(personaje);
        return Personaje.toArrayJson(personajes);
    }
    
}
