package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.model.Ideaperson;
import com.util.Util;

public class Ideapersondao {

	private SessionFactory sessionfactory = Util.getSessionFactory();
	Session session = null;
	Transaction tx = null;

	// Get All Idea person table Data
	public List<Ideaperson> doloadIdeaperson() {
		session = sessionfactory.openSession();
		try {
			String hql = "FROM Ideaperson"; // HQL equivalent of SELECT * FROM Ideaperson
			Query<Ideaperson> query = session.createQuery(hql, Ideaperson.class);
			return query.list();

		} catch (Exception e) {
			e.printStackTrace();
		}

		finally {
			session.close();
		}
		return null;
	}

	public String doupdateIdeaperson(Ideaperson person) {
		try {
			session = sessionfactory.openSession();
			tx = session.beginTransaction();
			session.update(person);
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

	public List<Ideaperson> getIdeapersonById(Integer id) {
		session = sessionfactory.openSession();
		try {
			String hql = "FROM Ideaperson r WHERE r.id = :id";
			Query<Ideaperson> query = session.createQuery(hql, Ideaperson.class);
			query.setParameter("id", id);
			return query.list();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return null;
	}

	public List<Ideaperson> getsearch(String city, String expfund) {
		session = sessionfactory.openSession();
		try {
			String hql = "FROM Ideaperson i WHERE i.city = :city AND i.expectfund = :expfund";
			Query<Ideaperson> query = session.createQuery(hql, Ideaperson.class);
			query.setParameter("city", city);
			query.setParameter("expfund", expfund);
			return query.list();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return null;
	}

	public Ideaperson getIdeaPersonById(Integer id) {
		session = sessionfactory.openSession();
		Transaction tx = null;
		Ideaperson person = null;
		try {
			tx = session.beginTransaction();
			Query query = session.createQuery("from Ideaperson where id = :id");
			query.setParameter("id", id);
			person = (Ideaperson) query.uniqueResult();
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
		return person;
	}

	public Ideaperson getPersonById(Session session, Integer id) {

		Transaction tx = null;
		Ideaperson person = null;
		try {
			tx = session.beginTransaction();
			Query query = session.createQuery("from Ideaperson where id = :id");
			query.setParameter("id", id);
			person = (Ideaperson) query.uniqueResult();
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
		return person;
	}

	public Ideaperson getIdeapersonIfAvailable(Integer id) {
		return getIdeaPersonById(id);
	}
}
