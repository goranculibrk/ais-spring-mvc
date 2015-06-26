package rs.ftn.ais.dao;

import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.transform.Transformers;
import org.hibernate.type.DateType;
import org.hibernate.type.IntegerType;
import org.hibernate.type.StringType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import rs.ftn.ais.model.ProjectsFormatted;

import java.util.List;

/**
 * Created by Goran on 6/24/2015.
 */
public class ProjectsFormattedDAOImpl extends ProjectsDAOImpl implements ProjectsFormattedDAO {

    @Autowired
    private SessionFactory sessionFactory;

    public ProjectsFormattedDAOImpl() {

    }

    public ProjectsFormattedDAOImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    /*@Override
    @Transactional
    public List<ProjectsFormatted> listProjects() {
      *//*  String hql = "select projects.idProjects as idProjects, clients.clName, projects.projName, projects.projDescription, projects.projPriority, projects.projStatus, projects.projDatestarted, projects.projDateend, projects.projPrice from Clients clients, Projects projects where clients.idClients = projects.clientsIdClients";

        Query query = sessionFactory.getCurrentSession().createQuery(hql);

        List<ProjectsFormatted> listProjects = (List<ProjectsFormatted>) query.list();*//*


        @SuppressWarnings("unchecked")
        List<ProjectsFormatted> listProjects = (List<ProjectsFormatted>) sessionFactory
                .getCurrentSession().createSQLQuery("select projects.idProjects as projectID, clients.clName as clientName, projects.projName as projName, projects.projDescription as description, projects.projPriority as priority," +
                        " projects.projStatus as status, projects.projDatestarted as dateStart, projects.projDateend as dateEnd, projects.projPrice as price from Clients clients, Projects projects where clients.idClients = projects.clientsIdClients")
                .addScalar("projectID", IntegerType.INSTANCE).addScalar("clientName", StringType.INSTANCE).addScalar("projName", StringType.INSTANCE).addScalar("description",StringType.INSTANCE).addScalar("priority",StringType.INSTANCE).addScalar("status", StringType.INSTANCE)
                .addScalar("dateStart", DateType.INSTANCE).addScalar("dateEnd", DateType.INSTANCE).addScalar("price", IntegerType.INSTANCE)
                .setResultTransformer(Transformers.aliasToBean(ProjectsFormatted.class)).list();
        return listProjects;

    }*/


    @Transactional
    public List<String> listClientsName(){
        String hql = "select clName from Clients";
        Query query = sessionFactory.getCurrentSession().createQuery(hql);

        List<String> listClient = query.list();
        return listClient;
    }

    @Transactional
    public int getClientIdFromName(String name){
        String hql = "select idClients from Clients where clName = " +"'"+ name+ "'";

        Query query = sessionFactory.getCurrentSession().createQuery(hql);

        int id = (Integer) query.uniqueResult();

        return id;
    }



}
