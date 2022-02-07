package Programa;

import java.lang.ref.WeakReference;

import DAO.User;
import DAO.UserDAO;

public class app {
	
	public static void main(String[] args) {
		
		//CONECTION TASK
		
		Conexao c = new Conexao();
		c.getConnection();
		WeakReference ref = new WeakReference<Object>(c);
		c = null;
		
		
		while (ref.get() != null) {
			System.gc();
			System.out.println(".");
		}
		
		c = new Conexao();
		c.getConnection();
		
		UserDAO dao = new UserDAO();
		User user = new User("João", "joão@gmail.com", "Brasil");
		dao.addUser(user);
		
				
	}
}
