package ch.efg.poc.dashboard.api;

import java.util.Set;

/**
 * Created with IntelliJ IDEA.
 * User: traini05
 * Date: 13.02.14
 * Time: 23:12
 * To change this template use File | Settings | File Templates.
 */
public interface IApplication {

    public String getName();

    public String getDescription();

    public Set<String> getTags();

}
