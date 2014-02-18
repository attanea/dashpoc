package ch.efg.poc.dashboard.model;

/**
 * igor on 18.02.14.
 */
public class TableData {
    private int totalCount;
    private TableRow[] aaData;

    public TableData(TableRow[] aaData, int totalCount) {
        this.aaData = aaData;
        this.totalCount = totalCount;
    }

    public int getTotalCount(){
        return totalCount;
    }

    public TableRow[] getAaData() {
        return aaData;
    }
}
