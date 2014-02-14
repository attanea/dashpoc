package ch.efg.poc.dashboard.model;

/**
 * Created with IntelliJ IDEA.
 * User: traini05
 * Date: 13.02.14
 * Time: 09:24
 * To change this template use File | Settings | File Templates.
 */
public class ApplicationModel implements Comparable<ApplicationModel>{

    private String title;

    public ApplicationModel(String title) {
        this.title = title;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Override
    public int compareTo(ApplicationModel o) {
        return title.compareToIgnoreCase(o.getTitle());
    }
}
