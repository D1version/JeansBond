package com.bondar.DAO;


public class Factory {
    private static Factory instance = null;
    private static ClientDAOImpl clientDAO = null;
    private static SalesDAOImpl salesDAO = null;

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

    public SalesDAOImpl getSalesDAO(){
        if(salesDAO==null){
            salesDAO = new SalesDAOImpl();
        }
        return salesDAO;
    }

}
