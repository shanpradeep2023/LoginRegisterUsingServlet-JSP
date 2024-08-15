package pk1;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import pk1.pk2Dao.LoginDao;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("uname");
		String password = request.getParameter("password");
		
		LoginDao dao = new LoginDao();
		
		try {
			if(dao.cheak(uname, password)) {
				HttpSession session = request.getSession();
				session.setAttribute("uname", uname);
				session.setAttribute("data", dao.getData());
				response.sendRedirect("welcome.jsp");
			}
			else {
				response.sendRedirect("wrongpss.jsp");
			}
		} catch (ClassNotFoundException | SQLException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


}
