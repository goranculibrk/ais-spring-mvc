package rs.ftn.ais.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Goran on 6/24/2015.
 */

public class ProjectsFormatted extends Projects {


    private String clName;
    private List<String> clientsList;

    public String getClName() {
        return clName;
    }


    public void setClName(String clName) {
        this.clName = clName;
    }

        public List<String> getClientsList() {
        return clientsList;
    }

    public void setClientsList(List<String>  clientsList) {
        this.clientsList = clientsList;
    }
}
