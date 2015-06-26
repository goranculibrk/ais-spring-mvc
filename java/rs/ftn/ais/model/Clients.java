package rs.ftn.ais.model;


import javax.persistence.*;
import java.sql.Date;

/**
 * Created by Goran on 6/19/2015.
 */
@Entity
@Table(name = "clients")
public class Clients {
    private int idClients;
    private String clName;
    private String clPhone;
    private String clEmail;
    private String clWebsite;
    private String clStatus;
    private String clAddress;
    private String clCountry;
    private String clCurrency;
    private Date clDatestarted;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "idCLIENTS", nullable = false, insertable = true, updatable = true)
    public int getIdClients() {
        return idClients;
    }

    public void setIdClients(int idClients) {
        this.idClients = idClients;
    }

    @Basic
    @Column(name = "CL_NAME", nullable = true, insertable = true, updatable = true, length = 45)
    public String getClName() {
        return clName;
    }

    public void setClName(String clName) {
        this.clName = clName;
    }

    @Basic
    @Column(name = "CL_PHONE", nullable = true, insertable = true, updatable = true, length = 45)
    public String getClPhone() {
        return clPhone;
    }

    public void setClPhone(String clPhone) {
        this.clPhone = clPhone;
    }

    @Basic
    @Column(name = "CL_EMAIL", nullable = true, insertable = true, updatable = true, length = 45)
    public String getClEmail() {
        return clEmail;
    }

    public void setClEmail(String clEmail) {
        this.clEmail = clEmail;
    }

    @Basic
    @Column(name = "CL_WEBSITE", nullable = true, insertable = true, updatable = true, length = 45)
    public String getClWebsite() {
        return clWebsite;
    }

    public void setClWebsite(String clWebsite) {
        this.clWebsite = clWebsite;
    }

    @Basic
    @Column(name = "CL_STATUS", nullable = true, insertable = true, updatable = true, length = 45)
    public String getClStatus() {
        return clStatus;
    }

    public void setClStatus(String clStatus) {
        this.clStatus = clStatus;
    }

    @Basic
    @Column(name = "CL_ADDRESS", nullable = true, insertable = true, updatable = true, length = 45)
    public String getClAddress() {
        return clAddress;
    }

    public void setClAddress(String clAddress) {
        this.clAddress = clAddress;
    }

    @Basic
    @Column(name = "CL_COUNTRY", nullable = true, insertable = true, updatable = true, length = 45)
    public String getClCountry() {
        return clCountry;
    }

    public void setClCountry(String clCountry) {
        this.clCountry = clCountry;
    }

    @Basic
    @Column(name = "CL_CURRENCY", nullable = true, insertable = true, updatable = true, length = 45)
    public String getClCurrency() {
        return clCurrency;
    }

    public void setClCurrency(String clCurrency) {
        this.clCurrency = clCurrency;
    }

    @Basic
    @Column(name = "CL_DATESTARTED", nullable = true, insertable = true, updatable = true)
    public Date getClDatestarted() {
        return clDatestarted;
    }

    public void setClDatestarted(Date clDatestarted) {
        this.clDatestarted = clDatestarted;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Clients that = (Clients) o;

        if (idClients != that.idClients) return false;
        if (clAddress != null ? !clAddress.equals(that.clAddress) : that.clAddress != null) return false;
        if (clCountry != null ? !clCountry.equals(that.clCountry) : that.clCountry != null) return false;
        if (clCurrency != null ? !clCurrency.equals(that.clCurrency) : that.clCurrency != null) return false;
        if (clDatestarted != null ? !clDatestarted.equals(that.clDatestarted) : that.clDatestarted != null)
            return false;
        if (clEmail != null ? !clEmail.equals(that.clEmail) : that.clEmail != null) return false;
        if (clName != null ? !clName.equals(that.clName) : that.clName != null) return false;
        if (clPhone != null ? !clPhone.equals(that.clPhone) : that.clPhone != null) return false;
        if (clStatus != null ? !clStatus.equals(that.clStatus) : that.clStatus != null) return false;
        if (clWebsite != null ? !clWebsite.equals(that.clWebsite) : that.clWebsite != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = idClients;
        result = 31 * result + (clName != null ? clName.hashCode() : 0);
        result = 31 * result + (clPhone != null ? clPhone.hashCode() : 0);
        result = 31 * result + (clEmail != null ? clEmail.hashCode() : 0);
        result = 31 * result + (clWebsite != null ? clWebsite.hashCode() : 0);
        result = 31 * result + (clStatus != null ? clStatus.hashCode() : 0);
        result = 31 * result + (clAddress != null ? clAddress.hashCode() : 0);
        result = 31 * result + (clCountry != null ? clCountry.hashCode() : 0);
        result = 31 * result + (clCurrency != null ? clCurrency.hashCode() : 0);
        result = 31 * result + (clDatestarted != null ? clDatestarted.hashCode() : 0);
        return result;
    }
}
