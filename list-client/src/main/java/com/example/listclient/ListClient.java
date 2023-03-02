package com.example.listclient;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;

public class ListClient {
    private String name;
    private Date date;
    private String add;
    private static final DateFormat df = new SimpleDateFormat("MM/dd/yyyy");

    public ListClient() {
    }

    public ListClient(String name, String date, String add) {
        this.name = name;
        this.add = add;
        try {
            this.date = df.parse(date);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getAdd() {
        return add;
    }

    public void setAdd(String add) {
        this.add = add;
    }
}
