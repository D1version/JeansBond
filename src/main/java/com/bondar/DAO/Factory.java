package com.bondar.DAO;

/**
 * Created by Влад on 20.04.2016.
 */
public class Factory {
    private static Factory instance = null;
    private static ClientDAOImpl clientDAO = null;

    public static synchronized Factory getInstance(){
        if (instance == null){
            instance = new Factory();
        }
        return instance;
    }

    public ClientDAOImpl getClientDAO(){
        if(clientDAO==null){
            clientDAO = new ClientDAOImpl();
        }
        return clientDAO;
    }

}
