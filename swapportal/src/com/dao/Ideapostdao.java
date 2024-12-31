package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.model.Post;
import com.util.Util;

public class Ideapostdao {

	private SessionFactory sessionfactory = Util.getSessionFactory();
	Session session = null;
	Transaction tx = null;

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

	public List<Post> getListOfIdeaPostsByUserId(Integer id) {
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

	public Post getIdeaPostByUserId(Integer id) {
		session = sessionfactory.openSession();
		Transaction tx = null;
		Post post = null;
		try {
			tx = session.beginTransaction();
			Query query = session.createQuery("from Post where id = :id");
			query.setParameter("id", id);
			post = (Post) query.uniqueResult();
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
		return post;
	}

	public Post getIdeaPostByPostId(Integer pid) {
		session = sessionfactory.openSession();
		Transaction tx = null;
		Post post = null;
		try {
			tx = session.beginTransaction();
			Query query = session.createQuery("from Post where pid = :pid");
			query.setParameter("pid", pid);
			post = (Post) query.uniqueResult();
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
		return post;
	}

}
