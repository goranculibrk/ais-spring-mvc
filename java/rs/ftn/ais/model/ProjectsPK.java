package rs.ftn.ais.model;

import javax.persistence.Column;
import javax.persistence.Id;
import java.io.Serializable;

/**
 * Created by Goran on 6/19/2015.
 */
public class ProjectsPK implements Serializable {
    private int idProjects;
    private int clientsIdClients;

    @Column(name = "idPROJECTS", nullable = false, insertable = true, updatable = true)
    @Id
    public int getIdProjects() {
        return idProjects;
    }

    public void setIdProjects(int idProjects) {
        this.idProjects = idProjects;
    }

    @Column(name = "CLIENTS_idCLIENTS", nullable = false, insertable = true, updatable = true)
    @Id
    public int getClientsIdClients() {
        return clientsIdClients;
    }

    public void setClientsIdClients(int clientsIdClients) {
        this.clientsIdClients = clientsIdClients;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ProjectsPK that = (ProjectsPK) o;

        if (clientsIdClients != that.clientsIdClients) return false;
        if (idProjects != that.idProjects) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = idProjects;
        result = 31 * result + clientsIdClients;
        return result;
    }
}
