package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.model.Feedback;
import com.util.Util;

public class Feedbackdao {

	private SessionFactory sessionfactory = Util.getSessionFactory();
	Session session = null;
	Transaction tx = null;

	// Get All Feedback Table Data
	public List<Feedback> doloadFeedback() {
		session = sessionfactory.openSession();
		try {
			String hql = "FROM Feedback"; // HQL equivalent of SELECT * FROM Feedback
			Query<Feedback> query = session.createQuery(hql, Feedback.class);
			return query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}

		finally {
			session.close();
		}
		return null;
	}

	// Feedback
	public Integer doaddFeedback(Feedback feedback) {
		Integer id = 0;
		try {
			session = sessionfactory.openSession();
			tx = session.beginTransaction();
			id = (Integer) session.save(feedback);
			tx.commit();
			return id;
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
			return 0;
		} finally {
			session.close();
		}
	}

}
