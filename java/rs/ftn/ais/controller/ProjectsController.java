package rs.ftn.ais.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import rs.ftn.ais.dao.ProjectsDAO;
import rs.ftn.ais.dao.ProjectsFormattedDAO;
import rs.ftn.ais.model.Projects;
import rs.ftn.ais.model.ProjectsFormatted;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
@RequestMapping("/projects")
public class ProjectsController {

    @Autowired
    private ProjectsDAO projectsDao;

    @Autowired
    private ProjectsFormattedDAO projectsFormattedDao;

    @RequestMapping("/")
    public ModelAndView handleRequest() throws Exception {
        List<Projects> listProjects = projectsDao.list();
        ModelAndView model = new ModelAndView("ProjectList");
        // List<ProjectsFormatted> listProjects = projectsFormattedDao.listProjects();
        model.addObject("projectsList", listProjects);
        return model;
    }

    @RequestMapping(value = "/new", method = RequestMethod.GET)
    public ModelAndView newProject(HttpServletRequest request) {
        ModelAndView model = new ModelAndView("ProjectForm");
        ProjectsFormatted project = new ProjectsFormatted();
        project.setClientsList(projectsFormattedDao.listClientsName());



        model.addObject("project", project);
        return model;
    }

    @RequestMapping(value = "/new-clients-project", method = RequestMethod.GET)
    public ModelAndView newClientsProject(HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("ProjectForm");
        //List<String> clientsSelect = projectsFormattedDao.listClientsName();
        Projects project = new Projects();

        project.setClientsIdClients(Integer.parseInt(request.getParameter("id")));

        mav.addObject("project", project);
        return mav;
    }

    @RequestMapping(value = "/edit-project", method = RequestMethod.GET)
    public ModelAndView editProject(HttpServletRequest request) {
        int projectID = Integer.parseInt(request.getParameter("id"));
        Projects projects = projectsDao.get(projectID);
        ModelAndView model = new ModelAndView("edit-project");
        model.addObject("project", projects);
        return model;
    }

    @RequestMapping(value = "delete", method = RequestMethod.GET)
    public ModelAndView deleteProject(HttpServletRequest request) {
        int projectID = Integer.parseInt(request.getParameter("id"));
        projectsDao.delete(projectID);
        return new ModelAndView("redirect:/projects/");
    }
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView saveProject(@ModelAttribute ProjectsFormatted project) {
        Projects projects = new Projects();
        projects.setClientsIdClients(projectsFormattedDao.getClientIdFromName(project.getClName()));
        projects.setIdProjects(project.getIdProjects());
        projects.setProjDateend(project.getProjDateend());
        projects.setProjDatestarted(project.getProjDatestarted());
        projects.setProjName(project.getProjName());
        projects.setProjPrice(project.getProjPrice());
        projects.setProjPriority(project.getProjPriority());
        projects.setProjStatus(project.getProjStatus());
        projectsDao.saveOrUpdate(projects);
        return new ModelAndView("redirect:/projects/");
    }

    @RequestMapping(value = "/list-clients-projects", method = RequestMethod.GET)
    public ModelAndView listClientsProjects(HttpServletRequest request) throws Exception {
        List<Projects> listProjects = projectsDao.listClientsProjects(Integer.parseInt(request.getParameter("id")));
        ModelAndView model = new ModelAndView("list-clients-projects");
        model.addObject("projectList", listProjects);
        return model;
    }


}
