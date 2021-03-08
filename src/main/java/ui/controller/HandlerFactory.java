package ui.controller;

import javax.servlet.http.HttpServletRequest;

public class HandlerFactory {
    public RequestHandler getHandler(HttpServletRequest request) {
        RequestHandler handler;

        String command = request.getParameter("command");
        if (command == null || command.isEmpty()) command = "Home";

        try {
            Class handlerClass = Class.forName("ui.controller.handlers." + command + "Handler");
            Object handlerObject = handlerClass.getConstructor().newInstance();
            handler = (RequestHandler) handlerObject;
        } catch (Exception e) {
            throw new ControllerException(e.getMessage());
        }
        return handler;
    }
}
