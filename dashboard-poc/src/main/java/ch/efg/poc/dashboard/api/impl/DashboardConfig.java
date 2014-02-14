package ch.efg.poc.dashboard.api.impl;

import ch.efg.poc.dashboard.api.IApplication;
import ch.efg.poc.dashboard.api.IDashboardConfig;

import java.util.Set;

/**
 * Created with IntelliJ IDEA.
 * User: traini05
 * Date: 13.02.14
 * Time: 23:38
 * To change this template use File | Settings | File Templates.
 */
public class DashboardConfig implements IDashboardConfig {

    private Set<IApplication> applications;
    private Set<String> filters;
    private Set<String> favouriteApplicationNames;

    public DashboardConfig(Set<IApplication> applications,
                           Set<String> filters,
                           Set<String> favouriteApplicationNames) {

        this.applications = applications;
        this.filters = filters;
        this.favouriteApplicationNames = favouriteApplicationNames;
    }

    @Override
    public Set<IApplication> getApplications() {
        return applications;
    }

    @Override
    public Set<String> getFilters() {
        return filters;
    }

    @Override
    public Set<String> getFavouriteApplicationNames() {
        return favouriteApplicationNames;
    }
}
