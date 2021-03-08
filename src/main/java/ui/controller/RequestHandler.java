package ui.controllers;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import domain.db.EventRepository;
import domain.db.ResultRepository;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public abstract class RequestHandler {

    protected EventRepository eventRepository;
    protected ResultRepository resultRepository;

    public abstract String handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;

    public void setEventRepository(EventRepository eventRepository) { this.eventRepository = eventRepository; }

    public void setResultRepository(ResultRepository resultRepository) { this.resultRepository = resultRepository; }

    protected String objectToJson(Object object) throws JsonProcessingException {
        ObjectMapper mapper = new ObjectMapper();
        return mapper.writeValueAsString(object);
    }
}
