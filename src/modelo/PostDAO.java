package modelo;

import java.util.List;

import org.hibernate.Session;

public class PostDAO {

	private Session session;
	
	public PostDAO() {
		session  = HibernateUtil.getSession();
	}
	
	public void salvar(Post post){
		session.beginTransaction();
		session.save(post);
		session.getTransaction().commit();
	}
	
	public List<Post> listar(){
return (List<Post>) session.createCriteria(Post.class).list();
	}
	
}








