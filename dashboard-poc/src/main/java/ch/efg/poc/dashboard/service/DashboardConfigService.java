package ch.efg.poc.dashboard.service;

import ch.efg.poc.dashboard.acl.PermissionManager;
import ch.efg.poc.dashboard.api.IApplication;
import ch.efg.poc.dashboard.api.IDashboardConfig;
import ch.efg.poc.dashboard.api.impl.DashboardConfig;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Set;
import java.util.TreeSet;

/**
 * Created with IntelliJ IDEA.
 * User: traini05
 * Date: 13.02.14
 * Time: 23:09
 * To change this template use File | Settings | File Templates.
 */
@Service
public class DashboardConfigService {

    @Autowired
    private PermissionManager permissionManager;

    @Autowired
    private ApplicationService applicationService;

    @Autowired
    private UserService userService;

    public IDashboardConfig getDashboardConfigurationForUser(final String userName) {

        List<String> availableApplicationNames = permissionManager.getAvailableApplications(userName);

        Set<IApplication> availableApplications = applicationService.getApplications(availableApplicationNames);

        Set<String> filters = new TreeSet<String>();

        for (IApplication application : availableApplications) {
            filters.addAll(application.getTags());
        }

        Set<String> favouriteApplications = userService.getFavouriteApplications(userName);

        return new DashboardConfig(availableApplications, filters, favouriteApplications);
    }
}
