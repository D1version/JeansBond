package com.bondar;

import com.bondar.DAO.Factory;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;


public class Validation {

    public static boolean cardAvailability(String card){
        ArrayList<Client> clients = (ArrayList<Client>) Factory.getInstance().getClientDAO().getAllClients();
        int counter = 0;
        for (int i = 0; i < clients.size(); i++) {
            if(clients.get(i).getCardNumber().equals(card)) counter++;
        }
        if(counter == 0) return false;
        else return true;
    }

    public static boolean clientNameValidation(String name){
        if (name == null || name.length() == 0 || name.length() > 50 ||
                !name.matches("^[a-zA-Zа-яёА-ЯЁ_][a-zA-Zа-яёА-ЯЁ_]*$")) {
            return false;
        } else return true;
    }

    public static boolean dateValidation(String dateToValidate){
        if (dateToValidate == null)
            return false;
        SimpleDateFormat sdf = new SimpleDateFormat("dd-mm-yyyy");
        sdf.setLenient(false);
        try {
            Date date = sdf.parse(dateToValidate);
            Date current = new Date();
            if (current.getTime() < date.getTime()) return false;
        } catch (ParseException e) {
            return false;
        }
        return true;
    }

    public static boolean cardValidation(String cardNumber){
        if(cardNumber == null || cardNumber.length() != 4) return false;
        try{
            Integer.parseInt(cardNumber);
        } catch (Exception e){
            return false;
        }
        return true;
    }

    public static boolean phoneNumberValidation(String phoneNumber){
        if(phoneNumber == null || phoneNumber.length() != 10 || !phoneNumber.startsWith("0"))
            return false;
        try{
            Integer.parseInt(phoneNumber);
        }catch (Exception e){
            return false;
        }
        return true;
    }

    public static boolean viberValidation(String viber){
        if(viber.equals("+") || viber.equals("-")) return true;
        else return false;
    }


    public static boolean amountValidation(String amount){
        if(amount == null || amount.length() == 0 || amount.length() > 9) return false;
        try{
            Integer.parseInt(amount);
        }catch (Exception e){
            return false;
        }
        return true;
    }
}
