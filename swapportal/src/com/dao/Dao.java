package com.dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import com.model.Feedback;
import com.model.Ideaperson;
import com.model.Investor;
import com.model.Post;
import com.model.Register;
import com.util.Util;

public class Dao {

	private SessionFactory sessionfactory = Util.getSessionFactory();
	Session session = null;
	Transaction tx = null;

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

	// Get All Post Table Data
	public List<Post> doloadPost() {
		session = sessionfactory.openSession();
		try {
			String hql = "FROM Post"; // HQL equivalent of SELECT * FROM Post
			Query<Post> query = session.createQuery(hql, Post.class);
			return query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}

		finally {
			session.close();
		}
		return null;
	}

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

	// Ideaperson
	// Post
	public Integer doaddPost(Post post) {
		Integer id = 0;
		try {
			session = sessionfactory.openSession();
			tx = session.beginTransaction();
			id = (Integer) session.save(post);
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

	// Insert Closed

	// Update Data of Table

	// Register

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

	// Post
	public String doupdatePost(Post post) {
		try {
			session = sessionfactory.openSession();
			tx = session.beginTransaction();
			session.update(post);
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

	// Ideaperson
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

	// update closed

	// Delete Data from Table

	// Register
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

	// Post
	public String dodeletePost(Post post) {
		try {
			session = sessionfactory.openSession();
			tx = session.beginTransaction();
			session.delete(post);
			tx.commit();
			return "success";
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
			return "false";
		}
	}

	// Investor

	// Ideaperson

	// Delete Closed.

	// Get data of specific User in List

	// Register

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

	// Post
	public List<Post> getpostById(Integer id) {
		session = sessionfactory.openSession();
		try {
			String hql = "FROM Post r WHERE r.id = :id";
			Query<Post> query = session.createQuery(hql, Post.class);
			query.setParameter("id", id);
			return query.list();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return null;
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

	// Ideaperson
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

	// Get data of Table in controller
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

	// Get Userdata by Email
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
			session.close();
		}
		return inv;
	}

	public Ideaperson getPersonById(Integer id) {

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
			session.close();
		}
		return person;
	}

	public boolean authenticateUser(String email) {
		Register reg = getUserdatabyEmail(email);
		if (reg != null && reg.getEmail().equals(email)) {
			return true;
		} else {
			return false;
		}
	}

	// Login Service
	public boolean authenticateLoginUser(String email, String password) {

		Register reg = getUserdatabyEmail(email);
		if (reg != null && reg.getEmail().equals(email) && reg.getPassword().equals(password)) {
			return true;
		} else {
			return false;
		}
	}

	public boolean authenticateInvestor(Integer id) {
		Investor inv = getInvestorById1(id);
		if (inv != null) {
			return true;
		} else {
			return false;
		}

	}

	public boolean authenticateIdeaperson(Integer id) {
		Ideaperson person = getPersonById(id);
		if (person != null) {
			return true;
		} else {
			return false;
		}

	}

}
