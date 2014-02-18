package ch.efg.poc.dashboard.acl;

import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: traini05
 * Date: 13.02.14
 * Time: 23:11
 * To change this template use File | Settings | File Templates.
 */
@Service
public class PermissionManager {

    public List<String> getAvailableApplications(final String userName) {

        List<String> applications = new ArrayList<String>(50);
        for (int i=0; i<50; ++i){
            applications.add("Application " + i);
        }
        return applications;
    }

}
