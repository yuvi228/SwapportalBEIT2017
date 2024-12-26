package com.util;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class Util {

    private static final SessionFactory sessionFactory = buildSessionFactory();

    // Build the SessionFactory from hibernate.cfg.xml
    private static SessionFactory buildSessionFactory() {
        try {
            // Create the SessionFactory from hibernate.cfg.xml
            return new Configuration().configure().buildSessionFactory();
        } catch (Throwable ex) {
            // Log the exception for better understanding of failure
            System.err.println("Initial SessionFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }

    // Method to return the SessionFactory
    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    // Add a shutdown method to close the session factory and release resources
    public static void shutdown() {
        if (sessionFactory != null) {
            sessionFactory.close(); // Gracefully close the factory
        }
    }
}
