package com.bondar.DAO;

import com.bondar.Sales;
import org.hibernate.Hibernate;
import org.hibernate.Session;

import java.util.Collection;


public class SalesDAOImpl {

    public SalesDAOImpl(){}

    public void addSales(Sales sale){
        Session session = null;
        try {
            session = HibernateSession.getSessionFactory().openSession();
            session.beginTransaction();
            session.save(sale);
            session.getTransaction().commit();
        } catch (Exception e) {

        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
    }

    public void updateSales(Sales sale){
        Session session = null;
        try {
            session = HibernateSession.getSessionFactory().openSession();
            session.beginTransaction();
            session.update(sale);
            session.getTransaction().commit();
        } catch (Exception e) {

        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
    }

    public void deleteSales(Sales sale){
        Session session = null;
        try {
            session = HibernateSession.getSessionFactory().openSession();
            session.beginTransaction();
            session.delete(sale);
            session.getTransaction().commit();
        } catch (Exception e) {

        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
    }

    public Sales getSalesByID(int id){
        Session session = null;
        Sales sales = null;
        try {
            session = HibernateSession.getSessionFactory().openSession();
            sales = (Sales) session.load(Sales.class,id);
            Hibernate.initialize(sales);
        } catch (Exception e) {

        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
        return sales;
    }

    public Collection getAllSales(){
        Session session = null;
        Collection sales = null;
        try {
            session = HibernateSession.getSessionFactory().openSession();
            sales = session.createCriteria(Sales.class).list();
            for(Object acc : sales){
                Sales a = (Sales) acc;
                Hibernate.initialize(a.getClient());
            }
        } catch (Exception e) {

        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
        return sales;
    }

}
