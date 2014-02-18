package ch.efg.poc.dashboard.model;

/**
 * igor on 18.02.14.
 */
public class TableData {
    private int totalCount;
    private TableRow[] data;

    public TableData(TableRow[] data, int totalCount) {
        this.data = data;
        this.totalCount = totalCount;
    }

    public int getTotalCount(){
        return totalCount;
    }

    public TableRow[] getData() {
        return data;
    }
}
