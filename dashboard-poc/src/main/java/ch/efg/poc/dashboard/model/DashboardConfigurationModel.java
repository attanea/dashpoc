package ch.efg.poc.dashboard.model;

import java.util.Set;

/**
 * Created with IntelliJ IDEA.
 * User: traini05
 * Date: 16.02.14
 * Time: 11:36
 * To change this template use File | Settings | File Templates.
 */
public class DashboardConfigurationModel {

    private Set<ApplicationDTO> applications;
    private Set<String> filters;

    public Set<ApplicationDTO> getApplications() {
        return applications;
    }

    public void setApplications(Set<ApplicationDTO> applications) {
        this.applications = applications;
    }

    public Set<String> getFilters() {
        return filters;
    }

    public void setFilters(Set<String> filters) {
        this.filters = filters;
    }
}
