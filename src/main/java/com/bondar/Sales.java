package com.bondar;

/**
 * Created by Влад on 04.05.2016.
 */
public class Sales {
    private int ID;
    public Client client;
    public String dateOfSale;
    public int amount;
    public String jeansNumber;
    public String jeansSize;
    public String saler;

    public Sales(){}

    public Client getClient() {
        return client;
    }

    public void setClient(Client client) {
        this.client = client;
    }

    @Override
    public String toString() {
        return "Sales{" +
                "id=" + ID +
                ", salesCardNumber='" + client.getCardNumber() + '\'' +
                ", dateOfSales='" + dateOfSale + '\'' +
                ", amount=" + amount +
                ", jeansNumber='" + jeansNumber + '\'' +
                ", jeansSize='" + jeansSize + '\'' +
                ", saler='" + saler + '\'' +
                '}';
    }

    public int getID() {
        return ID;
    }

    public void setID(int id) {
        this.ID = id;
    }


    public String getDateOfSale() {
        return dateOfSale;
    }

    public void setDateOfSale(String dateOfSale) {
        this.dateOfSale = dateOfSale;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public String getJeansNumber() {
        return jeansNumber;
    }

    public void setJeansNumber(String jeansNumber) {
        this.jeansNumber = jeansNumber;
    }

    public String getJeansSize() {
        return jeansSize;
    }

    public void setJeansSize(String jeansSize) {
        this.jeansSize = jeansSize;
    }

    public String getSaler() {
        return saler;
    }

    public void setSaler(String saler) {
        this.saler = saler;
    }
}
