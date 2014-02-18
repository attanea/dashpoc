package ch.efg.poc.dashboard.model;

import java.util.Date;

/**
 * igor on 18.02.14.
 */
public class TableRow {
    private String company;
    private int price;
    private int change;
    private int pctChange;
    private String street;
    private String area;
    private String region;
    private Date lastChange = new Date();

    public TableRow(String company, int price, int change, int pctChange, String street, String area, String region) {
        this.company = company;
        this.price = price;
        this.change = change;
        this.pctChange = pctChange;
        this.street = street;
        this.area = area;
        this.region = region;
    }

    public String getCompany() {
        return company;
    }

    public int getPrice() {
        return price;
    }

    public int getChange() {
        return change;
    }

    public int getPctChange() {
        return pctChange;
    }

    public String getStreet() {
        return street;
    }

    public String getArea() {
        return area;
    }

    public String getRegion() {
        return region;
    }

    public Date getLastChange() {
        return lastChange;
    }
}
