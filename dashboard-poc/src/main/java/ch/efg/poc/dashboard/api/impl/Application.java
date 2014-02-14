package ch.efg.poc.dashboard.api.impl;

import ch.efg.poc.dashboard.api.IApplication;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/**
 * Created with IntelliJ IDEA.
 * User: traini05
 * Date: 13.02.14
 * Time: 23:28
 * To change this template use File | Settings | File Templates.
 */
public class Application implements IApplication, Comparable<IApplication> {

    private String name;
    private String description;
    private Set<String> tags;

    public Application(String name, String description, String ... tags) {
        this.name = name;
        this.description = description;
        this.tags = new HashSet<String>();

        Collections.addAll(this.tags, tags);
    }

    @Override
    public String getName() {
        return name;
    }

    @Override
    public String getDescription() {
        return description;
    }

    @Override
    public Set<String> getTags() {
        return tags;
    }

    @Override
    public int compareTo(IApplication application) {
        return name.compareToIgnoreCase(application.getName());
    }

}
