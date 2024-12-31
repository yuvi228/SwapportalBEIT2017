package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.model.Register;
import com.util.Util;

public class Authdao {

	private SessionFactory sessionfactory = Util.getSessionFactory();
	Session session = null;
	Transaction tx = null;

	public Register getUserdatabyEmail(String email) {

		session = sessionfactory.openSession();
		Transaction tx = null;
		Register reg = null;
		try {
			tx = session.beginTransaction();
			Query query = session.createQuery("from Register where email = :email");
			query.setParameter("email", email);
			reg = (Register) query.uniqueResult();
			tx.commit();
		} catch (Exception e) {
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		} finally {
			session.close();
		}
		return reg;
	}

	public Register getUserdataById(Integer id) {

		session = sessionfactory.openSession();
		Transaction tx = null;
		Register reg = null;
		try {
			tx = session.beginTransaction();
			Query query = session.createQuery("from Register where id = :id");
			query.setParameter("id", id);
			reg = (Register) query.uniqueResult();
			tx.commit();
		} catch (Exception e) {
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		} finally {
			session.close();
		}
		return reg;
	}

	// Get User data in List by Email
	public List<Register> getUserBy(String email) {
		session = sessionfactory.openSession();
		try {
			String hql = "FROM Register r WHERE r.email = :email";
			Query<Register> query = session.createQuery(hql, Register.class);
			query.setParameter("email", email);
			return query.list();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return null;

	}

	// Get All User(Register Table)data
	public List<Register> doloadRegister() {
		session = sessionfactory.openSession();
		try {
			String hql = "FROM Register"; // HQL equivalent of SELECT * FROM Register
			Query<Register> query = session.createQuery(hql, Register.class);
			return query.list();

		} catch (Exception e) {
			e.printStackTrace();
		}

		finally {
			session.close();
		}
		return null;
	}

	public List<Register> getRegisterData(Integer id) {
		session = sessionfactory.openSession();
		try {
			String hql = "FROM Register r WHERE r.id = :id";
			Query<Register> query = session.createQuery(hql, Register.class);
			query.setParameter("id", id);
			return query.list();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return null;
	}

	// Insert data into Table
	// Registration
	public Integer doAddRegister(Register reg) {
		// Integer id=0;
		try {
			session = sessionfactory.openSession();
			tx = session.beginTransaction();
			int id = (Integer) session.save(reg);
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

	public String doupdateRegister(Register reg) {
		try {
			session = sessionfactory.openSession();
			tx = session.beginTransaction();
			session.update(reg);
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

	public String dodeleteRegister(Register reg) {
		try {
			session = sessionfactory.openSession();
			tx = session.beginTransaction();
			session.delete(reg);
			tx.commit();
			return "success";
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
			return "false";
		}
	}

	public boolean register(Register reg) {
		try (Session session = sessionfactory.openSession()) {
			if (isUserExists(session, reg.getEmail())) {
				return false; // User already exists
			}
			Transaction tx = null;
			try {
				tx = session.beginTransaction();
				session.save(reg);
				tx.commit();
				return true; // User registered successfully
			} catch (Exception e) {
				if (tx != null) {
					tx.rollback();
				}
				System.out.println("Error occurred while registering user" + e);
				throw e;
			}
		}
	}

	public boolean isUserExists(Session session, String email) {
		String hql = "select count(*) from Register where email = :email";
		Long count = (Long) session.createQuery(hql).setParameter("email", email).uniqueResult();
		return count > 0;
	}

	public boolean authenticateUser(String email) {
		Register reg = getUserdatabyEmail(email);
		if (reg != null && reg.getEmail().equals(email)) {
			return true;
		} else {
			return false;
		}
	}

	public boolean authenticateLoginUser(String email, String password) {
		Register reg = getUserdatabyEmail(email);
		if (reg != null && reg.getEmail().equals(email) && reg.getPassword().equals(password)) {
			return true;
		} else {
			return false;
		}
	}

	public Register getRegisterUserIfAvailable(String email, String password) {
		return getUserdatabyEmail(email);
	}

}
