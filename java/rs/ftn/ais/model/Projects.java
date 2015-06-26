package rs.ftn.ais.model;

import javax.persistence.*;
import java.sql.Date;

/**
 * Created by Goran on 6/19/2015.
 */
@Entity
@Table(name = "projects", schema = "", catalog = "freelancepm_db")
@IdClass(ProjectsPK.class)
public class Projects {
    private int idProjects;
    private String projName;
    private String projDescription;
    private String projStatus;
    private String projPriority;
    private Date projDatestarted;
    private Date projDateend;
    private String projPrice;
    private int clientsIdClients;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idPROJECTS", nullable = false, insertable = true, updatable = true)
    public int getIdProjects() {
        return idProjects;
    }

    public void setIdProjects(int idProjects) {
        this.idProjects = idProjects;
    }

    @Basic
    @Column(name = "PROJ_NAME", nullable = false, insertable = true, updatable = true, length = 45)
    public String getProjName() {
        return projName;
    }

    public void setProjName(String projName) {
        this.projName = projName;
    }

    @Basic
    @Column(name = "PROJ_DESCRIPTION", nullable = true, insertable = true, updatable = true, length = 45)
    public String getProjDescription() {
        return projDescription;
    }

    public void setProjDescription(String projDescription) {
        this.projDescription = projDescription;
    }

    @Basic
    @Column(name = "PROJ_STATUS", nullable = true, insertable = true, updatable = true, length = 45)
    public String getProjStatus() {
        return projStatus;
    }

    public void setProjStatus(String projStatus) {
        this.projStatus = projStatus;
    }

    @Basic
    @Column(name = "PROJ_PRIORITY", nullable = true, insertable = true, updatable = true, length = 45)
    public String getProjPriority() {
        return projPriority;
    }

    public void setProjPriority(String projPriority) {
        this.projPriority = projPriority;
    }

    @Basic
    @Column(name = "PROJ_DATESTARTED", nullable = true, insertable = true, updatable = true)
    public Date getProjDatestarted() {
        return projDatestarted;
    }

    public void setProjDatestarted(Date projDatestarted) {
        this.projDatestarted = projDatestarted;
    }

    @Basic
    @Column(name = "PROJ_DATEEND", nullable = true, insertable = true, updatable = true)
    public Date getProjDateend() {
        return projDateend;
    }

    public void setProjDateend(Date projDateend) {
        this.projDateend = projDateend;
    }

    @Basic
    @Column(name = "PROJ_PRICE", nullable = false, insertable = true, updatable = true, length = 45)
    public String getProjPrice() {
        return projPrice;
    }

    public void setProjPrice(String projPrice) {
        this.projPrice = projPrice;
    }

    @Id
    @Column(name = "CLIENTS_idCLIENTS", nullable = false, insertable = true, updatable = true)
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

        Projects that = (Projects) o;

        if (clientsIdClients != that.clientsIdClients) return false;
        if (idProjects != that.idProjects) return false;
        if (projDateend != null ? !projDateend.equals(that.projDateend) : that.projDateend != null) return false;
        if (projDatestarted != null ? !projDatestarted.equals(that.projDatestarted) : that.projDatestarted != null)
            return false;
        if (projDescription != null ? !projDescription.equals(that.projDescription) : that.projDescription != null)
            return false;
        if (projName != null ? !projName.equals(that.projName) : that.projName != null) return false;
        if (projPrice != null ? !projPrice.equals(that.projPrice) : that.projPrice != null) return false;
        if (projPriority != null ? !projPriority.equals(that.projPriority) : that.projPriority != null) return false;
        if (projStatus != null ? !projStatus.equals(that.projStatus) : that.projStatus != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = idProjects;
        result = 31 * result + (projName != null ? projName.hashCode() : 0);
        result = 31 * result + (projDescription != null ? projDescription.hashCode() : 0);
        result = 31 * result + (projStatus != null ? projStatus.hashCode() : 0);
        result = 31 * result + (projPriority != null ? projPriority.hashCode() : 0);
        result = 31 * result + (projDatestarted != null ? projDatestarted.hashCode() : 0);
        result = 31 * result + (projDateend != null ? projDateend.hashCode() : 0);
        result = 31 * result + (projPrice != null ? projPrice.hashCode() : 0);
        result = 31 * result + clientsIdClients;
        return result;
    }
}
