package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.model.Investor;
import com.util.Util;

public class Investordao {

	private SessionFactory sessionfactory = Util.getSessionFactory();
	Session session = null;
	Transaction tx = null;

	// Get All Investor Table data
	public List<Investor> doloadInvestor() {
		session = sessionfactory.openSession();
		try {

			String hql = "FROM Investor"; // HQL equivalent of SELECT * FROM Investor
			Query<Investor> query = session.createQuery(hql, Investor.class);
			return query.list();

		} catch (Exception e) {
			e.printStackTrace();
		}

		finally {
			session.close();
		}
		return null;
	}

	// Investor
	public Integer doaddInvestor(Investor investor) {
		Integer id = 0;
		try {
			session = sessionfactory.openSession();
			tx = session.beginTransaction();
			id = (Integer) session.save(investor);
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

	public String doupdateInvestor(Investor investor) {
		try {
			session = sessionfactory.openSession();
			tx = session.beginTransaction();
			session.update(investor);
			tx.commit();
			return "success";
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
			return "fail";
		} finally {
			session.close();
		}

	}

	// Investor
	public List<Investor> getInvestorById(Integer id) {
		session = sessionfactory.openSession();
		try {
			String hql = "FROM Investor r WHERE r.id = :id";
			Query<Investor> query = session.createQuery(hql, Investor.class);
			query.setParameter("id", id);
			return query.list();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return null;
	}

	public Investor getInvestorById1(Integer id) {

		session = sessionfactory.openSession();
		Transaction tx = null;
		Investor inv = null;
		try {
			tx = session.beginTransaction();
			Query query = session.createQuery("from Investor where id = :id");
			query.setParameter("id", id);
			inv = (Investor) query.uniqueResult();
			tx.commit();
		} catch (Exception e) {
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		} finally {
			if (session != null && session.isOpen()) {
				session.close();
			}
		}
		return inv;
	}

	public Investor getInvestorById1(Session session, Integer id) {
		session = sessionfactory.openSession();
		Transaction tx = null;
		Investor inv = null;
		try {
			tx = session.beginTransaction();
			Query query = session.createQuery("from Investor where id = :id");
			query.setParameter("id", id);
			inv = (Investor) query.uniqueResult();
			tx.commit();
		} catch (Exception e) {
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		} finally {
			if (session != null && session.isOpen()) {
				session.close();
			}
		}
		return inv;
	}

	public Investor getInvestorProfileIfAvailable(Integer id) {
		return getInvestorById1(id); // Return the object directly
	}

}
