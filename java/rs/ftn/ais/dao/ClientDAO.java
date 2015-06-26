package rs.ftn.ais.dao;

import rs.ftn.ais.model.Clients;

import java.util.List;

public interface ClientDAO {

    public List<Clients> list();

    public Clients get(int id);

    public void saveOrUpdate(Clients client);

    public void delete(int id);

    public Integer numberOfClients();
}
