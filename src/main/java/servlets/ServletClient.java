package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ClientDao;
import domain.Client;


/**
 * Servlet implementation class ServletClient
 */
@WebServlet("/ServletClient")
public class ServletClient extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletClient() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ClientDao dao = new ClientDao();
		long clientId = Long.parseLong(request.getParameter("id"));
		Client client = dao.findById(Client.class, clientId).get();
		
		dao.delete(client);
		response.sendRedirect("ListClients.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Client newClient = new Client();
		ClientDao dao = new ClientDao();
		
		if (request.getParameter("clientId") == null) 
		{
			newClient.setName(request.getParameter("name"));
			newClient.setEmail(request.getParameter("email"));
			newClient.setPhone(request.getParameter("phone"));
			
			dao.save(newClient);
		}
		else {
			long clientId = Long.parseLong(request.getParameter("clientId"));
			Client client = dao.findById(Client.class, clientId).get();
			client.setName(request.getParameter("name"));
			client.setEmail(request.getParameter("email"));
			client.setPhone(request.getParameter("phone"));
			dao.update(client);
			
		}
		response.sendRedirect("ListClients.jsp");
	}

}
