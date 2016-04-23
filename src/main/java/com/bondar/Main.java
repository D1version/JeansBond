package com.bondar;

import com.bondar.DAO.Factory;

import java.util.ArrayList;

/**
 * Created by ���� on 20.04.2016.
 */
public class Main {
    public static void main(String[] args) {
        Client client = new Client();
        ArrayList<Client> list = (ArrayList<Client>) Factory.getInstance().getClientDAO().getAllClients();

        for (int i = 0; i < list.size(); i++) {
            System.out.println(list.get(i));
        }
    }
}
