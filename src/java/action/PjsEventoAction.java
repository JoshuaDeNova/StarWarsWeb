/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package action;

import DAO.PjsEventoDAO;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Personaje;
import model.PjsEvento;

/**
 *
 * @author Joshua
 */
public class PjsEventoAction implements interfaces.Action{

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) {
        String cadDestino = "";
        String action = (String) request.getParameter("ACTION");
        String[] arrayAction = action.split("\\.");
        switch (arrayAction[1]) {

            case "FINDBYEVENTO":
                cadDestino = findByEvento(request, response);
                break;
        }

        return cadDestino;
    }

    private String findByEvento(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("EPOCA"));
        PjsEvento personajEvento = new PjsEvento();
            personajEvento.setEvento(id);
        
        PjsEventoDAO personajEventoDao = new PjsEventoDAO();
        ArrayList<Personaje> personajes = personajEventoDao.findByEvento(personajEvento);
        return Personaje.toArrayJson(personajes);
    }
}
