package com.example.dao.model;

import java.sql.Date;

public class Product {
    private Date date;
    private int customerId;
    private String productName;
    private int amount;

    public Product(Date date, int customerId, String productName, int amount) {
        this.date = date;
        this.customerId = customerId;
        this.productName = productName;
        this.amount = amount;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    @Override
    public String toString() {
        return "Product {" +
                "date=" + date +
                ", customerId='" + customerId +
                ", productName=" + productName +
                ", amount=" + amount +
                '}';
    }
}
