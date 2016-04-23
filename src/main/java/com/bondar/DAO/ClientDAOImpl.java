package com.bondar.DAO;

import com.bondar.Client;
import org.hibernate.Hibernate;
import org.hibernate.Session;

import javax.swing.*;
import java.util.Collection;

/**
 * Created by Влад on 20.04.2016.
 */
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
            JOptionPane.showMessageDialog(null, e.getMessage(), "Ошибка при добавлении клиента!", JOptionPane.OK_OPTION);
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
            JOptionPane.showMessageDialog(null, e.getMessage(), "Ошибка при обновлении клиента!", JOptionPane.OK_OPTION);
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
            JOptionPane.showMessageDialog(null, e.getMessage(), "Ошибка при удалении клиента!", JOptionPane.OK_OPTION);
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
            JOptionPane.showMessageDialog(null, e.getMessage(), "Ошибка при поиске по ID!", JOptionPane.OK_OPTION);
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
            JOptionPane.showMessageDialog(null, e.getMessage(), "Ошибка!", JOptionPane.OK_OPTION);
        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
        return clients;
    }

}
