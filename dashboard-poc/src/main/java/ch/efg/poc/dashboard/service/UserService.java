package ch.efg.poc.dashboard.service;

import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.Set;

/**
 * Created with IntelliJ IDEA.
 * User: traini05
 * Date: 13.02.14
 * Time: 09:16
 * To change this template use File | Settings | File Templates.
 */
@Service
public class UserService {

    public Set<String> getFavouriteApplications(final String userName) {

        Set<String> applications = new HashSet<String>();

        applications.add("Application2");
        applications.add("Application3");
        applications.add("Application5");

        return applications;
    }
}
