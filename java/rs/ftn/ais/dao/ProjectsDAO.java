package rs.ftn.ais.dao;

import rs.ftn.ais.model.Clients;
import rs.ftn.ais.model.Projects;

import java.util.List;

public interface ProjectsDAO {

    public List<Projects> list();

    public Projects get(int id);

    public void saveOrUpdate(Projects project);

    public void delete(int id);

    public List<Projects> listClientsProjects(int clientsIdClients);

    public Integer numberOfProjects();


}
