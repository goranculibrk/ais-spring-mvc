package rs.ftn.ais.dao;

import rs.ftn.ais.model.ProjectsFormatted;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Goran on 6/24/2015.
 */
public interface ProjectsFormattedDAO extends ProjectsDAO {

    public List<String> listClientsName();

    public int getClientIdFromName(String name);

}
