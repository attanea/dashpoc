package ch.efg.poc.dashboard.service;

import ch.efg.poc.dashboard.api.IApplication;
import ch.efg.poc.dashboard.api.impl.Application;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Random;
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

    private static final String[] FILTERS = new String[]{ "Banking", "Investment", "Admin", "Audit / Reporting",
            "Communication", "Employee", "IT / Support", "EFG websites"};

    public Set<IApplication> getApplications(List<String> applicationNames) {


        Set<IApplication> applications = new TreeSet<IApplication>();

        Random rn = new Random();
        for (String applicationName : applicationNames) {
            applications.add(new Application(applicationName, "Description of " + applicationName, getRandomFilters(Math.abs(rn.nextInt()))));
        }
        return applications;
    }

    private String[] getRandomFilters(int n){
        if (n > FILTERS.length){
            n = (n % FILTERS.length) + 1;
        }
        String[] filters = new String[n];
        for (int i=0; i<n; ++i){
            filters[i] = FILTERS[i];
        }
        return filters;
    }
}
