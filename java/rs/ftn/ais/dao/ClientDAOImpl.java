package rs.ftn.ais.dao;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import rs.ftn.ais.model.Clients;

import java.util.List;

@Repository
public class ClientDAOImpl implements ClientDAO {

    @Autowired
    private SessionFactory sessionFactory;

    public ClientDAOImpl() {

    }

    public ClientDAOImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    @Transactional
    public List<Clients> list() {
        @SuppressWarnings("unchecked")
        List<Clients> listClient = (List<Clients>) sessionFactory
                .getCurrentSession().createCriteria(Clients.class)
                .setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
        return listClient;


    }

    @Override
    @Transactional
    public Clients get(int id) {
        String hql = " from Clients where idClients=" + id;
        Query query = sessionFactory.getCurrentSession().createQuery(hql);

        @SuppressWarnings("unchecked")
        List<Clients> listClient = (List<Clients>) query.list();

        if (listClient != null && !listClient.isEmpty()) {
            return listClient.get(0);
        }

        return null;
    }

    @Override
    @Transactional
    public void saveOrUpdate(Clients client) {
        sessionFactory.getCurrentSession().saveOrUpdate(client);

    }

    @Override
    @Transactional
    public void delete(int id) {
        Clients clientToDelete = new Clients();
        clientToDelete.setIdClients(id);
        sessionFactory.getCurrentSession().delete(clientToDelete);

    }

    @Transactional
    public Integer numberOfClients() {

        Long count = ((Long) sessionFactory.getCurrentSession().createQuery("select count(*) from Clients").uniqueResult());
        Integer totalClients = count.intValue();

        return totalClients;
    }

}
