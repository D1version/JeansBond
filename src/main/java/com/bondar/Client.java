package com.bondar;

import java.util.HashSet;
import java.util.Set;

public class Client {
    private int ID;
    public String name = null;
    public String secondName = null;
    public String birthday = null;
    public String registrationDate = null;
    public String phoneNumber = null;
    public String viber = null;
    public String cardNumber = null;
    public int amount;
    public int counter = 1;
    private Set sales = new HashSet();

    public Set getSales() {
        return sales;
    }

    public void setSales(Set sales) {
        this.sales = sales;
    }

    public String getViber() {
        return viber;
    }

    public void setViber(String viber) {
        this.viber = viber;
    }

    @Override
    public String toString() {
        return "Client{" +
                "secondName='" + secondName + '\'' +
                ", name='" + name + '\'' +
                ", birthday='" + birthday + '\'' +
                ", registrationDate='" + registrationDate + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", viber='" + viber + '\'' +
                ", cardNumber='" + cardNumber + '\'' +
                ", amount=" + amount +
                ", counter=" + counter +
                '}';
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public int getCounter() {
        return counter;
    }

    public void setCounter(int counter) {
        this.counter = counter;
    }

    public Client(){}

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public String getCardNumber() {
        return cardNumber;
    }

    public void setCardNumber(String cardNumber) {
        this.cardNumber = cardNumber;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getRegistrationDate() {
        return registrationDate;
    }

    public void setRegistrationDate(String registrationDate) {
        this.registrationDate = registrationDate;
    }

    public String getSecondName() {
        return secondName;
    }

    public void setSecondName(String secondName) {
        this.secondName = secondName;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }
}

