package action;

import DAO.EventoDAO;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Evento;

public class EventoAction implements interfaces.Action{

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
        
        int id_evento = 0;
        Evento evento = new Evento();
        
        if(request.getParameter("EVENTO") != null){
            id_evento = Integer.parseInt(request.getParameter("EVENTO"));
            evento.setIdevento(id_evento);
        }
        
        EventoDAO eventoDao = new EventoDAO();
        ArrayList<Evento> eventos = eventoDao.findAll(evento);
        return Evento.toArrayJSon(eventos);
    }
    
}
