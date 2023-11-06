package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PacoteDAO;
import modelos.Pacote;

@WebServlet(urlPatterns = { "/pacote", "/pacote-create", "/pacote-update", "/pacote-delete" })
public class LivroServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	PacoteDAO pdao = new PacoteDAO();
	Pacote pacote = new Pacote();
	
    public PacoteServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getServletPath();

		switch (action) {
		case "/pacote":
			read(request, response);
			break;
		case "/pacote-create":
			create(request, response);
			break;
		case "/pacote-update":
			update(request, response);
			break;
		case "/pacote-delete":
			delete(request, response);
			break;
		default:
			response.sendRedirect("index.html");
			break;
		}

	}

	protected void read(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Pacotes> lista = pdao.read();

		request.setAttribute("listaPacotes", lista);

		RequestDispatcher rd = request.getRequestDispatcher("./views/pacotes/index.jsp");
		rd.forward(request, response);

	}

	protected void create(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		pacote.setNome(request.getParameter("nome"));
		pacote.setPacote(request.getParameter("pacote"));
		pacote.setDestino(request.getParameter("destino"));
		pacote.setPreco(Double.parseDouble(request.getParameter("preco")));

		pdao.create(pacote);
		response.sendRedirect("pacotes");
	}

	protected void update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		pacote.setId(Integer.parseInt(request.getParameter("id")));
		pacote.setNome(request.getParameter("nome"));
		pacote.setPacote(request.getParameter("pacote"));
		pacote.setDestino(request.getParameter("destino"));
		pacote.setPreco(Double.parseDouble(request.getParameter("preco")));

		pdao.update(pacote);
		response.sendRedirect("pacote");
	}

	protected void delete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		pdao.delete(id);
		response.sendRedirect("pacote");
	}

}