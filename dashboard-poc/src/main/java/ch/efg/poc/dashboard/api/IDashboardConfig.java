package ch.efg.poc.dashboard.api;

import java.util.Set;

/**
 * Created with IntelliJ IDEA.
 * User: traini05
 * Date: 13.02.14
 * Time: 23:35
 * To change this template use File | Settings | File Templates.
 */
public interface IDashboardConfig {

    public Set<IApplication> getApplications();

    public Set<String> getFilters();

    public Set<String> getFavouriteApplicationNames();
}
