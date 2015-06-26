package rs.ftn.ais.dao;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import rs.ftn.ais.model.Clients;
import rs.ftn.ais.model.Projects;

import java.util.List;

@Repository
public class ProjectsDAOImpl implements ProjectsDAO {

    @Autowired
    private SessionFactory sessionFactory;

    public ProjectsDAOImpl() {

    }

    public ProjectsDAOImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    @Transactional
    public List<Projects> list() {
        @SuppressWarnings("unchecked")
        List<Projects> listClient = (List<Projects>) sessionFactory
                .getCurrentSession().createCriteria(Projects.class)
                .setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
        return listClient;
    }

    @Override
    @Transactional
    public Projects get(int id) {
        String hql = " from Projects where idProjects=" + id;
        Query query = sessionFactory.getCurrentSession().createQuery(hql);
        @SuppressWarnings("unchecked")
        List<Projects> listProjects = (List<Projects>) query.list();

        if (listProjects != null && !listProjects.isEmpty()) {
            return listProjects.get(0);
        }
        return null;
    }

    @Override
    @Transactional
    public void saveOrUpdate(Projects project) {
        sessionFactory.getCurrentSession().saveOrUpdate(project);
    }

    @Override
    @Transactional
    public void delete(int id) {
        /*Projects projToDel = new Projects();
        projToDel.setIdProjects(id);
        sessionFactory.getCurrentSession().delete(projToDel);*/

        String hql = "delete from Projects p where p.idProjects = " + id;
        sessionFactory.getCurrentSession().createQuery(hql).executeUpdate();
    }

    @Transactional
    public List<Projects> listClientsProjects(int id) {

        String hql = " from Projects where clientsIdClients = " + id;

        Query query = sessionFactory.getCurrentSession().createQuery(hql);

        List<Projects> listProjects = query.list();

        return listProjects;
    }

    @Transactional
    public String getClientsName(int clientsID) {
        String hql = "select clients.clName from Clients clients, Projects projects where projects.clientsIdClients = clients.idClients and projects.clientsIdClients =" + clientsID;
        Query query = sessionFactory.getCurrentSession().createQuery(hql);

        String clientsName = query.toString();
        return clientsName;
    }

    @Transactional
    public List<Projects> listProjectsFormatted(int clientID) throws Exception {
        //String hql = "select projects.idProjects, clients.clName, projects.projName, projects.projDescription, projects.projPriority, projects.projStatus, projects.projDatestarted, projects.projDateend, projects.projPrice from Clients clients, Projects projects where clients.idClients = projects.clientsIdClients and projects.clientsIdClients = " + clientID;

        String hql = "from Projects where clientsIdClients = " + clientID;
        Query query = sessionFactory.getCurrentSession().createQuery(hql);
        @SuppressWarnings("unchecked")
        List<Projects> listProjects = (List<Projects>) query.list();
        return listProjects;
    }

    @Transactional
    public Integer numberOfProjects() {
        Long count = ((Long) sessionFactory.getCurrentSession().createQuery("select count(*) from Projects").uniqueResult());
        Integer noProjects = count.intValue();
        return noProjects;
    }



}
