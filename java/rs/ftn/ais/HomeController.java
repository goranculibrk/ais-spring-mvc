package rs.ftn.ais;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import rs.ftn.ais.dao.ClientDAO;
import rs.ftn.ais.dao.ProjectsDAO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

    @Autowired
    private ClientDAO clientDao;
    @Autowired
    private ProjectsDAO projectsDao;

    @RequestMapping("/")
    public ModelAndView handleRequest() throws Exception {
        ModelAndView mav = new ModelAndView("home");
        String noClients = String.valueOf(clientDao.numberOfClients());
        String noProjects = String.valueOf(projectsDao.numberOfProjects());
        mav.addObject("noClients", noClients);
        mav.addObject("noProjects", noProjects);

        return mav;
    }


}
