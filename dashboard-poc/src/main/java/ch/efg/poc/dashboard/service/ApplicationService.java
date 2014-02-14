package ch.efg.poc.dashboard.service;

import ch.efg.poc.dashboard.api.IApplication;
import ch.efg.poc.dashboard.api.impl.Application;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Set;
import java.util.TreeSet;

/**
 * Created with IntelliJ IDEA.
 * User: traini05
 * Date: 13.02.14
 * Time: 09:16
 * To change this template use File | Settings | File Templates.
 */
@Service
public class ApplicationService {

    public Set<IApplication> getApplications(List<String> applicationNames) {

        Set<IApplication> applications = new TreeSet<IApplication>();

        for (String applicationName : applicationNames) {
            applications.add(new Application(applicationName, applicationName, applicationName));
        }

        return applications;
    }
}
