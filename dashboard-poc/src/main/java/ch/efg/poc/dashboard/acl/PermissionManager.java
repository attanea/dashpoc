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

        List<String> applications = new ArrayList<String>();

        applications.add("Application1");
        applications.add("Application2");
        applications.add("Application3");
        applications.add("Application4");
        applications.add("Application5");

        return applications;
    }
}
