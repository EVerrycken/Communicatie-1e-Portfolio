package ui.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/Controller")
public class Controller extends HttpServlet {
    private HandlerFactory handlerFactory = new HandlerFactory();

    public Controller() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String destination;
        try {
            RequestHandler handler = handlerFactory.getHandler(request);
            destination = handler.handleRequest(request, response);
        } catch (ControllerException e) {
            System.out.println(e.getMessage());
            request.setAttribute("error","Pagina niet gevonden");
            destination = "error.jsp";
        } catch (Exception e) {
            System.out.println(e.getMessage());
            destination = "index.jsp";
        }
        if (!response.isCommitted()) {
            request.getRequestDispatcher(destination).forward(request,response);
        }
    }
}
