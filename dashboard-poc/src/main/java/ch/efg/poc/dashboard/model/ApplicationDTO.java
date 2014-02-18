package ch.efg.poc.dashboard.model;

import java.util.Set;

/**
 * Created with IntelliJ IDEA.
 * User: traini05
 * Date: 13.02.14
 * Time: 09:24
 * To change this template use File | Settings | File Templates.
 */
public class ApplicationDTO implements Comparable<ApplicationDTO>{

    private String name;
    private String description;
    private Set<String> filters;
    private boolean favourite;

    public ApplicationDTO(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Set<String> getFilters() {
        return filters;
    }

    public void setFilters(Set<String> filters) {
        this.filters = filters;
    }

    public boolean isFavourite() {
        return favourite;
    }

    public void setFavourite(boolean favourite) {
        this.favourite = favourite;
    }

    @Override
    public int compareTo(ApplicationDTO o) {
        return name.compareToIgnoreCase(o.getName());
    }
}
