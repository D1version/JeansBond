package com.bondar.DAO;

import com.bondar.Client;
import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.Session;

import java.util.Collection;


public class ClientDAOImpl {

    public ClientDAOImpl(){}

    public void addClient(Client client) {
        Session session = null;
        try {
            session = HibernateSession.getSessionFactory().openSession();
            session.beginTransaction();
            session.save(client);
            session.getTransaction().commit();
        } catch (Exception e) {

        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
    }

    public void updateClient(Client client){
        Session session = null;
        try {
            session = HibernateSession.getSessionFactory().openSession();
            session.beginTransaction();
            session.update(client);
            session.getTransaction().commit();
        } catch (Exception e) {

        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
    }

    public void deleteClient(Client client){
        Session session = null;
        try {
            session = HibernateSession.getSessionFactory().openSession();
            session.beginTransaction();
            session.delete(client);
            session.getTransaction().commit();
        } catch (Exception e) {

        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
    }

    public Client getClientByID(int id){
        Session session = null;
        Client client = null;
        try {
            session = HibernateSession.getSessionFactory().openSession();
            client = (Client) session.load(Client.class,id);
            Hibernate.initialize(client);
        } catch (Exception e) {

        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
        return client;
    }

    public Collection getAllClients(){
        Session session = null;
        Collection clients = null;
        try {
            session = HibernateSession.getSessionFactory().openSession();
            clients = session.createCriteria(Client.class).list();
        } catch (Exception e) {

        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
        return clients;
    }

    public Client getClientByCardNumber(int cardNumber){
        Session session = null;
        Client client = null;
        try{
            session = HibernateSession.getSessionFactory().openSession();
            session.beginTransaction();
            Query query = session.createSQLQuery(String.format("SELECT * FROM clients WHERE CardNumber = %d", cardNumber)).addEntity(Client.class);
            client = (Client) query.uniqueResult();
            Hibernate.initialize(client);
            session.getTransaction().commit();
        } catch (Exception e){

        } finally {
            if(session != null && session.isOpen()){
                session.close();
            }
        }
        return client;
    }

}
