package ui.util;

import ui.controllers.RequestHandler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HandlerFactory {
    public RequestHandler getHandler(HttpServletRequest request, HttpServletResponse response) {
        String command = request.getParameter("command");
        if (command == null || command.isEmpty()) command = "Match";

        RequestHandler handler;

        try {
            Class handlerClass = Class.forName("ui.controllers." + command + "Handler");
            Object handlerObject = handlerClass.getConstructor().newInstance();
            handler = (RequestHandler) handlerObject;
        } catch (Exception e) {
            System.out.println(e);
            throw new RuntimeException("This [" + command + "] page does not exist");
        }
        return handler;
    }
}
