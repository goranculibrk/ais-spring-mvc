package rs.ftn.ais.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import rs.ftn.ais.dao.ClientDAO;
import rs.ftn.ais.model.Clients;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("clients")
public class ClientsController {

    @Autowired
    private ClientDAO clientDao;

    @RequestMapping("/")
    public ModelAndView handleRequest() throws Exception {
        List<Clients> listClients = clientDao.list();

        ModelAndView model = new ModelAndView("ClientList");
        model.addObject("clientsList", listClients);
        return model;
    }

    @RequestMapping(value = "/new", method = RequestMethod.GET)
    public ModelAndView newClient() {
        ModelAndView model = new ModelAndView("ClientForm");
        model.addObject("client", new Clients());
        return model;

    }

    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public ModelAndView editClient(HttpServletRequest request) {
        int clientID = Integer.parseInt(request.getParameter("id"));
        Clients client = clientDao.get(clientID);
        ModelAndView model = new ModelAndView("ClientForm");
        model.addObject("client", client);

        return model;
    }

    @RequestMapping(value = "delete", method = RequestMethod.GET)
    public ModelAndView deleteClient(HttpServletRequest request) throws Exception{
        int clientID = Integer.parseInt(request.getParameter("id"));
        clientDao.delete(clientID);
        return new ModelAndView("redirect:/clients/");
    }

    @RequestMapping(value = "save", method = RequestMethod.POST)
    public ModelAndView saveClient(@ModelAttribute Clients client) {

        clientDao.saveOrUpdate(client);
        return new ModelAndView("redirect:/clients/");
    }


}
